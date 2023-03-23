VBA Code used to import, modify, and format the data into CSV files
Sub ImportAndFormatXLS()
    'Declare variables
    Dim wb As Workbook
    Dim ws As Worksheet
    Dim rng As Range
    Dim lastCol As Long
    Dim i As Long
    
    'Open the file dialog box to select the XLS file
    Set wb = Workbooks.Open(Filename:=Application.GetOpenFilename("Excel Files (*.xls),*.xls"))
    
    'Set the worksheet variable to the first sheet in the workbook
    Set ws = wb.Worksheets(1)
    
    'Select all cells in the worksheet
    ws.Cells.Select
    
    'Delete the first three rows
    Selection.Rows("1:3").Delete Shift:=xlUp
    
    'Insert a new column A
    ws.Columns("A:A").Insert Shift:=xlToRight
    
    'Determine the last column in the worksheet
    lastCol = ws.Cells(1, ws.Columns.Count).End(xlToLeft).Column
    
    'Loop through every other column starting with column C
    For i = 3 To lastCol Step 2
        'Insert a new column to the right of the current column
        ws.Columns(i + 1).Insert Shift:=xlToRight
    Next i
    
    'Close the workbook without saving changes
    wb.Close SaveChanges:=False
End Sub