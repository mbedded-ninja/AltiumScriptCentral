Sub DeleteAllSchematicParameters()
    Dim workspace           ' As IWorkspace
    Dim pcbProject          ' As IProject
    Dim document            ' As IDocument
    Dim flatHierarchy       ' As IDocument
    Dim sheet               ' As ISch_Document
    Dim docNum              ' As Integer
    Dim compIterator        ' As ISch_Iterator
    Dim component           ' As IComponent

    StdOut("Deleting all schematic parameters...")

    ' Obtain the schematic server interface.
    If SchServer Is Nothing Then
        StdErr("ERROR: Schematic server not online." + VbLf + VbCr)
        Exit Sub
    End If

    ' Get pcb project interface
    Set workspace = GetWorkspace
    Set pcbProject = workspace.DM_FocusedProject

    If pcbProject Is Nothing Then
        StdErr("ERROR: Current project is not a PCB project." + VbLf + VbCr)
        Exit Sub
    End If

    ' COMPILE PROJECT

    ResetParameters
    Call AddStringParameter("Action", "Compile")
    Call AddStringParameter("ObjectKind", "Project")
    Call RunProcess("WorkspaceManager:Compile")

    Set flatHierarchy = PCBProject.DM_DocumentFlattened

   ' If we couldn't get the flattened sheet, then most likely the project has
   ' not been compiled recently
   If flatHierarchy Is Nothing Then
      StdErr("ERROR: Compile the project before running this script." + VbCr + VbLf)
      Exit Sub
   End If

    ' Loop through all project documents
    For docNum = 0 To pcbProject.DM_LogicalDocumentCount - 1
        Set document = pcbProject.DM_LogicalDocuments(docNum)

        ' If this is SCH document
        If document.DM_DocumentKind = "SCH" Then
            Set sheet = SCHServer.GetSchDocumentByPath(document.DM_FullPath)
            'ShowMessage(document.DM_FullPath);
            If sheet Is Nothing Then
                StdErr("ERROR: Sheet '" + document.DM_FullPath + "' could not be retrieved." + VbCr + VbLf)
                Exit Sub
            End If

            ' Start of undo block
            Call SchServer.ProcessControl.PreProcess(sheet, "")

            ' Add all project parameters to this schematic


			' DELETE SCHEMATIC PARAMETERS

			' Set up iterator to look for parameter objects only
			Set paramIterator = sheet.SchIterator_Create
			If paramIterator Is Nothing Then
				StdErr("ERROR: Iterator could not be created.")
				Exit Sub
			End If

			paramIterator.AddFilter_ObjectSet(MkSet(eParameter))
			Set schParameters = paramIterator.FirstSchObject

		   ' Call SchServer.RobotManager.SendMessage(document.I_ObjectAddress, c_BroadCast, SCHM_BeginModify, c_NoEventData)

			' Iterate through schematic parameters and delete them
			Do While Not (schParameters Is Nothing)			   
			   sheet.RemoveSchObject(schParameters)
			   'StdOut("Calling robot.")
			   'Call SchServer.RobotManager.SendMessage(sheet.I_ObjectAddress, c_BroadCast, SCHM_PrimitiveRegistration, schParameters.I_ObjectAddress)
			   'Call SchServer.RobotManager.SendMessage(null, null, 1, schParameters.I_ObjectAddress)
			   'StdOut("Finished robot.")

				Set schParameters = paramIterator.NextSchObject
			Loop

			sheet.SchIterator_Destroy(paramIterator)

			' Redraw schematic sheet
			sheet.GraphicallyInvalidate

            ' End of undo block
            Call SchServer.ProcessControl.PostProcess(sheet, "")

        End If ' If document.DM_DocumentKind = "SCH" Then
    Next ' For docNum = 0 To pcbProject.DM_LogicalDocumentCount - 1

    StdOut("All schematic parameters have been deleted." + VbCr + VbLf)

End Sub