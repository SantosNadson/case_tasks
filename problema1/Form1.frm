VERSION 5.00
Begin VB.Form SumScreen 
   BackColor       =   &H00FFC0C0&
   Caption         =   "Sum Program"
   ClientHeight    =   3810
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5895
   LinkTopic       =   "Form1"
   ScaleHeight     =   3810
   ScaleWidth      =   5895
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnSum 
      Caption         =   "SOMAR"
      Height          =   735
      Left            =   1440
      TabIndex        =   4
      Top             =   2640
      Width           =   2295
   End
   Begin VB.TextBox txtValue2 
      Height          =   495
      Left            =   2760
      TabIndex        =   1
      Top             =   1920
      Width           =   2175
   End
   Begin VB.TextBox txtValue1 
      Height          =   495
      Left            =   2760
      TabIndex        =   0
      Top             =   840
      Width           =   2175
   End
   Begin VB.Label lblValue2 
      Alignment       =   2  'Center
      Caption         =   "DIGITE O VALOR 1"
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   1920
      Width           =   2535
   End
   Begin VB.Label lblValue1 
      Alignment       =   2  'Center
      Caption         =   "DIGITE O VALOR 2"
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Width           =   2535
   End
End
Attribute VB_Name = "SumScreen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Text1_Change()

End Sub

Private Sub Label1_Click()

End Sub

Private Sub btnSum_Click()
    Dim value1 As Double
    Dim value2 As Double
    Dim result As Double

    If Trim(txtValue1.Text) = "" Then
        MsgBox "Digite primeiro valor: ", vbExclamation, "Aviso"
        txtValue1.SetFocus
        Exit Sub
    End If
 
    If Trim(txtValue2.Text) = "" Then
        MsgBox "Digite o segundo valor: ", vbExclamation, "Aviso"
        txtValue2.SetFocus
        Exit Sub
    End If

    If Not IsNumeric(txtValue1.Text) Then
        MsgBox "O 1º valor digitado não é número", vbExclamation, "Aviso"
        txtValue1.SetFocus
        Exit Sub
    End If

    If Not IsNumeric(txtValue2.Text) Then
        MsgBox "O 2º valor digitado não é número", vbExclamation, "Aviso"
        txtValue2.SetFocus
        Exit Sub
    End If

    value1 = CDbl(txtValue1.Text)
    value2 = CDbl(txtValue2.Text)

    result = value1 + value2

    MsgBox "Resultado da soma: " & result, vbInformation, "Resultado"
End Sub

