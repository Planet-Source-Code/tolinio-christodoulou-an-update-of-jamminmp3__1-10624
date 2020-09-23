VERSION 5.00
Begin VB.Form frmAbout 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   3300
   ClientLeft      =   7170
   ClientTop       =   4095
   ClientWidth     =   4455
   LinkTopic       =   "Form2"
   Picture         =   "frmAbout.frx":0000
   ScaleHeight     =   3300
   ScaleWidth      =   4455
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   25
      Left            =   3960
      Top             =   2760
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00000000&
      Height          =   2055
      Left            =   120
      ScaleHeight     =   1995
      ScaleWidth      =   4155
      TabIndex        =   1
      Top             =   240
      Width           =   4215
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         Caption         =   $"frmAbout.frx":2FB62
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000080FF&
         Height          =   2415
         Left            =   360
         TabIndex        =   2
         Top             =   1800
         Width           =   3255
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   2400
      Width           =   855
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
FormDrag Me
End Sub


Private Sub Label2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
FormDrag Me
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
FormDrag Me
End Sub

Private Sub Timer1_Timer()

'the code below makes the label2 scroll...
If Label2.Top < Picture1.Height - Picture1.Height - Label2.Height Then
    Label2.Top = Picture1.Height - 1
    
    Label2.Top = Label2.Top - 5
    
Else
    Label2.Top = Label2.Top - 10
    
End If
End Sub
