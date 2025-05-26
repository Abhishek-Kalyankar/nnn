unit umil110;
interface
Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Menus,ComCtrls, ToolWin, wavefunctions, GlobalVar, urenamefile,
  Gauges, CharacterCounting2,ImgList,UFontEdit,UWatcher,UTable, ComboWideList,  Mask, SyncObjs;
type
  TMil110Thread = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure status;
  end;
  TForm78 = class(TForm)
    Color: TColorDialog;
    FontDialog1: TFontDialog;
    Gauge1: TGauge;
    ToolBar1: TToolBar;
    ToolButton10: TToolButton;
    ToolButton9: TToolButton;
    ToolButton5: TToolButton;
    ToolButton14: TToolButton;
    ToolButton12: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton3: TToolButton;
    ToolButton8: TToolButton;
    ToolButton6: TToolButton;
    ToolButton13: TToolButton;
    ToolButton4: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton11: TToolButton;
    ToolButton17: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton7: TToolButton;
    ToolButton18: TToolButton;
    ToolButton22: TToolButton;
    ImageList3: TImageList;
    Panel2: TPanel;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    Panel5: TPanel;
    Gauge2: TGauge;
    Gauge4: TGauge;
    Label8: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Gauge3: TGauge;
    Label1: TLabel;
    Status2: TPanel;
    Status6: TPanel;
    status8: TPanel;
    Status1: TPanel;
    label3: TPanel;
    SaveDialog1: TSaveDialog;
    RichEdit1: TRichEdit;
    PopupMenu1: TPopupMenu;
    Undo1: TMenuItem;
    N2: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Delete1: TMenuItem;
    N3: TMenuItem;
    Selectall1: TMenuItem;
    N1: TMenuItem;
    Scrolltext1: TMenuItem;
    ToolButton25: TToolButton;
    TerminalPanel: TPanel;
    Termdatabit: TComboWideList;
    Termparity: TComboWideList;
    Termsyn: TComboWideList;
    Termstop: TComboWideList;
    TermInvert: TComboWideList;
    TermMSB: TComboWideList;
    TermShift: TComboWideList;
    Applybutton: TButton;
    asciicheck: TCheckBox;
    controlcheck: TCheckBox;
    Bevel7: TBevel;
    Bevel5: TBevel;
    Bevel3: TBevel;
    CenterDisplay: TImage;
    CenterLabel: TLabel;
    BaudrateLabel: TLabel;
    BaudrateDisplay: TImage;
    ShiftLabel: TLabel;
    ShowBaudratesList: TImage;
    ShowCenterList: TImage;
    termbevel: TBevel;
    termlabel1: TLabel;
    Termlabel2: TLabel;
    Termlabel3: TLabel;
    Termlabel4: TLabel;
    Bevel1: TBevel;
    Image1: TImage;
    ATCButton: TPanel;
    CenterListBox: TListBox;
    Panel6: TPanel;
    OutputToDiskButton: TPanel;
    ModeSelect: TComboBox;
    BaudratesListBox: TListBox;
    termbutton: TPanel;
    Button1: TButton;
    tabnew: TPanel; //bert
    SyncSeqSelect: TCheckBox;
    Alphabet: TComboWideList;
    Streammode: TComboWideList; //bert
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CenterDisplayMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure BaudrateDisplayMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure BaudratesListBoxClick(Sender: TObject);
    procedure ShowBaudratesListMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure ShowCenterListMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure CenterListBoxClick(Sender: TObject);
    procedure ATCButtonMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure SelectFont1Click(Sender: TObject);
    procedure Panel6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BaudrateLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BaudrateLabelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CenterLabelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CenterLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ShiftLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ShiftLabelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure OutputToDiskButtonMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Savetextfile1Click(Sender: TObject);
    procedure SavecurrentIP1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Help1Click(Sender: TObject);
    procedure ModeSelectClick(Sender: TObject);
    procedure Alphabetmapping1Click(Sender: TObject);
    procedure Textscanning1Click(Sender: TObject);
    procedure ToolButton9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure TabSheet1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RichEdit1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Scrolltext1Click(Sender: TObject);
    procedure Undo1Click(Sender: TObject);
    procedure Selectall1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton25Click(Sender: TObject);
    procedure termbuttonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure termbuttonMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ApplybuttonMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TermsynChange(Sender: TObject);
    procedure asciicheckMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure controlcheckMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure SyncSeqSelectClick(Sender: TObject);
    procedure AlphabetClick(Sender: TObject);
    procedure StreammodeChange(Sender: TObject);
  private
    { Private declarations }
    procedure C3RemoteControl(var Message: TMessage); message CMD_C3;
    procedure SetButtonOnColor(var Sender : Tpanel);
    procedure SetButtonOffColor(var Sender : Tpanel);
  public
    { Public declarations }
    Talen :TLanguages;
    TheAlphabetMapper : TFontTable;
    TheTextScanner     : TWatcherForm;
    TheCharacterCounter : TCharacterCounter;
  end;
var
  Form78: TForm78;
  DataString : WideString;
  counter:smallint;
  SynchroonOffset : Integer;
  StartTime : TDateTime;//bert
  CurrentTime : TDateTime; //bert
  cs : TCriticalSection;
  ScrollInText : Boolean;
  ConstFifo  : Array[0..4047] of TPoint;  //Bij 2400 bd is dit ~1 sec
  ConstFifoIndex : Integer;


  tempragc:double;
  sample:double;
  gain:double;
  TransmissionIsInverted:boolean;
  sync_preamble_array:array[0..480] of smallint;
  sync_template:array[0..7,0..31] of boolean;

procedure StartMIL110(AsDecoder : Boolean);
implementation
{$R *.DFM}
uses
    FFTThread,ConfigFile, mainform;
{$I xxcodevar.pas}
{$I xxmath}
{$I xxquad}
{$I xxshifts}
{$I xxalpha.pas}
{$I xxspecial.pas}
{$I xxkeyb.pas}
{$I xxuasyn.pas}
procedure out_to_screen(character:word);
begin
  if TextScanning
  then
  begin
    PostMessage(Form78.TheTextScanner.Handle,CM_Char,character,0);
  end;
  if CharacterCounting
  then
  begin
    PostMessage(Form78.TheCharacterCounter.Handle,CM_Char,character,0);
  end;
  if BufferWaitEventArray[WaitEventArrayIndex].ModeDatanetOn
  then
  begin
    DecoderWrite(AnsiChar(lo(Character)),True,False);
  if FlushOutput then
   begin
   DecoderWrite(char($0D),true,true);
   FlushOutput:=false;
   end;
  end;
    character:=MapToUnicode(AnsiChar(lo(Character)));
    if (lo(Character)=13) and InsertTimeStamp1
    then
    begin
    DataString:=DataString+WChar(Character);
    DataString:=DataString+DateToStr(Now)+ ' '+TimetoStr(Now)+'  ';
    end
    else
    begin
      DataString:=DataString+WChar(Character);
    end;  ////time
end;
procedure out_to_screen_mask(character:word);
begin
end;
{$I xxsynn.pas}
{$I xxival.pas}
{$I xxfalse.pas}
{$I RemoteControl.pas}

{xxx$R+}
var
  Mil110Thread : TMil110Thread;
  ThreadSyncCount : Integer;
  channel_show:smallint;
  SelStore : Integer;
  SelStore1 : Integer;
  SelLen    : Integer;
  Cursor : TCursor;
  min_distance:longint;
  point1:smallint;
  BitAccu : Byte;
  BitAccuBitCount : Integer;
  Show_Binary:boolean=false;

  Show_Hex:boolean=false;
  Show_Hex_Deint:boolean=false;
  EOM:boolean;
  EOMinhibit:boolean=false;
  offset_freq:longint;
  deint:boolean=false;
  deconv:boolean=false;
  int:boolean=false;
  sym:boolean=false;
  Interleave_string:string;
  mirrored:boolean=false;
  bitshifted:boolean=false;
  bitshift:Smallint=0;
  preamble_found:boolean;
  segment_counter:smallint;
  //xxxxxxxxxxxx
  milcheck:boolean=false;
  Erect:boolean;
  bits_5,bits_7,bits_8:boolean;


procedure SetTerminal ;
begin
  asynchronous_data:=false;
  terminal_ascii:=false;
  terminal_baudot:=false;
  terminal_parity:=false;
  show_hex:=false;
  show_hex_deint:=false;
  Show_Binary:=false;

  bitshifted:=false;
  bitshift:=0;
  mirrored:=false;  //MSB - LSB
  TransmissionIsInverted:=false;  // 0 - 1
  Erect:=not TransmissionIsInverted;
  form78.Termdatabit.enabled:=true;
  form78.TermStop.enabled:=true;
  form78.TermSyn.enabled:=true;
  form78.TermShift.visible:=false;



  if form78.TermSyn.Itemindex =0 then
       begin
       asynchronous_data:=true;
       form78.termlabel3.Caption:='As' ;
       form78.Termshift.Visible:=false;
       form78.TermParity.enabled:=true;
       form78.TermStop.enabled:=true;
       bitshifted:=false;
       bitshift:=0;
        end;
  if form78.TermSyn.Itemindex =1 then
       begin
       form78.Termshift.Visible:=true;
       asynchronous_data:=false;
       form78.termlabel3.Caption:='Sy' ;
       form78.TermParity.enabled:=false;
       form78.TermStop.enabled:=false;
       terminal_ascii:=true;
       end;

  if form78.TermDatabit.Itemindex =0 then
       begin
       terminal_data_bits_number:=5;
       terminal_baudot:=true;
       form78.Termdatabit.Itemindex:=0;
       form78.termlabel1.Caption:=Inttostr(terminal_data_bits_number);
       end;
  if form78.Termdatabit.Itemindex =1 then
       begin
       terminal_ascii:=true;
       terminal_data_bits_number:=7;
       form78.termlabel1.Caption:=Inttostr(terminal_data_bits_number);
       end;

  if form78.Termdatabit.Itemindex =2 then
       begin
       terminal_ascii:=true;
       terminal_data_bits_number:=8;
       form78.termlabel1.Caption:=Inttostr(terminal_data_bits_number);
       end;

  if form78.Termdatabit.Itemindex =3 then
       begin
       form78.termlabel1.Caption:='Hex';
       form78.TermParity.Itemindex:=4;
       terminal_ascii:=true;
       Show_Hex_Deint:=true;
       form78.TermSyn.enabled:=false;
       form78.TermStop.enabled:=false;
       form78.TermSyn.Itemindex:=1;
       form78.TermParity.enabled:=false;
       form78.TermShift.Visible:=false;
        form78.TermShift.ItemIndex:=0;
       end;

  if form78.Termdatabit.Itemindex =4 then
       begin
       form78.termlabel1.Caption:='BIN';
       Show_Binary:=true;
       terminal_ascii:=true;
       form78.TermSyn.Itemindex:=1;
       form78.TermSyn.enabled:=false;
       form78.TermStop.enabled:=false;
       form78.TermParity.enabled:=false;
       form78.TermShift.Visible:=false;
       form78.TermShift.ItemIndex:=0;
       end;

  if form78.TermSyn.Itemindex =0 then    ///async mode
  begin
        bitshifted:=false;
        bitshift:=0;
    if form78.TermParity.Itemindex =0 then
       begin
       terminal_parity:=false;
       form78.termlabel1.Caption:=form78.termlabel1.Caption+' N';
       end;
    if form78.TermParity.Itemindex =1 then
        begin
        terminal_parity:=true;
        form78.termlabel1.Caption:=form78.termlabel1.Caption+' E';
        end;
    if form78.TermParity.Itemindex =2 then
        begin
        terminal_parity:=true;
        form78.termlabel1.Caption:=form78.termlabel1.Caption+' O';
        end;

    if form78.TermStop.Itemindex =0 then
       begin
       terminal_stop_bits_number:=0;
       form78.termlabel1.Caption:=form78.termlabel1.Caption+' 0';
       end;
    if form78.TermStop.Itemindex =1 then
        begin
        terminal_stop_bits_number:=1;
        form78.termlabel1.Caption:=form78.termlabel1.Caption+' 1';
        end;
    if form78.TermStop.Itemindex =2 then
        begin
        form78.termlabel1.Caption:=form78.termlabel1.Caption+' 2';
        terminal_stop_bits_number:=2;
        end;
  end else  ////async mode
  begin         ///sync mode
    form78.TermShift.Visible:=true;
    form78.TermStop.Enabled:=false;
    bitshift:=form78.TermShift.ItemIndex;
    if bitshift<>0 then
      begin
      bitshifted:=true;
      form78.termlabel1.Caption:=form78.termlabel1.Caption+' s+'+Inttostr(bitshift);
      end;
  end;

    if form78.TermMSB.Itemindex =0 then
        begin
        mirrored:=false;
        form78.termlabel2.Caption:='MSB' ;
        end;
    if form78.TermMSB.Itemindex =1 then
        begin
        mirrored:=true;
        form78.termlabel2.Caption:='LSB' ;
        end;

    if form78.TermInvert.Itemindex =0 then
        begin
        TransmissionIsInverted:=false;
        form78.termlabel4.Caption:='N' ;
        end;
    if form78.TermInvert.Itemindex =1 then
         begin
         TransmissionIsInverted:=true;
         form78.termlabel4.Caption:='I' ;
         end;

R39Subchoice:=form78.Termsyn.Itemindex;
num_bits:=form78.Termdatabit.Itemindex;
pactor_vs:=form78.Termparity.Itemindex;
Tone_R391:=form78.Termstop.Itemindex;
Tone_R392:=form78.Termshift.Itemindex;
Char_length:=form78.TermMSB.Itemindex;
if form78.TermInvert.Itemindex =1 then Invertd:=true else Invertd:=false;



  if terminal_baudot then
  begin
  form78.ToolButton4.Enabled:=True;
  form78.ToolButton20.Enabled:=True;
  form78.ToolButton21.Enabled:=True;
  end else
  begin
  form78.ToolButton4.Enabled:=false;
  form78.ToolButton20.Enabled:=False;
  form78.ToolButton21.Enabled:=False;
  end;





end;


procedure InitInterleave(AIndex : Integer);
begin
  case AIndex of
    0:  begin no_interleaver:=false; end;
    1:  begin no_interleaver:=true; end;
  end;
  reset_sync;
end;

procedure Tform78.SetButtonOnColor(var Sender : Tpanel);
begin
  Sender.Color:=ButtonOnColor;
  Sender.font.color:=clBlack;
  Sender.BevelOuter:=bvLowered;
end;
procedure Tform78.SetButtonOffColor(var Sender : Tpanel);
begin
  Sender.Color:=ButtonOffColor;
  Sender.font.color:=clGray;
  Sender.BevelOuter:=bvRaised;
end;


///////verplaatste procedures

procedure make_sync_template;
var cnt,count:smallint;
const sync_template_word:array[0..7] of longint= ($00000000,$55555555,$33333333,$66666666,$0F0F0F0F,$5A5A5A5A,$3C3C3C3C,$69696969);
begin
   for cnt:=0 to 7 do for count:=0 to 31 do
   begin
      sync_template[cnt,count]:=
      ((sync_template_word[cnt] shr (31-count)) and 1=1);
   end;
end;


procedure make_sync_preamble_array;
const sync_pattern_Normal:array[1..15] of smallint=(0,1,3,0,1,3,1,2,0,0,0,0,0,0,0);
      sync_pattern_Sudan :array[1..15] of smallint=(0,1,3,1,2,1,3,1,0,0,0,0,0,0,0);
      sync_preamble_sequence_Normal : array[0..31] of smallint=(7,4,3,0,5,1,5,0,2,2,1,1,5,7,4,3,5,0,2,6,2,1,6,2,0,0,5,0,5,2,6,6);
      sync_preamble_sequence_Sudan  : array[0..31] of smallint=(0,0,0,0,0,2,4,6,0,4,0,4,0,6,4,2,0,0,0,0,1,3,5,7,2,6,2,6,3,1,7,5);

var cnt,count:smallint;
    temp:smallint;
    sync_preamble_sequence : array[0..31] of smallint;
    sync_pattern           : array[1..15] of smallint;

begin
   if Form78.SyncSeqSelect.Checked
   then
   begin
     move(sync_preamble_sequence_Sudan[0], sync_preamble_sequence[0], 32 * SizeOf(SmallInt));
     move(sync_pattern_Sudan[1], sync_pattern[1], 15 * SizeOf(SmallInt));
     Picc_6:=true;
   end
   else
   begin
     move(sync_preamble_sequence_Normal[0], sync_preamble_sequence[0], 32 * SizeOf(SmallInt));
     move(sync_pattern_Normal[1], sync_pattern[1], 15 * SizeOf(SmallInt));
     picc_6:=false;
   end;

   for cnt:=1 to 15 do for count:=0 to 31 do
   begin
      if sync_template[sync_pattern[cnt],count] then
      temp:=(sync_preamble_sequence[count]+4) and 7
      else temp:=(sync_preamble_sequence[count]);
      sync_preamble_array[(31-count)+(15-cnt)*32]:=temp;
   end;
end;
procedure UpdateCenterFrequencyDisplay;
var
  SourceRect        : TRect;
  DestinationRect   : TRect;
  i                 : Integer;
  LeadingZero       : Boolean;
  DecimalDot        : TRect;
  TempValue         : Integer;
  ValueAsDigits     : Array[0..5] of Integer;
begin
  TempValue:=round(Center_Frequency*10);
  for i:=0 to 5 do
  begin
		ValueAsDigits[5-i]:=TempValue-((TempValue div 10) * 10);
    TempValue:=TempValue div 10;
  end;
  LeadingZero:=True;
  for i:=0 to 5 do
  begin
    with SourceRect do
    begin
      Top := 0;
      Left :=ValueAsDigits[i] * 13;
      if (Left <> 0) or (i=5)
      then
      begin
        LeadingZero:=False;
      end;
      if LeadingZero
      then
      begin
				Left:=Left + 10 * 13;
      end;
      Bottom:= 16;
      Right := Left + 13;
    end;
    With DestinationRect do
    begin
      Top:=0;
      Left:= i * 13;
      Bottom:= 16;
      Right := Left + 13;
    end;
    form78.CenterDisplay.Canvas.CopyRect(DestinationRect,CijfersBitmap.Canvas,SourceRect);
  end;
  with DecimalDot do
	begin
    top:=13;
    left:=63;
    bottom:=16;
    right:=65;
  end;
  form78.CenterDisplay.Canvas.Brush.color:=clGray;
  form78.CenterDisplay.Canvas.FillRect (DecimalDot);
  if PreviousCenterFrequency <> Center_Frequency
  then
  begin
    BufferWaitEventArray[WaitEventArrayIndex].ModeCenterFrequency:=Center_Frequency;
    PreviousCenterFrequency:=Center_Frequency;
///////////////// NIEUW BEGIN
  SpectrumDrawSetting[WaitEventArrayIndex].SpectrumCenter:=round(Center_Frequency);
  SpectrumDrawSetting[WaitEventArrayIndex].SpectrumCenterChanged:=True;
  end;
///////////////// NIEUW END
end;
procedure UpdateShiftDisplay;
begin
///////////////// NIEUW BEGIN
  SpectrumDrawSetting[WaitEventArrayIndex].SpectrumMaxShift:=Shift_Freq;
///////////////// NIEUW END
end;
procedure TForm78.CenterDisplayMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
var
  IncSign : Double;
begin
  if Y < 8
  then
  begin
    IncSign:=1;
  end
  else
  begin
    IncSign:=-1;
  end;
  Case X div 13 of           ///////////all *10
    0  : begin
           IncSign:=Center_Frequency + IncSign * 10000;
         end;
    1  : begin
           IncSign:=Center_Frequency + IncSign * 1000;
         end;
    2  : begin
           IncSign:=Center_Frequency + IncSign * 100;
         end;
    3  : begin
           IncSign:=Center_Frequency + IncSign*10;
         end;
    4  : begin
           IncSign:=Center_Frequency + IncSign * 1;
         end;
    5  : begin
           IncSign:=Center_Frequency + IncSign * 0.1;
         end;
  end;
  if (IncSign > 0) and (IncSign < (ad_sample_freq/2-500)) //////
  then
  begin
    Center_Frequency:=IncSign*1; ///10
    UpdateCenterFrequencyDisplay;
  end;
  Clip_Center_Frequency;
  Change_Shift;
  CenterListbox.Visible:=False;
  BaudratesListbox.Visible:=False;
end;
procedure TForm78.ShowCenterListMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  CenterListBox.Visible:=Not CenterListBox.Visible;
  BaudratesListbox.Visible:=False;
end;
procedure TForm78.StreammodeChange(Sender: TObject);
begin
if Code3MainForm.BitstreamSocket.Socket.ActiveConnections > 0 then
  begin
if Streammode.ItemIndex=0 then
    begin
    deint:=true;
    int:=false;
    deconv:=false;
    sym:=false;
    end;
if Streammode.ItemIndex=1 then
    begin
    deconv:=true;
    deint:=false;
    int:=false;
    sym:=false;
    end;
if Streammode.ItemIndex=2 then
    begin
    int:=true;
    deint:=false;
    deconv:=false;
    sym:=false;
    end;
if Streammode.ItemIndex=3 then
    begin
    sym:=true;
    int:=false;
    deint:=false;
    deconv:=false;
    end;
if Streammode.ItemIndex=4 then
    begin
    deint:=false;
    int:=false;
    deconv:=false;
    sym:=false;
    end;
   end;

end;

procedure TForm78.SyncSeqSelectClick(Sender: TObject);
begin
  make_sync_preamble_array;
end;


procedure TForm78.CenterListBoxClick(Sender: TObject);
var
  ConStr: String;
  DecSepPos : Integer;
begin
  CenterListBox.Visible:= False;
  ConStr:=CenterListBox.Items[CenterListBox.ItemIndex];
  DecSepPos:=Pos(',',ConStr);
  if DecSepPos <> 0
  then
  begin
    ConStr[DecSepPos]:=FormatSettings.DecimalSeparator;
  end;
  Center_Frequency:=StrtoFloat(Constr);
  UpdateCenterFrequencyDisplay;
  Clip_Center_Frequency;
  Change_Shift;
end;
procedure UpdateBaudrateDisplay;
var
  SourceRect        : TRect;
  DestinationRect   : TRect;
  i                 : Integer;
  LeadingZero       : Boolean;
  DecimalDot        : TRect;
  TempValue         : Integer;
  ValueAsDigits     : Array[0..5] of Integer;
begin
  TempValue:=round(Baud_rate*100);
  for i:=0 to 5 do
  begin
		ValueAsDigits[5-i]:=TempValue-((TempValue div 10) * 10);
    TempValue:=TempValue div 10;
  end;
  LeadingZero:=True;
  for i:=0 to 5 do
  begin
    with SourceRect do
    begin
      Top := 0;
      Left :=ValueAsDigits[i] * 13;
      if (Left <> 0) or (i=5)
      then
      begin
        LeadingZero:=False;
      end;
      if LeadingZero
      then
      begin
				Left:=Left + 10 * 13;
      end;
      Bottom:= 16;
      Right := Left + 13;
    end;
    With DestinationRect do
    begin
      Top:=0;
      Left:= i * 13;
      Bottom:= 16;
      Right := Left + 13;
    end;
    Form78.BaudrateDisplay.Canvas.CopyRect(DestinationRect,CijfersBitmap.Canvas,SourceRect);
  end;
  with DecimalDot do
	begin
    top:=13;
    left:=50;
    bottom:=16;
    right:=52;
  end;
  Form78.BaudrateDisplay.Canvas.Brush.color:=clGray;
  Form78.BaudrateDisplay.Canvas.FillRect (DecimalDot);
  if PreviousBaudrate <> Baud_rate
  then
  begin
    BufferWaitEventArray[WaitEventArrayIndex].ModeBaudrate:=Baud_rate;
    PreviousBaudrate:=Baud_rate;
  end;
Mode_details:=(' Terminal_Mode_' + form78.Termlabel3.caption+' '+form78.Termlabel1.caption+' '+form78.Termlabel2.caption+ ' Intleav_'+ form78.ModeSelect.Items[ form78.ModeSelect.ItemIndex]);
end;
procedure TForm78.BaudrateDisplayMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
var
  IncSign : Double;
begin
  if Y < 8
  then
  begin
    IncSign:=1;
  end
  else
  begin
    IncSign:=-1;
  end;
  Case X div 13 of
{    0  : begin
           IncSign:=Baud_rate + IncSign * 1000;
         end;
    1  : begin
           IncSign:=Baud_rate + IncSign * 100;
         end;    }
    2  : begin
           IncSign:=Baud_rate + IncSign * 10;
         end;
    3  : begin
           IncSign:=Baud_rate + IncSign;
         end;
    4  : begin
           IncSign:=Baud_rate + IncSign * 0.1;
         end;
    5  : begin
           IncSign:=Baud_rate + IncSign * 0.01;
         end;
  end;
  if (IncSign > 2350) and (IncSign < 2450)
  then
  begin
    Baud_rate:=IncSign;
    UpdateBaudrateDisplay;
  end;
  set_time_inc(baud_rate);
  BaudratesListbox.Visible:= false;
  CenterListbox.Visible:= false;
end;
procedure TForm78.ShowBaudratesListMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  BaudratesListBox.Visible:=Not BaudratesListBox.Visible;
  CenterListBox.Visible:=False;
end;
procedure TForm78.BaudratesListBoxClick(Sender: TObject);
var
  ConStr: String;
  DecSepPos : Integer;
begin
  BaudratesListBox.Visible:= False;
  ConStr:=BaudratesListBox.Items[BaudratesListBox.ItemIndex];
  DecSepPos:=Pos(',',ConStr);
  if DecSepPos <> 0
  then
  begin
    ConStr[DecSepPos]:=FormatSettings.DecimalSeparator;
  end;
  Baud_rate:=StrtoFloat(ConStr);
  UpdateBaudrateDisplay;
  set_time_inc(baud_rate);
end;
procedure TForm78.Button1Click(Sender: TObject);
var  R : TRect;
begin
SynopDecodeActive :=not SynopDecodeActive;
  begin
  with R do
  begin
    Top:=0;
    Left:=0;
    Bottom:=Image1.Height;
    Right:=Image1.Width;
  end;
if SynopDecodeActive then
   Image1.Canvas.Brush.Color:=clwhite else Image1.Canvas.Brush.Color:=clblack;
   Image1.Canvas.FillRect(R);
  end;

end;

procedure Startmil110(AsDecoder : Boolean);
var
  WaitEventAllocated : boolean;
  i                  : Integer;
begin
  Choice:=80 ;
  //************************  NIEUW OM DUBBEL OPSTARTEN TE VOORKOMEN  **********************************
  i:=0;                                                                                               //
  while (i < MaxOpenModeThreads) do                                                                   //
  begin                                                                                               //
    inc(i);                                                                                           //
    if BufferWaitEventArray[i].BufferEventInUse                                                       //
    then                                                                                              //
    begin                                                                                             //
      if BufferWaitEventArray[i].ModeForm = Form78                                                    //
      then                                                                                            //
      begin                                                                                           //
        Exit;                                                                                         //
      end;                                                                                            //
    end;                                                                                              //
  end;                                                                                                //
  //****************************************************************************************************

  StartAsDecoder:=AsDecoder;
  WaitEventAllocated:=False;
  i:=0;
  while (i < MaxOpenModeThreads) and not WaitEventAllocated do
  begin
    inc(i);
    if not BufferWaitEventArray[i].BufferEventInUse
    then
    begin
      WaitEventArrayIndex:=i;
      BufferWaitEventArray[i].BufferEventInUse:=True;
      WaitEventAllocated:=True;
BufferWaitEventArray[i].ModeReadBufferOffsetPtr:=@Read_Buff_Offset;
    end
  end;

  if WaitEventAllocated
  then
  begin
    Application.CreateForm(Tform78,form78);
    if Application.ShowMainform then
    form78.Show;
    if key_emulation then Form78.KeyPreview:=true else Form78.KeyPreview:=false;
    mil110Thread:=nil;
    mil110Thread:=Tmil110Thread.Create(True);
//////    mil110Thread.FreeOnTerminate := True;
    // Sla de Form pointer op om te gebruiken voor post- en sendmessages
    BufferWaitEventArray[WaitEventArrayIndex].ModeForm:= form78;
    // Sla de bij behorende Thread op voor eventueel gebruik;
    BufferWaitEventArray[WaitEventArrayIndex].ModeThread:=mil110Thread;
    // Maak DataSocketBuffers[WaitEventArrayIndex] leeg.
    BufferWaitEventArray[WaitEventArrayIndex].ModeChoice:=Choice;                                       //
   FillChar(DataSocketBuffers[WaitEventArrayIndex],SizeOf(DataSocketBuffers[WaitEventArrayIndex]),0);
    //Stel de default mapping voor Unicode naar disk op international
    SetUnicodeDefaultMap;
    SetTTFDefaultMap;
    system_name:=ModeNames[Choice];
     Init_Text_To_Disk;
{Table remap}
  ita2_table_init(ita2_table,ascii_table);
    table_init(ccir342_table,ccir476_table,ita2_7_table,t3x4y_table, tita2_7_table);
{Table remap}
    form78.ModeSelect.itemindex:=0;
    Form78.alphabet.itemindex:=0;
    false3;
    mil110:=true;
    // Mode start van af de momentele Buffer Offset.
    Read_Buff_Offset:=Buf_Offset;
    // Zorg er voor dat gewacht wordt tot er tenminste 1 wavebuffer binnen is.
    ResetEvent(BufferWaitEventArray[WaitEventArrayIndex].BufferWaitEvent);
    // Geen StartAudioRecording
    StartedAudioRecording:=False;
    stopping:=false;
    mil110Thread.resume;
  end
  else
  begin
    PostMessage(HWndMainForm,CMD_C3,C3_DecoderRunning,-1);
  end;
end;


procedure mil110_rx; {mil 188 110 serial}
type
  interleave_mat=array[0..40,0..576] of shortint;
  //signal_int=array[0..23040] of shortint;
  Tstate=record               {a state in the trellis}
           metric:longint;   {total excess distance to this state}
           estimate:longint; {estimate of transmitted bit sequence}
         end;
const D4_template_16:array[1..16] of smallint=(0,0,0,0,4,4,4,4,0,0,0,0,4,4,4,4);
      D5_template_16:array[1..16] of smallint=(0,4,0,4,4,0,4,0,0,4,0,4,4,0,4,0);
      D6_template_16:array[1..16] of smallint=(0,0,4,4,4,4,0,0,0,0,4,4,4,4,0,0);
      D7_template_16:array[1..16] of smallint=(0,4,4,0,4,0,0,4,0,4,4,0,4,0,0,4);
      D4_template_20:array[1..20] of smallint=(0,0,0,0,4,4,4,4,0,0,0,0,4,4,4,4,0,0,0,0);
      D5_template_20:array[1..20] of smallint=(0,4,0,4,4,0,4,0,0,4,0,4,4,0,4,0,0,0,0,0);
      D6_template_20:array[1..20] of smallint=(0,0,4,4,4,4,0,0,0,0,4,4,4,4,0,0,0,0,0,0);
      D7_template_20:array[1..20] of smallint=(0,4,4,0,4,0,0,4,0,4,4,0,4,0,0,4,0,0,0,0);
var
   mil110_signal_tribit:array[0..11520] of shortint;
   mil110_signal_int,mil110_signal_deint:array[0..23040] of shortint;
{   interleave_matrix:^interleave_mat;}
   mil110_signal_deconv:array[0..11520+60] of boolean;
   symbol_mil110:array[0..1000] of byte;
   random_shift_array:array[0..160] of smallint;
   symbols:array[0..127] of byte;       {convolutional code symbols}
   trellis:array[0..127] of Tstate;     {viterbi decoder trellis}
   fse_array:array[0..100] of icomplex;
   forward_filter:array[0..42] of icomplex;
   dfe_filter:array[0..10] of lcomplex;
   old_channels:array[0..40] of icomplex;
   oldchannels:array[0..15] of smallint;
 //  sync_preamble_array:array[0..480] of smallint;
//   sync_template:array[0..7,0..31] of boolean;
   amplitude_array:array[0..70] of longint;
   channel_array:array[0..960] of shortint;
   corr_array:array[0..130] of lcomplex;
   sync_test_array:array[0..960] of boolean;
   new_channel:smallint;
   number_of_columns:smallint;
   interleave_counter:smallint;
   short_interleave:boolean;
   long_interleave:boolean;
   scramble_counter:smallint;
   data_rate:smallint;
   configuration:smallint;
   number_of_unknown_tribits:smallint;
   number_of_deconv_output_bits:smallint;
   number_of_bytes:smallint;
   frame_index:longint;
   crc_ok:boolean;
   preamble_detected:boolean;
   train_counter:smallint;
   arg:smallint;//word;
//   offset_freq:longint;
   test_cnt:smallint;
   old_phase,new_phase,new_phase_int:icomplex;
   main_mult,early_mult:lcomplex;
   samplevalue_old,samplevalue_new:icomplex;
   dfe_error:lcomplex;
   dfe_correction_sum:lcomplex;
   sample_counter:smallint;
   number_of_rows:smallint;
   repeat_symbol_2,repeat_symbol_4:boolean;
   n75:boolean;
   interleaving:boolean;
   known_data_number:smallint;
   unknown_data_number:smallint;
   hfdl_amplitude:longint;
   D1,D2,C1,C2,C3:smallint;
   sync_phase:smallint;
   sync_error:boolean;
   block_number:smallint;
   number_of_unknown_bits:smallint;
   train:boolean;
   testchannel:smallint;
   rotate:smallint;
   too_many_errors:boolean;
   too_many_errors_thr:longint;
   temp_phase_old:smallint;
   output_counter:smallint;
   start_error_counter,stop_error_counter:smallint;
   sync_counter:smallint;
   arg_phase:smallint; ///smallint
   known_data_end:smallint;
   train_20_16:boolean;
   b_y_count:smallint;
   sync_pattern_detected:boolean;
   preamble_found_not_sync:boolean;
   newchannelc:lcomplex;
   known_sequence:boolean;
   search_sync:boolean;
   s_count:smallint;
   sync_error_counter:smallint;
   correct_configuration:boolean;
   sync_detected:boolean;
   test_counter:smallint;
   main_psk_rotated,main_psk_rotated_sum:lcomplex;
   short_long_interleave:boolean;
   n75_32_result:boolean;

procedure shift_right(a:longint;b:smallint;var c:longint);
begin
   if (a>0) then
   begin
   end;
end;
procedure complex_rotate_l(a:lcomplex;b:smallint;var c:lcomplex);
begin
   b:=b and 7;
   case b of
   0: c:=a;
   1: begin
         c.re:=(a.re-a.im)*181 div 256;
         c.im:=(a.re+a.im)*181 div 256;
      end;
   2: begin
         c.re:=-a.im; c.im:=a.re;
      end;
   3: begin
         c.re:=(-a.re-a.im)*181 div 256;
         c.im:=(a.re-a.im)*181 div 256;
      end;
   4: begin
         c.re:=-a.re; c.im:=-a.im;
      end;
   5: begin
         c.re:=(-a.re+a.im)*181 div 256;
         c.im:=(-a.re-a.im)*181 div 256;
      end;
   6: begin
         c.re:=a.im; c.im:=-a.re;
      end;
   7: begin
         c.re:=(a.re+a.im)*181 div 256;
         c.im:=(-a.re+a.im)*181 div 256;
      end;
   end;
end;
procedure complex_rotate(a:icomplex;b:smallint;var c:icomplex);
var al,cl:lcomplex;
begin
   al.re:=a.re;
   al.im:=a.im;
   complex_rotate_l(al,b,cl);
   c.re:=cl.re;
   c.im:=cl.im;
end;
procedure complex_rotate_sync(a:icomplex;b:smallint;var c:icomplex);
begin
   b:=b and 7;
   case b of
   0: c:=a;
   1: begin
         c.re:=high_smallint(longmul(a.re-a.im,23170)) shl 1;
         c.im:=high_smallint(longmul(a.re+a.im,23170)) shl 1;
      end;
   2: begin
         c.re:=-a.im; c.im:=a.re;
      end;
   3: begin
         c.re:=high_smallint(longmul(-a.re-a.im,23170)) shl 1;
         c.im:=high_smallint(longmul(a.re-a.im,23170)) shl 1;
      end;
   4: begin
         c.re:=-a.re; c.im:=-a.im;
      end;
   5: begin
         c.re:=high_smallint(longmul(-a.re+a.im,23170)) shl 1;
         c.im:=high_smallint(longmul(-a.re-a.im,23170)) shl 1;
      end;
   6: begin
         c.re:=a.im; c.im:=-a.re;
      end;
   7: begin
         c.re:=high_smallint(longmul(a.re+a.im,23170)) shl 1;
         c.im:=high_smallint(longmul(-a.re+a.im,23170)) shl 1;
      end;
   end;
end;
(*procedure make_sync_template;
var cnt,count:smallint;
const sync_template_word:array[0..7] of longint= ($00000000,$55555555,$33333333,$66666666,$0F0F0F0F,$5A5A5A5A,$3C3C3C3C,$69696969);
begin
   for cnt:=0 to 7 do for count:=0 to 31 do
   begin
      sync_template[cnt,count]:=
      ((sync_template_word[cnt] shr (31-count)) and 1=1);
   end;
end;
procedure make_sync_preamble_array;
var cnt,count:smallint;
    temp:smallint;

const sync_pattern:array[1..15] of smallint=(0,1,3,0,1,3,1,2,0,0,0,0,0,0,0);
      sync_preamble_sequence:array[0..31] of smallint=(7,4,3,0,5,1,5,0,2,2,1,1,5,7,4,3,5,0,2,6,2,1,6,2,0,0,5,0,5,2,6,6);
begin
   for cnt:=1 to 15 do for count:=0 to 31 do
   begin
      if sync_template[sync_pattern[cnt],count] then
      temp:=(sync_preamble_sequence[count]+4) and 7
      else temp:=(sync_preamble_sequence[count]);
      sync_preamble_array[(31-count)+(15-cnt)*32]:=temp;
   end;
end;*)

procedure init;
var cnt:smallint;
begin
   interleaving:=true;
   no_interleaver:=false;
end;

function hfdl_map(x:longint):smallint;{shortint;}
var k:longint;
begin
   if hfdl_amplitude=0 then hfdl_amplitude:=1;
   k:=x div hfdl_amplitude;
   if (k>127) then k:=127;
   if (k<-127) then k:=-127;
   if not fm_am_demod then
   begin
      show_ascii_number(k);
      show_ascii(32);
   end;
   hfdl_map:=k;
end;
procedure fill_random_shift_array;
var cnt,count:smallint;
    shift_register:smallint;
begin
   shift_register:=$BAD;
   for cnt:=0 to 159 do
   begin
      for count:=1 to 8 do
      begin
         if (shift_register and $800=$800) 
         then
         begin
{xxx$R-}
           shift_register:=(shift_register shl 1) xor $53;
{xxx$R+}
         end  
         else
         begin
{xxx$R-}
           shift_register:=shift_register shl 1;
{xxx$R+}
         end;
      end;
      random_shift_array[cnt]:=shift_register and $7;
   end;
end;
var agc_gain:Double;//Double48;
procedure ad_sample_agc;
var tempr:Double;///Double;
begin
   sample_value_ad_filter_int(false);
   sample_value_ad_filter_int(false);
   sample_value_ad_filter_int(false);
   sample_value_ad_filter_int(false);
   sample_value_ad_filter_int(false);
   sample_value_ad_filter_int(true);
   if (agc_gain>50) then agc_gain:=50;
   if (agc_gain<0.3) then agc_gain:=0.3;
   samplevalue.re:=round(samplevalue.re*agc_gain);
   samplevalue.im:=round(samplevalue.im*agc_gain);
   tempr:=rsqc(samplevalue)-500;
   if (tempr<0) then agc_gain:=agc_gain*(1-tempr/10000)
  else agc_gain:=agc_gain*(1-tempr/2000);
   while (samplevalue.re>2048) or (samplevalue.im>2048) or
         (samplevalue.re<-2048) or (samplevalue.im<-2048) do
   begin
      samplevalue.re:=samplevalue.re div 2;
      samplevalue.im:=samplevalue.im div 2;
   end;
    ReadBufOffsetStep:= Read_Buff_Offset - ReadBufOffsetPrevious;
    if ReadBufOffsetStep < 0 then ReadBufOffsetStep:=ReadBufOffsetStep + Buffersize;
    With GlobalWaveFormat do
    begin
      if ReadBufOffsetStep  >(nSamplesPerSec * (nBlockAlign shr 1) * (wBitsPerSample  shr 3)) //shr 2
      then
      begin
        mil110Thread.synchronize(mil110Thread.status);
        ReadBufOffsetPrevious:=Read_Buff_Offset;
      end;
    end;
end;
function sample_value_pause_num_psk_hfdl_sync(hundredth_msec: Int64 ):smallint;
var nsample:smallint;
    sample_value:icomplex;
cnt:integer;
begin
   inc(elapsed_time,hundredth_msec);
   nsample:=elapsed_time div (93750 * 6);
   elapsed_time:=elapsed_time mod (93750 * 6);{46875;}
   sample_counter:=(sample_counter+1) and 15;
   movedw(fse_array[0],fse_array[1],90);

{xxx$R-}
   fse_array[0].re:=samplevalue_old.re*(16-sample_counter)+ samplevalue_new.re*sample_counter;
   fse_array[0].im:=samplevalue_old.im*(16-sample_counter)+ samplevalue_new.im*sample_counter;
{xxx$R+}
   if (sample_counter=15) then
   begin
      ad_sample_agc;
      samplevalue.re:=samplevalue.re;
      samplevalue.im:=-samplevalue.im;
      inc(arg,(offset_freq+6400) div 12800);
      arg:=0;
      complexmul2(samplevalue,dexp_table[(arg shr 6) and 1023],sample_value);
      samplevalue_old:=samplevalue_new;
      samplevalue_new:=sample_value;
   end;


   for cnt:=nsample-2 downto 0 do
   begin
      sample_counter:=(sample_counter+1) and 15;
      if (sample_counter=15) then
      begin
        ad_sample_agc;
      samplevalue.re:=samplevalue.re;
      samplevalue.im:=-samplevalue.im;
{xxx$R-}
         inc(arg,(offset_freq+6400) div 12800);
{xxx$R+}                       //6400

       arg:=0;
         complexmul2(samplevalue,dexp_table[(arg shr 6) and 1023],sample_value);
         samplevalue_old:=samplevalue_new;
         samplevalue_new:=sample_value;
      end;
   end;

end;



(*
function sample_value_pause_num_psk_hfdl_sync(hundredth_msec: Int64 ):smallint;
var nsample:smallint;
    sample_value:icomplex;
begin
   inc(elapsed_time,hundredth_msec);
   nsample:=elapsed_time div 93750;
   elapsed_time:=elapsed_time mod 93750;{46875;}
   sample_counter:=(sample_counter+1) and 15;
   movedw(fse_array[0],fse_array[1],90);
{xxx$R-}
   fse_array[0].re:=samplevalue_old.re*(16-sample_counter)+ samplevalue_new.re*sample_counter;
   fse_array[0].im:=samplevalue_old.im*(16-sample_counter)+ samplevalue_new.im*sample_counter;
{xxx$R+}
   if (sample_counter=15) then
   begin
      ad_sample_agc;
      samplevalue.re:=samplevalue.re;
      samplevalue.im:=-samplevalue.im;
      inc(arg,(offset_freq+6400) div 12800);
////arg:=0;
///arg:=round(arg*0.5);
      complexmul2(samplevalue,dexp_table[(arg shr 6) and 1023],sample_value);
      samplevalue_old:=samplevalue_new;
      samplevalue_new:=sample_value;
   end;
   for count:=nsample-2 downto 0 do
   begin
      sample_counter:=(sample_counter+1) and 15;
      if (sample_counter=15) then
      begin
         ad_sample_agc;
      samplevalue.re:=samplevalue.re;
      samplevalue.im:=-samplevalue.im;
{xxx$R-}
         inc(arg,(offset_freq+6400) div 12800);
{xxx$R+}                       //6400

///arg:=0;
///arg:=round(arg*0.5);
         complexmul2(samplevalue,dexp_table[(arg shr 6) and 1023],sample_value);
         samplevalue_old:=samplevalue_new;
         samplevalue_new:=sample_value;
      end;
   end;
end;
*)





function syn_sample_hfdl_sync:boolean;
begin
   sample_value_pause_num_psk_hfdl_sync(time_inc_8);
   inc(b_y_count);
   if (b_y_count and 255=0) then
   begin
      sample_element:=768+offset_freq div round(13600*8*960/ad_sample_freq);
   end;
end;
procedure correlate_sync;
var cnt,count,counter:smallint;
    tempc:icomplex;
    corr:array[0..7] of lcomplex;
    templ:longint;
    channel:smallint;
    temp_phase:longint;
    temp:smallint;
    sync_detected_temp:boolean;
    tempr:longint;
begin
   syn_sample_hfdl_sync;
   for cnt:=0 to 7 do corr[cnt]:=lczero;
   for count:=0 to 31 do
   begin
      complexmul(fse_array[((31-count) shl 1)+21],dexp_table[ (-sync_preamble_array[31-count] and 7) shl 7],tempc);
      for cnt:=0 to 7 do
      begin
         if sync_template[cnt,count] then
         begin
            dec(corr[cnt].re,tempc.re);
            dec(corr[cnt].im,tempc.im);
         end
         else
         begin
            inc(corr[cnt].re,tempc.re);
            inc(corr[cnt].im,tempc.im);
         end;
      end;
   end;
   inc(s_count);
   templ:=rsqlc(corr[0]);
   channel:=0;
   for cnt:=1 to 7 do
   begin
      tempr:=rsqlc(corr[cnt]);
      if (tempr>templ) then
      begin
         templ:=tempr;
         channel:=cnt;
      end;
   end;
   movedw(amplitude_array[0],amplitude_array[1],64);
   move(channel_array[0],channel_array[1],159);
   movedw(corr_array[0],corr_array[1],128{256});
   move(sync_test_array[0],sync_test_array[1],358);
   amplitude_array[0]:=templ;
   channel_array[0]:=channel;
   corr_array[0]:=corr[channel];
   sync_test_array[0]:=false;
   begin
      if (amplitude_array[0]>(amplitude_array[32] shl 1)) and
         (amplitude_array[64]>(amplitude_array[32] shl 1))
      then
      begin
         sync_test_array[0]:=true;
(*
         show_ascii(32);
{         show_ascii_number(amplitude_array[0]);
         show_ascii(32);
         show_ascii_number(amplitude_array[32]);
         show_ascii(32);}
         show_ascii_number(s_count);
         show_ascii(32);
         show_ascii_number(channel_array[0]);
         show_ascii(32);
         show_ascii(32);*)
      end;
      temp:=0;
      for cnt:=1 to 5 do
      begin
         if sync_test_array[cnt shl 6] then inc(temp);
      end;
{      if (temp=2) then offset_freq:=0;} {not ok}
      sync_detected:=(temp>3);    ///3
     sync_detected_temp:=(temp>2);  ///2
      if sync_detected_temp then
      begin
{         show_ascii(32);}
         temp_phase:=bgtanlc(corr_array[0])-bgtanlc(corr_array[64]);
         offset_freq:=offset_freq-(((temp_phase+512) and 1023)-512)*1600;  {6400 div 4}
                                                                           {stability}
                                                                           {6400 ==12800 div 2}
         if (offset_freq>50000) then offset_freq:=50000;
         if (offset_freq<-50000) then offset_freq:=-50000;
         sync_phase:=(-(bgtanlc(corr_array[0])+64) shr 7) and 7;
{         show_ascii(13);
         show_ascii_number(sync_phase);
         show_ascii(32);
         show_ascii(32);
         show_ascii(32);
 }
      end;
   end;
end;
procedure test_sync;
var cnt:smallint;
begin
   for cnt:=0 to 960 do sync_test_array[cnt]:=false;
   for cnt:=0 to 960 do channel_array[cnt]:=-1;
   for cnt:=0 to 70 do amplitude_array[cnt]:=1;
{   s_count:=0;}
   offset_freq:=0;
   sync_detected:=false;
   while not (sync_detected and (channel_array[0]=0) and
             (channel_array[64]>=4)) and not stopping
   do
   begin
     correlate_sync;
   end;
end;
function sample_value_pause_num_psk_hfdl(hundredth_msec: Int64 ):smallint;
var nsample,nsample4:smallint;
    cnt,count,counter:smallint;
    main_psk,mid_psk:lcomplex;
    temp_sum:icomplex;
    ref_phase:icomplex;
    sample_value:icomplex;
    filter_out:icomplex;
    filter_out_rot:icomplex;
    tempcl:lcomplex;
    tempc:icomplex;
    tempb:boolean;
    sample_main,sample_mid:icomplex;
    templ:longint;
    temp_soft:longint;
    temp_phase:longint;
    diff_phase:smallint;
    diff_phase_sum:smallint;
    main_phase:smallint;
    arg_phase_gain:longint;
    offset_freq_gain:longint;
    error,error_rot:icomplex;
    reference,reference_7:longint;
    gain:longint;
    ref_phase_temp:icomplex;
    train_20_16_begin,train_20_16_end,train_dfe_end:smallint;
    Xcoor : Integer;
    Ycoor : Integer;
    TempX : Integer;
    TempY : Integer;

begin
   if train_20_16 then
   begin
      train_20_16_begin:=1;
      train_20_16_end:=40;
      train_dfe_end:=10;
   end
   else
   begin
      train_20_16_begin:=5;
      train_20_16_end:=36;
      train_dfe_end:=8;
   end;
   movew(oldchannels[0],oldchannels[1],10);
   gain:=-500; {1000}
   reference:={100000;} 50000;
   reference_7:=reference*181 div 256; {181 div 256 =0.707}
   if not sync then
   begin
      arg_phase_gain:=20;
      offset_freq_gain:=50;
   end
   else
   begin
      arg_phase_gain:=20;                //<<<<<<<<<<<<<<<<<< naar 2 is beter
      offset_freq_gain:=20;              //<<<<<<<<<<<<<<<<<< naar 2 is beter
   end;
   inc(elapsed_time,hundredth_msec);
   nsample:=elapsed_time div (46875 * 6) ;  {46875 93750 187500 375000}
   elapsed_time:=elapsed_time mod (46875 * 6);
   nsample4:=(nsample) shr 1;         {+1 is not ok}
   begin
      temp_phase:=0;
      if not auto_thr then offset_freq:=0;
      sample_counter:=(sample_counter+1) and 15;
      movedw(fse_array[0],fse_array[2],64);
{xxx$R-}
      fse_array[1].re:=samplevalue_old.re*(16-sample_counter)+ samplevalue_new.re*sample_counter;
      fse_array[1].im:=samplevalue_old.im*(16-sample_counter)+ samplevalue_new.im*sample_counter;
{xxx$R+}
      if (sample_counter=15) then
      begin
     ad_sample_agc;
      samplevalue.re:=samplevalue.re;
      samplevalue.im:=-samplevalue.im;
         inc(arg,(offset_freq+6400) div 12800);
         complexmul2(samplevalue,dexp_table[(arg shr 6) and 1023],sample_value);
         samplevalue_old:=samplevalue_new;
         samplevalue_new:=sample_value;
      end;
   end;
   for count:=nsample-2 downto 0 do
   begin
      sample_counter:=(sample_counter+1) and 15;
      if (count=nsample4) then
      begin
{xxx$R-}
         fse_array[0].re:=samplevalue_old.re*(16-sample_counter)+
                          samplevalue_new.re*sample_counter;
         fse_array[0].im:=samplevalue_old.im*(16-sample_counter)+
{xxx$R+}                          samplevalue_new.im*sample_counter;
         filter_out:=czero;
         for counter:=train_20_16_begin to train_20_16_end do
         begin
      complexmulad(fse_array[counter],forward_filter[counter],filter_out);
         end;
         ref_phase.re:=exp_table[(arg_phase shr 6) and 1023].re;
         ref_phase.im:=exp_table[(arg_phase shr 6) and 1023].im;
         complexmulconjl(ref_phase,filter_out,main_psk);
         dfe_correction_sum:=lczero;
         for counter:=1 to train_dfe_end do
         begin
      complex_rotate_l(dfe_filter[counter],oldchannels[counter],tempcl);
            complexaddl(dfe_correction_sum,tempcl);
         end;
         inc(main_psk.re,dfe_correction_sum.re);
         inc(main_psk.im,dfe_correction_sum.im);
         filter_out:=czero;
         for counter:=train_20_16_begin to train_20_16_end do
         begin
      complexmulad(fse_array[counter+1],forward_filter[counter],filter_out);
         end;
         complexmulconjl(ref_phase,filter_out,mid_psk);
      end;
      if (sample_counter=15) then
      begin
         ad_sample_agc;
      samplevalue.re:=samplevalue.re;
      samplevalue.im:=-samplevalue.im;
         inc(arg,(offset_freq+6400) div 12800);
         complexmul2(samplevalue,dexp_table[(arg shr 6) and 1023],sample_value);
         samplevalue_old:=samplevalue_new;
         samplevalue_new:=sample_value;
      end;
   end;
   phase_correction:=0;
   rotate:=(random_shift_array[scramble_counter]+sync_phase) and 7;
   if train then rotate:=rotate+known_data_end;
   if not sync then
   rotate:=(sync_preamble_array[sync_counter]+sync_phase) and 7;

   if not SynopDecodeActive then
   begin
   with Form78.Image1.Canvas do
    begin
     lock;   ///52
     Inc(ConstFifoIndex);
     if ConstFifoIndex >= 4048
     then
     begin
       ConstFifoIndex:=0;
     end;
     TempX:=ConstFifo[ConstFifoIndex].X;
     TempY:=ConstFifo[ConstFifoIndex].Y;
     pixels[TempX,TempY]:=CLblack;//text_background_color;//clSilver;

     Xcoor:= 52 +(main_psk.re div 2048);
     Ycoor:= 52 +(main_psk.im div 2048);
     ConstFifo[ConstFifoIndex].X:=Xcoor;
     ConstFifo[ConstFifoIndex].Y:=Ycoor;
     pixels[Xcoor,Ycoor]:=cllime;//Black;
     unlock;
    end;
   end;




   begin
      newchannelc:=main_psk;
      main_phase:=bgtanlc(main_psk);
      if (ary_psk=8) then
      begin
         newchannel:=((main_phase+64) shr 7) and 7;
         testchannel:=newchannel;
  /////       form78.label2.caption:= '8 PSK';
      end;

      if false then
      begin
//         show_ascii(32);
//         show_ascii_string(' -ch: ');
         show_ascii_number(newchannel);
         show_ascii(32);
//   show_ascii_number((sync_preamble_array[sync_counter]+sync_phase) and 7);
//         show_ascii(32);
      end;
      if (ary_psk=4) then
      begin
///////      form78.label2.caption:= '4 PSK';
         if  (rotate=0) or (rotate=2) or (rotate=4) or (rotate=6) then
         begin
            if ((main_psk.re-main_psk.im)>0) then
            begin
     if ((main_psk.re+main_psk.im)>0) then newchannel:=0 else newchannel:=6;
            end
            else
            begin
     if ((main_psk.re+main_psk.im)>0) then newchannel:=2 else newchannel:=4;
            end;
         end;
         if (rotate=1) or (rotate=3) or (rotate=5) or (rotate=7) then
         begin
            if (main_psk.re)>0 then
            begin
               if (main_psk.im>0) then newchannel:=1 else newchannel:=7;
            end
            else
            begin
               if (main_psk.im>0) then newchannel:=3 else newchannel:=5;
            end;
         end;
      end;
      if (ary_psk=2) then
      begin
//////      form78.label2.caption:= '2 PSK';
         if (rotate=0) or (rotate=4)  then
         begin
            if (main_psk.re>0) then newchannel:=0 else newchannel:=4;
         end;
         if (rotate=2) or (rotate=6)  then
         begin
            if (main_psk.im>0) then newchannel:=2 else newchannel:=6;
         end;
         if (rotate=1) or (rotate=5) then
         begin
            if (main_psk.re+main_psk.im)>0 then
                newchannel:=1 else newchannel:=5;
         end;
         if (rotate=3) or (rotate=7) then
         begin
            if (main_psk.re-main_psk.im)>0 then
                newchannel:=7 else newchannel:=3;
         end;
      end;
   end;
{   if not mark_mask then testchannel:=(8-testchannel) and 7;}
   if train or (not sync and known_sequence) then newchannel:=rotate;
   oldchannels[0]:=newchannel;
   if train or not sync or n75 then {==not sync or (sync and n75)}
   begin
      if (newchannel=0) then
      begin
         {old-new}
         if (oldchannel=4) then phase_correction:=-mid_psk.re*14;
         if (oldchannel=2) then phase_correction:=(+mid_psk.im-mid_psk.re)*7;
         if (oldchannel=6) then phase_correction:=(-mid_psk.im-mid_psk.re)*7;
         if (oldchannel=1) then phase_correction:=(mid_psk.re+mid_psk.im)*5-mid_psk.re*7;
         if (oldchannel=3) then phase_correction:=(-mid_psk.re+mid_psk.im)*5-mid_psk.re*7;
         if (oldchannel=5) then phase_correction:=(-mid_psk.re-mid_psk.im)*5-mid_psk.re*7;
         if (oldchannel=7) then phase_correction:=(mid_psk.re-mid_psk.im)*5-mid_psk.re*7;
         begin
            temp_phase:=((main_phase+512) and 1023)-512;
            inc(arg_phase,temp_phase*arg_phase_gain);
            dec(offset_freq,temp_phase*offset_freq_gain);
         end;
         error.re:=(main_psk.re-reference) div gain;
         error.im:=main_psk.im div gain;
      end;
      if (newchannel=4) then
      begin
         if (oldchannel=0) then phase_correction:=mid_psk.re*14;
         if (oldchannel=2) then phase_correction:=(+mid_psk.im+mid_psk.re)*7;
         if (oldchannel=6) then phase_correction:=(-mid_psk.im+mid_psk.re)*7;
         if (oldchannel=1) then phase_correction:=(mid_psk.re+mid_psk.im)*5+mid_psk.re*7;
         if (oldchannel=3) then phase_correction:=(-mid_psk.re+mid_psk.im)*5+mid_psk.re*7;
         if (oldchannel=5) then phase_correction:=(-mid_psk.re-mid_psk.im)*5+mid_psk.re*7;
         if (oldchannel=7) then phase_correction:=(mid_psk.re-mid_psk.im)*5+mid_psk.re*7;
         begin
            temp_phase:=((main_phase+512-512) and 1023) -512;
            inc(arg_phase,temp_phase*arg_phase_gain);
            dec(offset_freq,temp_phase*offset_freq_gain);
         end;
         error.re:=(main_psk.re+reference) div gain;
         error.im:=main_psk.im div gain;
      end;
      if (newchannel=2) then
      begin
         if (oldchannel=6) then phase_correction:=-mid_psk.im*14;
         if (oldchannel=0) then phase_correction:=(+mid_psk.re-mid_psk.im)*7;
         if (oldchannel=4) then phase_correction:=(-mid_psk.re-mid_psk.im)*7;
         if (oldchannel=1) then phase_correction:=(mid_psk.re+mid_psk.im)*5-mid_psk.im*7;
         if (oldchannel=3) then phase_correction:=(-mid_psk.re+mid_psk.im)*5-mid_psk.im*7;
         if (oldchannel=5) then phase_correction:=(-mid_psk.re-mid_psk.im)*5-mid_psk.im*7;
         if (oldchannel=7) then phase_correction:=(mid_psk.re-mid_psk.im)*5-mid_psk.im*7;
         begin
            temp_phase:=((main_phase+512-256) and 1023)-512;
            inc(arg_phase,temp_phase*arg_phase_gain);
            dec(offset_freq,temp_phase*offset_freq_gain);
         end;
         error.re:=main_psk.re div gain;
         error.im:=(main_psk.im-reference) div gain;
      end;
      if (newchannel=6) then
      begin
         if (oldchannel=2) then phase_correction:=mid_psk.im*14;
         if (oldchannel=0) then phase_correction:=(mid_psk.re+mid_psk.im)*7;
         if (oldchannel=4) then phase_correction:=(-mid_psk.re+mid_psk.im)*7;
         if (oldchannel=1) then phase_correction:=(mid_psk.re+mid_psk.im)*5+mid_psk.im*7;
         if (oldchannel=3) then phase_correction:=(-mid_psk.re+mid_psk.im)*5+mid_psk.im*7;
         if (oldchannel=5) then phase_correction:=(-mid_psk.re-mid_psk.im)*5+mid_psk.im*7;
         if (oldchannel=7) then phase_correction:=(mid_psk.re-mid_psk.im)*5+mid_psk.im*7;
         begin
            temp_phase:=((main_phase+512+256) and 1023)-512;
            inc(arg_phase,temp_phase*arg_phase_gain);
            dec(offset_freq,temp_phase*offset_freq_gain);
         end;
         error.re:=main_psk.re div gain;
         error.im:=(main_psk.im+reference) div gain;
      end;
      if (newchannel=1) then
      begin
      if (oldchannel=5) then phase_correction:=(-mid_psk.re-mid_psk.im)*10;
    if (oldchannel=3) then phase_correction:=(-mid_psk.re+mid_psk.im)*5+(-mid_psk.re-mid_psk.im)*5;
    if (oldchannel=7) then phase_correction:=(mid_psk.re-mid_psk.im)*5+(-mid_psk.re-mid_psk.im)*5;
    if (oldchannel=0) then phase_correction:=(mid_psk.re)*7+(-mid_psk.re-mid_psk.im)*5;
    if (oldchannel=2) then phase_correction:=(mid_psk.im)*7+(-mid_psk.re-mid_psk.im)*5;
    if (oldchannel=4) then phase_correction:=(-mid_psk.re)*7+(-mid_psk.re-mid_psk.im)*5;
    if (oldchannel=6) then phase_correction:=(-mid_psk.im)*7+(-mid_psk.re-mid_psk.im)*5;
         begin
            temp_phase:=((main_phase+512-128) and 1023)-512;
            inc(arg_phase,temp_phase*arg_phase_gain);
            dec(offset_freq,temp_phase*offset_freq_gain);
         end;
         error.re:=(main_psk.re-reference_7) div gain;
         error.im:=(main_psk.im-reference_7) div gain;
      end;
      if (newchannel=7) then
      begin
    if (oldchannel=3) then phase_correction:=(-mid_psk.re+mid_psk.im)*10;
    if (oldchannel=1) then phase_correction:=(mid_psk.re+mid_psk.im)*5+(-mid_psk.re+mid_psk.im)*5;
    if (oldchannel=5) then phase_correction:=(-mid_psk.re-mid_psk.im)*5+(-mid_psk.re+mid_psk.im)*5;
    if (oldchannel=0) then phase_correction:=(mid_psk.re)*7+(-mid_psk.re+mid_psk.im)*5;
    if (oldchannel=2) then phase_correction:=(mid_psk.im)*7+(-mid_psk.re+mid_psk.im)*5;
    if (oldchannel=4) then phase_correction:=(-mid_psk.re)*7+(-mid_psk.re+mid_psk.im)*5;
    if (oldchannel=6) then phase_correction:=(-mid_psk.im)*7+(-mid_psk.re+mid_psk.im)*5;
         begin
            temp_phase:=((main_phase+512+128) and 1023)-512;
            inc(arg_phase,temp_phase*arg_phase_gain);
            dec(offset_freq,temp_phase*offset_freq_gain);
         end;
         error.re:=(main_psk.re-reference_7) div gain;
         error.im:=(main_psk.im+reference_7) div gain;
      end;
      if (newchannel=3) then
      begin
    if (oldchannel=7) then phase_correction:=(mid_psk.re-mid_psk.im)*10;
    if (oldchannel=1) then phase_correction:=(mid_psk.re+mid_psk.im)*5+(mid_psk.re-mid_psk.im)*5;
    if (oldchannel=5) then phase_correction:=(-mid_psk.re-mid_psk.im)*5+(mid_psk.re-mid_psk.im)*5;
    if (oldchannel=0) then phase_correction:=(mid_psk.re)*7+(mid_psk.re-mid_psk.im)*5;
    if (oldchannel=2) then phase_correction:=(mid_psk.im)*7+(mid_psk.re-mid_psk.im)*5;
    if (oldchannel=4) then phase_correction:=(-mid_psk.re)*7+(mid_psk.re-mid_psk.im)*5;
    if (oldchannel=6) then phase_correction:=(-mid_psk.im)*7+(mid_psk.re-mid_psk.im)*5;
         begin
            temp_phase:=((main_phase+512-384) and 1023)-512;
            inc(arg_phase,temp_phase*arg_phase_gain);
            dec(offset_freq,temp_phase*offset_freq_gain);
         end;
         error.re:=(main_psk.re+reference_7) div gain;
         error.im:=(main_psk.im-reference_7) div gain;
      end;
      if (newchannel=5) then
      begin
    if (oldchannel=1) then phase_correction:=(mid_psk.re+mid_psk.im)*10;
    if (oldchannel=3) then phase_correction:=(-mid_psk.re+mid_psk.im)*5+(mid_psk.re+mid_psk.im)*5;
    if (oldchannel=7) then phase_correction:=(mid_psk.re-mid_psk.im)*5+(mid_psk.re+mid_psk.im)*5;
    if (oldchannel=0) then phase_correction:=(mid_psk.re)*7+(mid_psk.re+mid_psk.im)*5;
    if (oldchannel=2) then phase_correction:=(mid_psk.im)*7+(mid_psk.re+mid_psk.im)*5;
    if (oldchannel=4) then phase_correction:=(-mid_psk.re)*7+(mid_psk.re+mid_psk.im)*5;
    if (oldchannel=6) then phase_correction:=(-mid_psk.im)*7+(mid_psk.re+mid_psk.im)*5;
         begin
            temp_phase:=((main_phase+512+384) and 1023)-512;
            inc(arg_phase,temp_phase*arg_phase_gain);
            dec(offset_freq,temp_phase*offset_freq_gain);
         end;
         error.re:=(main_psk.re+reference_7) div gain;
         error.im:=(main_psk.im+reference_7) div gain;
      end;
   end;
   if train or (not sync and known_sequence) or (sync and n75) then
   begin
      inc(train_counter);
      for counter:=1 to 10 do
      begin
         complex_rotate(error,-oldchannels[counter],tempc);
         inc(dfe_filter[counter].re,tempc.re);
         inc(dfe_filter[counter].im,tempc.im);
      end;
      complexmul2(dexp_table[(arg_phase shr 6) and 1023],error,error_rot);
      for counter:=0 to 40 do
      begin
         tempc:=fse_array[counter];
         tempc.im:=-tempc.im;
         complexmulad(tempc,error_rot,forward_filter[counter]);
      end;
      if test_switch and (scramble_counter mod 20=19) then
      begin
         show_ascii(13);
         show_ascii(10);
         show_ascii_string(' E ');
         show_ascii_number(error.re); show_ascii(32);
         show_ascii_number(error.im); show_ascii(32);
         show_ascii(13);
         show_ascii(10);
         for counter:=1 to 10 do
         begin
            show_ascii_number(dfe_filter[counter].re); show_ascii(32);
            show_ascii_number(dfe_filter[counter].im); show_ascii(32);
            show_ascii(32);
         end;
         show_ascii(13);
         show_ascii(10);
         for counter:=1 to 40 do
         begin
            show_ascii_number(forward_filter[counter].re); show_ascii(32);
            show_ascii_number(forward_filter[counter].im); show_ascii(32);
            show_ascii(32);
         end;
         show_ascii(13);
         show_ascii(10);
      end;
   end;
   phase_correction:=phase_correction div 5{10};
   if (phase_correction >30000) then phase_correction:=+30000
   else if (phase_correction <-30000) then phase_correction:=-30000;
   oldchannel:=newchannel;
   new_channel:=newchannel;
   complex_rotate_l(main_psk,-rotate,main_psk_rotated);
   newchannel:=(newchannel-rotate) and 7;
{   if not mark_mask then newchannel:=(8-newchannel) and 7;}


end;
function syn_sample_hfdl:boolean;
begin
   sample_value_pause_num_psk_hfdl(time_inc_8+phase_correction* Phase48);
   syn_sample_hfdl:=(newchannel<4);
   inc(b_y_count);
   if (b_y_count and 255=0) then
   begin
     sample_element:= 768+offset_freq div round(13600*8*960/ad_sample_freq);
      //******write_b_y(newchannel<4);
   end;
end;
procedure initviterbi;
var i:smallint;  {cl=7}
const poly1=$6D;
      poly2=$4F;
      function parity(test:byte):byte;
      var count:byte;
      begin
         count:=0;
         while (test>0) do
         begin
            if (test and 1=1) then inc(count);
            test:=test shr 1;
         end;
         parity:=count and 1;
      end;
begin
   for i:=0 to 127 do
   symbols[i]:=parity(i and poly1) shl 1 or parity(i and poly2);
end;


procedure decode_conv_repeat_4
                   (high,low,highr1,lowr1,
                   highr2,lowr2,highr3,lowr3:smallint;var decode_out:boolean);
var i:smallint;
    metrics:array[0..127] of longint;
    estimates:array[0..127] of longint;
    min:longint;
    vote:byte;
    x,y:smallint;
    metric,metric_r1,metric_r2,metric_r3:array[0..3] of smallint;
    metric_sum:array[0..3] of longint;
    temp,tempr:smallint;
    s:smallint;
begin
   metric[0]:=128-low-high;
   metric[1]:=128+low-high;
   metric[2]:=128-low+high;
   metric[3]:=128+low+high;
   metric_r1[0]:=128-lowr1-highr1;
   metric_r1[1]:=128+lowr1-highr1;
   metric_r1[2]:=128-lowr1+highr1;
   metric_r1[3]:=128+lowr1+highr1;
   metric_r2[0]:=128-lowr2-highr2;
   metric_r2[1]:=128+lowr2-highr2;
   metric_r2[2]:=128-lowr2+highr2;
   metric_r2[3]:=128+lowr2+highr2;
   metric_r3[0]:=128-lowr3-highr3;
   metric_r3[1]:=128+lowr3-highr3;
   metric_r3[2]:=128-lowr3+highr3;
   metric_r3[3]:=128+lowr3+highr3;
   metric_sum[0]:=metric[0]+metric_r1[0]+metric_r2[0]+metric_r3[0];
   metric_sum[1]:=metric[1]+metric_r1[1]+metric_r2[1]+metric_r3[1];
   metric_sum[2]:=metric[2]+metric_r1[2]+metric_r2[2]+metric_r3[2];
   metric_sum[3]:=metric[3]+metric_r1[3]+metric_r2[3]+metric_r3[3];
   min_distance:=$7FFFFFFF;
   for i:=0 to 127 do  {calc distances for all states and both data values}
   begin               {added distance between rcvd and predicted symbol}
      metrics[i]:=trellis[i shr 1].metric+metric_sum[symbols[i]];
      estimates[i]:=((trellis[i shr 1].estimate) shl 1) or (i and 1);
      if (metrics[i]<min_distance) then min_distance:=metrics[i];
   end;
   vote:=0;
   for i:=0 to 63 do         {for each new state in the new trellis array}
   begin
      if (metrics[i]<metrics[i+64]) then
      begin
         trellis[i].metric:=metrics[i]{-min_distance};        {update excess metrics}
         trellis[i].estimate:=estimates[i];          {store new estimate}
      end
      else
      begin
         trellis[i].metric:=metrics[i+64]{-min_distance};
         trellis[i].estimate:=estimates[i+64];
      end;
      if (trellis[i].estimate>0) then inc(vote); {test 32'th bit}
   end;
   decode_out:=(vote<32);
end;
procedure decode_conv_repeat_2 (high,low,highr,lowr:smallint;var decode_out:boolean);
var i:smallint;
    metrics:array[0..127] of longint;
    estimates:array[0..127] of longint;
    vote:byte;
    x,y:smallint;
    metric,metric_r,metric_sum:array[0..3] of smallint;
    temp,tempr:smallint;
    s:smallint;
begin
   metric[0]:=128-low-high;
   metric[1]:=128+low-high;
   metric[2]:=128-low+high;
   metric[3]:=128+low+high;
   metric_r[0]:=128-lowr-highr;
   metric_r[1]:=128+lowr-highr;
   metric_r[2]:=128-lowr+highr;
   metric_r[3]:=128+lowr+highr;
   metric_sum[0]:=metric[0]+metric_r[0];
   metric_sum[1]:=metric[1]+metric_r[1];
   metric_sum[2]:=metric[2]+metric_r[2];
   metric_sum[3]:=metric[3]+metric_r[3];
   min_distance:=$7FFFFFFF;
   for i:=0 to 127 do  {calc distances for all states and both data values}
   begin               {added distance between rcvd and predicted symbol}
      metrics[i]:=trellis[i shr 1].metric+metric_sum[symbols[i]];
      estimates[i]:=((trellis[i shr 1].estimate) shl 1) or (i and 1);
      if (metrics[i]<min_distance) then min_distance:=metrics[i];
   end;
   vote:=0;
   for i:=0 to 63 do         {for each new state in the new trellis array}
   begin
      if (metrics[i]<metrics[i+64]) then
      begin
         trellis[i].metric:=metrics[i]{-min_distance};        {update excess metrics}
         trellis[i].estimate:=estimates[i];          {store new estimate}
      end
      else
      begin
         trellis[i].metric:=metrics[i+64]{-min_distance};
         trellis[i].estimate:=estimates[i+64];
      end;
      if (trellis[i].estimate>0) then inc(vote); {test 32'th bit}
   end;
   decode_out:=(vote<32);
end;
procedure decode_conv(high,low:smallint;var decode_out:boolean);
var i:smallint;
    metrics:array[0..127] of longint;
    estimates:array[0..127] of longint;
    vote:byte;
    x,y:smallint;
    temp:smallint;
    metric:array[0..3] of smallint;
    s:smallint;
begin
   metric[0]:=128-low-high;
   metric[1]:=128+low-high;
   metric[2]:=128-low+high;
   metric[3]:=128+low+high;
   min_distance:=$7FFFFFFF;
   for i:=0 to 127 do  {calc distances for all states and both data values}
   begin               {added distance between rcvd and predicted symbol}
      metrics[i]:=trellis[i shr 1].metric + metric[symbols[i]];
      estimates[i]:=((trellis[i shr 1].estimate) shl 1) or (i and 1);  {new estimate}
      if (metrics[i]<min_distance) then min_distance:=metrics[i];
   end;
   vote:=0;
   for i:=0 to 63 do
   begin
      if (metrics[i]<metrics[i+64]) then
      begin
         trellis[i].metric:=metrics[i]{-min_distance};   {update excess metrics}
         trellis[i].estimate:=estimates[i];     {store new estimate}
      end
      else
      begin
         trellis[i].metric:=metrics[i+64]{-min_distance};
         trellis[i].estimate:=estimates[i+64];
      end;
      if (trellis[i].estimate>0) then inc(vote); {test 32'th bit}
   end;
   decode_out:=(vote<32);
end;
procedure inittrellis;
var i:smallint;
    tempb:boolean;
begin
   min_distance:=0;
   for i:=0 to 63 do
   begin
      trellis[i].metric:=0;
      trellis[i].estimate:=0;
   end;
end;
procedure inittrellis_metric;
var i:smallint;
begin
   for i:=0 to 63 do trellis[i].metric:=trellis[i].metric-min_distance;
end;
procedure deconvolution;
var cnt:smallint;
    temp:smallint;
    conv_delay:smallint;
    cnt_8,cnt_4,cnt_2:smallint;
begin
   conv_delay:=31;
   temp:=number_of_deconv_output_bits;
   if repeat_symbol_4 then
   begin
      for cnt:=temp-1 downto 0 do
      begin
         cnt_8:=cnt shl 3;
         decode_conv_repeat_4(
         mil110_signal_deint[cnt_8+7],mil110_signal_deint[cnt_8+6],
         mil110_signal_deint[cnt_8+5],mil110_signal_deint[cnt_8+4],
         mil110_signal_deint[cnt_8+3],mil110_signal_deint[cnt_8+2],
         mil110_signal_deint[cnt_8+1],mil110_signal_deint[cnt_8],
         mil110_signal_deconv[cnt{+conv_delay}]);
      end;
{      for cnt:=conv_delay-1 downto 0 do
      begin
         decode_conv_repeat_4(64,64,64,64,64,64,64,64,mil110_signal_deconv[cnt]);
      end;}
   end;
   if repeat_symbol_2 then
   begin
      for cnt:=temp-1 downto 0 do
      begin
         cnt_4:=cnt shl 2;
         decode_conv_repeat_2(
         mil110_signal_deint[cnt_4+3],mil110_signal_deint[cnt_4+2],
         mil110_signal_deint[cnt_4+1],mil110_signal_deint[cnt_4],
         mil110_signal_deconv[cnt{+conv_delay}]);
      end;
{      for cnt:=conv_delay-1 downto 0 do
      begin
         decode_conv_repeat_2(64,64,64,64,mil110_signal_deconv[cnt]);
      end;}
   end;
   if not (repeat_symbol_2 or repeat_symbol_4 or (data_rate=4800)) then
   begin
      for cnt:=temp-1 downto 0 do
      begin
         cnt_2:=cnt shl 1;
         decode_conv(
         mil110_signal_deint[cnt_2+1],mil110_signal_deint[cnt_2],
         mil110_signal_deconv[cnt{+conv_delay}]);
      end;
{      for cnt:=conv_delay-1 downto 0 do
      begin
          decode_conv(64,64,mil110_signal_deconv[cnt]);
      end;}
   end;
   if (data_rate=4800) then
   begin
      for cnt:=temp-1 downto 0 do
      begin
         mil110_signal_deconv[cnt]:=(mil110_signal_deint[cnt]<0);
      end;
   end;
   (*
   if true{test_switch} then
   begin
      wherexy(x,y);
      gotoxy(50,24);
      write(min_distance div 127:6);
      gotoxy(x,y);
   end;
   *)
   too_many_errors:=(min_distance>too_many_errors_thr*127);
end;
procedure start_packet;
begin
   general_reset:=false;
   flag_found:=false;
end;
procedure do_probe;       {train  adaptation }
var cnt:smallint;
begin
   known_data_end:=0;
   train:=true;
   train_counter:=0;
   for cnt:=known_data_number-1 downto 0 do
   begin
      syn_sample_hfdl;
      if false then
      begin
         testchannel:=(testchannel-
         random_shift_array[scramble_counter]-sync_phase) and 7;
         show_ascii_number(testchannel);
         show_ascii(32);
      end;
      inc(scramble_counter);
      if (scramble_counter=160) then scramble_counter:=0;
   end;
   train:=false;
end;
procedure do_probe_end(block_number:smallint);       {train  adaptation }
var cnt:smallint;
    D:smallint;
begin
   train:=true;
   known_data_end:=0;
   if (block_number=1) then D:=D1 else D:=D2;
   for cnt:=known_data_number-1 downto 0 do
   begin
      if (known_data_number=20) then
      begin
         if (D=4) then known_data_end:=D4_template_20[20-cnt];
         if (D=5) then known_data_end:=D5_template_20[20-cnt];
         if (D=6) then known_data_end:=D6_template_20[20-cnt];
         if (D=7) then known_data_end:=D7_template_20[20-cnt];
      end;
      if (known_data_number=16) then
      begin
         if (D=4) then known_data_end:=D4_template_16[16-cnt];
         if (D=5) then known_data_end:=D5_template_16[16-cnt];
         if (D=6) then known_data_end:=D6_template_16[16-cnt];
         if (D=7) then known_data_end:=D7_template_16[16-cnt];
      end;
      syn_sample_hfdl;
      if false then
      begin
         testchannel:=(testchannel-
   random_shift_array[scramble_counter]-sync_phase-known_data_end) and 7;
         show_ascii_number(testchannel);
         show_ascii(32);
      end;
      inc(scramble_counter);
      if (scramble_counter=160) then scramble_counter:=0;
   end;
   train:=false;
   known_data_end:=0;
end;
procedure decode_signal_mil110;
const
    mapping:
    array[0..3] of longint=($00000000,$55555555,$33333333,$66666666);
    mapping_exceptional:
    array[0..3] of longint=($0F0F0F0F,$5A5A5A5A,$3C3C3C3C,$69696969);
var count,counter,ct:smallint;
    cnt:smallint;
    temp:smallint;
    templ,tempr:longint;
    corr:array[0..7] of lcomplex;
    channel:smallint;
begin
   scramble_counter:=0;
   if not n75 then
   begin
      for cnt:=block_number-1 downto 0 do
      begin
         for count:=unknown_data_number-1 downto 0 do
         begin
            syn_sample_hfdl;
            temp:=cnt*unknown_data_number+count;
            mil110_signal_tribit[temp]:=newchannel;
            inc(scramble_counter);
            if (scramble_counter=160) then scramble_counter:=0;
         end;
         if (cnt>1) then do_probe else do_probe_end(cnt);
      end;
   end
   else
   begin
      for cnt:=block_number-1 downto 0 do
      begin
         for ct:=0 to 3 do corr[ct]:=lczero;
         for count:=unknown_data_number-1 downto 0 do
         begin
            syn_sample_hfdl;
            inc(scramble_counter);
            if (scramble_counter=160) then scramble_counter:=0;
            for counter:=0 to 3 do
            begin
               if (cnt=0) then
               begin
                  if not (mapping_exceptional[counter] shr count and 1=1) then
                  begin
                    inc(corr[counter].re,main_psk_rotated.re);
                    inc(corr[counter].im,main_psk_rotated.im);
                  end
                  else
                  begin
                    dec(corr[counter].re,main_psk_rotated.re);
                    dec(corr[counter].im,main_psk_rotated.im);
                  end;
               end
               else
               begin
                  if not (mapping[counter] shr count and 1=1) then
                  begin
                    inc(corr[counter].re,main_psk_rotated.re);
                    inc(corr[counter].im,main_psk_rotated.im);
                  end
                  else
                  begin
                    dec(corr[counter].re,main_psk_rotated.re);
                    dec(corr[counter].im,main_psk_rotated.im);
                  end;
               end;
            end;
         end;
         templ:=0;
         channel:=0;
         for ct:=0 to 3 do
         begin
            tempr:=(corr[ct].re);
            if (tempr>templ) then
            begin
               templ:=tempr;
               channel:=ct;
            end;
         end;
         mil110_signal_tribit[cnt]:=channel*2;
      end;
   end;
end;
procedure system_configuration;
begin
   configuration:=0;
   if (D1=7) and (D2=6) then configuration:=7;
   if (D1=7) and (D2=7) then configuration:=6;
   if (D1=6) and (D2=4) then configuration:=6;
   if (D1=6) and (D2=5) then configuration:=5;
   if (D1=6) and (D2=6) then configuration:=4;
   if (D1=6) and (D2=7) then configuration:=3;
   if (D1=7) and (D2=4) then configuration:=2;
   if (D1=7) and (D2=5) then configuration:=1;
   if (D1=4) and (D2=4) then configuration:=16;
   if (D1=4) and (D2=5) then configuration:=15;
   if (D1=4) and (D2=6) then configuration:=14;
   if (D1=4) and (D2=7) then configuration:=13;
   if (D1=5) and (D2=4) then configuration:=12;
   if (D1=5) and (D2=5) then configuration:=11;
   if mod_spec
   then
   begin
     if (D1=5) and (D2=7) then configuration:=4;
   end;

   short_long_interleave:=not no_interleaver;
end;
procedure set_initial_parameters(config:smallint);
begin
   if (config=0) or (config=1) then
   begin
      short_interleave:=true;
      long_interleave:=false;
      number_of_columns:=9;
      number_of_rows:=10;
      n75:=true;
      interleaving:=true;
      data_rate:=75;
      ary_psk:=2;
      known_data_number:=0;
      unknown_data_number:=32;
      train_20_16:=true;
      number_of_unknown_tribits:=1440;
      number_of_unknown_bits:=number_of_unknown_tribits div 16;
      number_of_deconv_output_bits:=number_of_unknown_bits div 2;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=45;
      repeat_symbol_2:=false;
      repeat_symbol_4:=false;
{      D1:=7;D2:=5;}
  end;
  if (config=2) then
  begin
      short_interleave:=true;
      long_interleave:=false;
      number_of_columns:=18;
      number_of_rows:=40;
      n75:=false;
      interleaving:=true;
      data_rate:=150;
      ary_psk:=2;
      known_data_number:=20;
      unknown_data_number:=20;
      train_20_16:=true;
      number_of_unknown_tribits:=720;
      number_of_unknown_bits:=number_of_unknown_tribits;
      number_of_deconv_output_bits:=number_of_unknown_bits div 8;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=36;
      repeat_symbol_2:=false;
      repeat_symbol_4:=true;
{      D1:=7;D2:=4;}
   end;
   if (config=3) then
   begin
      short_interleave:=true;
      long_interleave:=false;
      number_of_columns:=18;
      number_of_rows:=40;
      n75:=false;
      interleaving:=true;
      data_rate:=300;
      ary_psk:=2;
      known_data_number:=20;
      unknown_data_number:=20;
      train_20_16:=true;
      number_of_unknown_tribits:=720;
      number_of_unknown_bits:=number_of_unknown_tribits;
      number_of_deconv_output_bits:=number_of_unknown_bits div 4;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=36;
      repeat_symbol_2:=true;
      repeat_symbol_4:=false;
{      D1:=6;D2:=7;  }
   end;
   if (config=4) then
   begin
      short_interleave:=true;
      long_interleave:=false;
      number_of_columns:=18;
      number_of_rows:=40;
      n75:=false;
      interleaving:=true;
      data_rate:=600;
      ary_psk:=2;
      known_data_number:=20;
      unknown_data_number:=20;
      train_20_16:=true;
      number_of_unknown_tribits:=720;
      number_of_unknown_bits:=number_of_unknown_tribits;
      number_of_deconv_output_bits:=number_of_unknown_bits div 2;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=36;
      repeat_symbol_2:=false;
      repeat_symbol_4:=false;
 {     D1:=6;D2:=6;}
   end;
   if (config=5) then
   begin
      short_interleave:=true;
      long_interleave:=false;
      number_of_columns:=36;
      number_of_rows:=40;
      n75:=false;
      interleaving:=true;
      data_rate:=1200;
      ary_psk:=4;
      known_data_number:=20;
      unknown_data_number:=20;
      train_20_16:=true;
      number_of_unknown_tribits:=720;
      number_of_unknown_bits:=number_of_unknown_tribits*2;
      number_of_deconv_output_bits:=number_of_unknown_bits div 2;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=36;
      repeat_symbol_2:=false;
      repeat_symbol_4:=false;
{      D1:=6;D2:=5;  }
   end;
   if (config=6) then
   begin
      short_interleave:=true;
      long_interleave:=false;
      number_of_columns:=72;
      number_of_rows:=40;
      n75:=false;
      interleaving:=true;
      data_rate:=2400;
      ary_psk:=8;
      known_data_number:=16;
      unknown_data_number:=32;
      train_20_16:=false;
      number_of_unknown_tribits:=960;{720*4 div 3;}
      number_of_unknown_bits:=number_of_unknown_tribits*3;
      number_of_deconv_output_bits:=number_of_unknown_bits div 2;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=30;
      repeat_symbol_2:=false;
      repeat_symbol_4:=false;
 {     D1:=6;D2:=4;}
   end;
   if (config=7) then
   begin
      short_interleave:=true;
      long_interleave:=false;
      number_of_columns:=72;
      number_of_rows:=40;
      n75:=false;
      interleaving:=false;
      data_rate:=4800;
      ary_psk:=8;
      known_data_number:=16;
      unknown_data_number:=32;
      train_20_16:=false;
      number_of_unknown_tribits:=960;{720*4 div 3;}
      number_of_unknown_bits:=number_of_unknown_tribits*3;
      number_of_deconv_output_bits:=number_of_unknown_bits;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=30;
      repeat_symbol_2:=false;
      repeat_symbol_4:=false;
{      D1:=7;D2:=6;  }
   end;
   if (config=11) then
   begin
      short_interleave:=false;
      long_interleave:=true;
      number_of_columns:=36;
      number_of_rows:=20;
      n75:=true;
      interleaving:=true;
      data_rate:=75;
      ary_psk:=2;
      known_data_number:=0;
      unknown_data_number:=32;
      train_20_16:=true;
      number_of_unknown_tribits:=11520;
      number_of_unknown_bits:=number_of_unknown_tribits div 16;
      number_of_deconv_output_bits:=number_of_unknown_bits div 2 ;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=360;
      repeat_symbol_2:=false;
      repeat_symbol_4:=false;
 {     D1:=5;D2:=5;}
   end;
   if (config=12) then
   begin
      short_interleave:=false;
      long_interleave:=true;
      number_of_columns:=144;
      number_of_rows:=40;
      n75:=false;
      interleaving:=true;
      data_rate:=150 ;
      ary_psk:=2;
      known_data_number:=20;
      unknown_data_number:=20;
      train_20_16:=true;
      number_of_unknown_tribits:=5760;
      number_of_unknown_bits:=number_of_unknown_tribits;
      number_of_deconv_output_bits:=number_of_unknown_bits div 8;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=288;
      repeat_symbol_2:=false;
      repeat_symbol_4:=true;
{      D1:=5;D2:=4;  }
   end;
   if (config=13) then
   begin
      short_interleave:=false;
      long_interleave:=true;
      number_of_columns:=144;
      number_of_rows:=40;
      n75:=false;
      interleaving:=true;
      data_rate:=300;
      ary_psk:=2;
      known_data_number:=20;
      unknown_data_number:=20;
      train_20_16:=true;
      number_of_unknown_tribits:=5760;
      number_of_unknown_bits:=number_of_unknown_tribits;
      number_of_deconv_output_bits:=number_of_unknown_bits div 4;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=288;
      repeat_symbol_2:=true;
      repeat_symbol_4:=false;
 {     D1:=4;D2:=7;}
   end;
   if (config=14) then
   begin
      too_many_errors_thr:=100;
      short_interleave:=false;
      long_interleave:=true;
      number_of_columns:=144;
      number_of_rows:=40;
      n75:=false;
      interleaving:=true;
      data_rate:=600;
      ary_psk:=2;
      known_data_number:=20;
      unknown_data_number:=20;
      train_20_16:=true;
      number_of_unknown_tribits:=5760;
      number_of_unknown_bits:=number_of_unknown_tribits;
      number_of_deconv_output_bits:=number_of_unknown_bits div 2;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=288;
      repeat_symbol_2:=false;
      repeat_symbol_4:=false;
{      D1:=4;D2:=6;  }
   end;
   if (config=15) then
   begin
      short_interleave:=false;
      long_interleave:=true;
      number_of_columns:=288;
      number_of_rows:=40;
      n75:=false;
      interleaving:=true;
      data_rate:=1200;
      ary_psk:=4;
      known_data_number:=20;
      unknown_data_number:=20;
      train_20_16:=true;
      number_of_unknown_tribits:=5760;
      number_of_unknown_bits:=number_of_unknown_tribits*2;
      number_of_deconv_output_bits:=number_of_unknown_bits div 2;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=288;
      repeat_symbol_2:=false;
      repeat_symbol_4:=false;
 {     D1:=4;D2:=5;}
   end;
   if (config=16) then
   begin
      short_interleave:=false;
      long_interleave:=true;
      number_of_columns:=576;
      number_of_rows:=40;
      n75:=false;
      interleaving:=true;
      data_rate:=2400;
      ary_psk:=8;
      known_data_number:=16;
      unknown_data_number:=32;
      train_20_16:=false;
      number_of_unknown_tribits:=7680;{5760*2*2 div 3;}
      number_of_unknown_bits:=number_of_unknown_tribits*3;
      number_of_deconv_output_bits:=number_of_unknown_bits div 2;
      number_of_bytes:=number_of_deconv_output_bits div 8;
      block_number:=240;
      repeat_symbol_2:=false;
      repeat_symbol_4:=false;
{      D1:=4;D2:=4;  }
   end;
   if not short_long_interleave then
   begin
      if short_interleave then interleaving:=false;
   end;
   too_many_errors_thr:=number_of_unknown_bits div 8;
end;
procedure show_data_rate;
begin
   correct_configuration:=false;
if not suppress_start_details then show_ascii(32);
if not suppress_start_details then show_ascii_string('DATA RATE ');
   if (configuration=0) then
   begin
if not suppress_start_details then  show_ascii_string(' ERROR ');
if not suppress_start_details then  show_ascii(13);
if not suppress_start_details then  show_ascii(10);
      exit;
      Interleave_string:='Error';
   end;
   if (configuration=1) then
   begin
if not suppress_start_details then  show_ascii_string('75');
      if short_long_interleave then
      begin
if not suppress_start_details then  show_ascii_string('  SHORT INTERLEAVER ');
      Interleave_string:=' 75 bd Short';
      end else
      begin
if not suppress_start_details then show_ascii_string('  ZERO INTERLEAVER ');
      Interleave_string:=' 75 bd Zero';
      end;
   end;
   if (configuration=2) then
   begin
if not suppress_start_details then show_ascii_string('150');
      if short_long_interleave then
      begin
if not suppress_start_details then  show_ascii_string('  SHORT INTERLEAVER ');
      Interleave_string:=' 150 bd Short';
      end else
      begin
if not suppress_start_details then show_ascii_string('  ZERO INTERLEAVER ');
      Interleave_string:=' 150 bd Zero';
      end;
   end;
   if (configuration=3) then
   begin
if not suppress_start_details then show_ascii_string('300');
      if short_long_interleave then
      begin
      Interleave_string:=' 300 bd Short';
if not suppress_start_details then show_ascii_string('  SHORT INTERLEAVER ');
      end else
      begin
if not suppress_start_details then show_ascii_string('  ZERO INTERLEAVER ');
      Interleave_string:=' 300 bd Zero';
      end;
   end;
   if (configuration=4) then
   begin
if not suppress_start_details then show_ascii_string('600');
      if short_long_interleave then
      begin
if not suppress_start_details then show_ascii_string('  SHORT INTERLEAVER ');
      Interleave_string:=' 600 bd Short';
      end else
      begin
if not suppress_start_details then show_ascii_string('  ZERO INTERLEAVER ');
      Interleave_string:=' 600 bd Zero';
      end;
   end;
   if (configuration=5) then
   begin
if not suppress_start_details then show_ascii_string('1200');
      if short_long_interleave then
      begin
if not suppress_start_details then  show_ascii_string('  SHORT INTERLEAVER ');
      Interleave_string:=' 1200 bd Short';
      end else
      begin
if not suppress_start_details then show_ascii_string('  ZERO INTERLEAVER ');
      Interleave_string:=' 1200 bd Zero';
      end;
   end;
   if (configuration=6) then
   begin
if not suppress_start_details then show_ascii_string('2400');
      if short_long_interleave then
      begin
if not suppress_start_details then show_ascii_string('  SHORT INTERLEAVER ');
      Interleave_string:=' 2400 bd Short';
      end else
      begin
if not suppress_start_details then show_ascii_string('  ZERO INTERLEAVER ');
      Interleave_string:=' 2400 bd Zero';
      end;
   end;
   if (configuration=7) then
   begin
if not suppress_start_details then show_ascii_string('4800');
if not suppress_start_details then show_ascii_string('  ZERO INTERLEAVER ');
      Interleave_string:=' 4800 bd Zero';
   end;
   if (configuration=11) then
   begin
if not suppress_start_details then show_ascii_string('75');
if not suppress_start_details then show_ascii_string('  LONG INTERLEAVER ');
      Interleave_string:=' 75 bd Long';
   end;
   if (configuration=12) then
   begin
if not suppress_start_details then show_ascii_string('150');
if not suppress_start_details then show_ascii_string('  LONG INTERLEAVER ');
      Interleave_string:=' 150 bd Long';
   end;
   if (configuration=13) then
   begin
if not suppress_start_details then show_ascii_string('300');
if not suppress_start_details then show_ascii_string('  LONG INTERLEAVER ');
      Interleave_string:=' 300 bd Long';
   end;
   if (configuration=14) then
   begin
if not suppress_start_details then show_ascii_string('600');
if not suppress_start_details then  show_ascii_string('  LONG INTERLEAVER ');
      Interleave_string:=' 600 bd Long';
   end;
   if (configuration=15) then
   begin
if not suppress_start_details then show_ascii_string('1200');
if not suppress_start_details then show_ascii_string('  LONG INTERLEAVER ');
      Interleave_string:=' 1200 bd Long';
   end;
   if (configuration=16) then
   begin
if not suppress_start_details then show_ascii_string('2400');
if not suppress_start_details then show_ascii_string('  LONG INTERLEAVER ');
      Interleave_string:=' 2400 bd Long';
   end;
if not suppress_start_details then show_ascii(13);
if not suppress_start_details then show_ascii(10);
   correct_configuration:=true;
end;
function test_sync_preamble:boolean;
var ct,cnt,count,counter:smallint;
    temp:smallint;
    matchs:array[0..7] of smallint;
    found:smallint;
    tempb:boolean;
begin
   if false then
   begin
      show_ascii(32);
   end;
   for cnt:=5 downto 1 do
   begin
      for ct:=0 to 7 do matchs[ct]:=0;
      for count:=0 to 31 do
      begin
         tempb:=(symbol_tor[(cnt shl 5)+31-count]=0);
         for counter:=0 to 7 do
         begin
            if sync_template[counter,count] xor tempb then
            inc(matchs[counter]);
         end;
      end;
      temp:=0;
      found:=0;
      for counter:=0 to 7 do
      begin
         if (matchs[counter]>temp) then
         begin
            temp:=matchs[counter];
            found:=counter;
         end;
      end;
      if (cnt=5) then D1:=found;
      if (cnt=4) then D2:=found;
      if (cnt=3) then C1:=found;
      if (cnt=2) then C2:=found;
      if (cnt=1) then C3:=found;
   end;
   segment_counter:=(C1 and 3)*16 + (C2 and 3)*4 + (C3 and 3);
   sync_error:=(D1<4) or (D2<4) or (C1<4) or (C2<4) or (C3<4);
   if (segment_counter>23) then sync_error:=true;
   if ((D1=6) or (D1=7)) and (segment_counter>2) then sync_error:=true;
   if not sync_error and true then
   begin
{      show_ascii_string(' D,C ');
      show_ascii_number(sync_phase);
      show_ascii(32);
      show_ascii(32);
      show_ascii(32);
      show_ascii_number(D1);
      show_ascii(32);
      show_ascii_number(D2);
      show_ascii(32);
      show_ascii_number(C1);
      show_ascii(32);
      show_ascii_number(C2);
      show_ascii(32);
      show_ascii_number(C3);
      show_ascii(32);
      show_ascii_string(' Pream ');
      show_ascii(32); }
      if not suppress_start_details then show_ascii_number(segment_counter);
      show_ascii(32);
      sync_error_counter:=0;
   end
   else
   begin
   Interleave_string:='Sync Error';
////      show_ascii_string('s error ');
   end;
   if sync_error then inc(sync_error_counter,400);
   test_sync_preamble:=not sync_error;
end;
procedure find_sync_preamble;
var cnt,counter:smallint;
begin
   for counter:=0 to 40 do forward_filter[counter]:=czero;
   for counter:=0 to 10 do dfe_filter[counter]:=lczero;
   forward_filter[20].re:=4000;{8000;}
   offset_freq:=0;
   sync:=false;
   train:=false;
   ary_psk:=8;
   known_data_end:=0;
   known_sequence:=false;
   sync_error_counter:=0;
   test_sync;
   arg_phase:=0;
   if not stopping
   then
   begin
     repeat
     begin
       repeat
       begin
         ary_psk:=2;
         for cnt:=479 downto 0 do
         begin
               known_sequence:=(cnt>191) or (cnt<32);
               sync_counter:=cnt;
               syn_sample_hfdl;
               symbol_tor[cnt]:=newchannel;
         end;
         preamble_found:=test_sync_preamble;
       end;
       until not (preamble_found and (segment_counter<>0));
     end;
     until stopping or (sync_error_counter>1200) or (segment_counter=0);
     ary_psk:=8;
     show_ascii(13);
     show_ascii(10);
     sync:=preamble_found and (segment_counter=0);
   end;
end;
procedure modified_gray_decode;
var ct,cnt,count,counter:smallint;
    temp:smallint;
    temp_channel:smallint;
    temp_result:smallint;
begin
   if (data_rate=4800) or (data_rate=2400) then
   begin
      for cnt:=number_of_unknown_tribits-1 downto 0 do
      begin
         temp_channel:=mil110_signal_tribit[cnt];
         temp:=cnt*3;
         if (temp_channel and 4=4) then mil110_signal_int[temp+2]:=-64
         else mil110_signal_int[temp+2]:=64;
         if (temp_channel and 2=2) then mil110_signal_int[temp+1]:=-64
         else mil110_signal_int[temp+1]:=64;
         if (temp_channel and 1=1) then mil110_signal_int[temp]:=-64
         else mil110_signal_int[temp]:=64;
         if (mil110_signal_int[temp+2]<0) then
         begin
            mil110_signal_int[temp+1]:=-mil110_signal_int[temp+1];
            mil110_signal_int[temp+0]:=-mil110_signal_int[temp+0];
         end;
         if (mil110_signal_int[temp+1]<0) then
         begin
            mil110_signal_int[temp+0]:=-mil110_signal_int[temp+0];
         end;
      end;
   end;
   if (data_rate=1200) then
   begin
      for cnt:=number_of_unknown_tribits-1 downto 0 do
      begin
         temp_channel:=mil110_signal_tribit[cnt];
         temp:=cnt*2;
         if (temp_channel and 4=4) then
         begin
            mil110_signal_int[temp+1]:=-64;
            if (temp_channel and 2=2) then mil110_signal_int[temp]:=64
            else mil110_signal_int[temp]:=-64;
         end
         else
         begin
            mil110_signal_int[temp+1]:=64;
            if (temp_channel and 2=2) then mil110_signal_int[temp]:=-64
            else mil110_signal_int[temp]:=64;
         end;
      end;
   end;
   if (data_rate=600) or (data_rate=300) or (data_rate=150) then
   begin
      for cnt:=number_of_unknown_tribits-1 downto 0 do
      begin
         temp_channel:=mil110_signal_tribit[cnt];
         temp:=cnt;
         if (temp_channel and 4=4) then mil110_signal_int[temp]:=-64
         else mil110_signal_int[temp]:=64;
      end;
   end;
   if (data_rate=75){n75} then
   begin
      for cnt:=(number_of_unknown_tribits div 32)-1 downto 0 do
      begin
         temp_channel:=mil110_signal_tribit[cnt];
         temp:=cnt*2;
         if (temp_channel and 4=4) then
         begin
            mil110_signal_int[temp+1]:=-64;
            if (temp_channel and 2=2) then mil110_signal_int[temp]:=64
            else mil110_signal_int[temp]:=-64;
         end
         else
         begin
            mil110_signal_int[temp+1]:=64;
            if (temp_channel and 2=2) then mil110_signal_int[temp]:=-64
            else mil110_signal_int[temp]:=64;
         end;
      end;
   end;
end;

procedure show_mil110_symbol_tribit;
var cnt,count:smallint;
begin
   show_ascii(13);
   show_ascii(10);
   show_ascii_string('tribit');
   show_ascii(13);
   show_ascii(10);
   for cnt:=number_of_unknown_tribits-1 downto 0 do
   begin
      show_ascii_number(mil110_signal_tribit[cnt]);
      if (cnt mod 60=0) then show_ascii(13);
   end;
   show_ascii(13);
   show_ascii(10);
end;
procedure show_mil110_symbol_int;
var cnt,count:smallint;
begin
      if Code3MainForm.BitstreamSocket.Socket.ActiveConnections > 0
      then
      begin
        // Zijn wij aan het streamen ??
        if BitStreamBufferUser = Choice then
        begin
          BSBWriteIndex:=0;
          for cnt:=number_of_unknown_bits-1 downto 0 do
          begin
            BitAccu:=BitAccu shl 1;
            if (mil110_signal_int[cnt]<0) then
            begin
              BitAccu:= BitAccu or 1;
            end;
            Inc(BitAccuBitCount);
            if (BitAccuBitCount = 8) then
            begin
              BitStreamBuffer[BSBWriteIndex]:=BitAccu;
              Inc(BSBWriteIndex);
              BitAccu:=0;
              BitAccuBitCount:=0;
            end;
          end;
           if Code3MainForm.BitstreamSocket.Socket.ActiveConnections > 0
          then
          begin
            Code3MainForm.BitstreamSocket.Socket.Connections[0].SendBuf(BitStreamBuffer[0],BSBWriteIndex-1);
          end;
        end;
      end
      else
      begin
        BitStreamBufferUser := 0;
        Form78.ToolButton13.Down:=False;
      end;
end;
procedure deinterleave;
var cnt:smallint;
    row,column,old_column:smallint;
    interleave_matrix:array[0..40,0..576] of shortint;
begin
   if interleaving then
   begin {load}
      row:=0;
      column:=0;
      old_column:=0;
      for cnt:=number_of_unknown_bits-1 downto 0 do
      begin
         interleave_matrix[row,column]:=mil110_signal_int[cnt];
         inc(row);
         if (row=number_of_rows) then
         begin
            row:=0;
            inc(old_column);
            column:=old_column;
         end
         else
         begin
            if n75 then dec(column,7) else dec(column,17);
            if (column<0) then inc(column,number_of_columns);
         end;
      end;
      {unload}
      row:=0;
      column:=0;
      for cnt:=number_of_unknown_bits-1 downto 0 do
      begin
         mil110_signal_deint[cnt]:=interleave_matrix[row,column];
         if n75 then inc(row,7) else inc(row,9);
         if (row>=number_of_rows) then
         begin
            dec(row,number_of_rows);
            if (row=0) then inc(column);
         end;
      end;
   end
   else
   begin {no interleaving}
      mil110_signal_deint:=mil110_signal_int;
   end;
end;
function hex(z:integer):string;
begin
   z:=z and $F;
   if (z<10) then hex:=chr(z+48) else hex:=chr(z+55);
end;

procedure show_mil110_symbol_deint;
var bin,bin1,bin2,bin3,bin4,cnt:smallint;
temp_str:string;
begin
 if show_hex_deint then
  begin
  for cnt:=number_of_unknown_bits-1 downto 0 do
    begin
       if (mil110_signal_deint[cnt]<0) then
       temp_str:=temp_str+'0' else temp_str:=temp_str+'1';
       if cnt mod 4=0 then
        begin
   if mirrored then
       begin
        if (temp_str[number_of_unknown_bits-cnt-3])='1' then bin1:=1 else bin1:=0;
        if (temp_str[number_of_unknown_bits-cnt-2])='1' then bin2:=2 else bin2:=0;
        if (temp_str[number_of_unknown_bits-cnt-1])='1' then bin3:=4 else bin3:=0;
        if (temp_str[number_of_unknown_bits-cnt-0])='1' then bin4:=8 else bin4:=0;
       end else
       begin
        if (temp_str[number_of_unknown_bits-cnt-3])='1' then bin1:=8 else bin1:=0;
        if (temp_str[number_of_unknown_bits-cnt-2])='1' then bin2:=4 else bin2:=0;
        if (temp_str[number_of_unknown_bits-cnt-1])='1' then bin3:=2 else bin3:=0;
        if (temp_str[number_of_unknown_bits-cnt-0])='1' then bin4:=1 else bin4:=0;
       end;
        bin:=bin1+bin2+bin3+bin4;
        show_ascii_string(Hex(bin));
        end;
     end;
   temp_str:='';
  end;    ////show_hex
      if Code3MainForm.BitstreamSocket.Socket.ActiveConnections > 0
      then
      begin
        // Zijn wij aan het streamen ??
        if BitStreamBufferUser = Choice then
        begin
          BSBWriteIndex:=0;
          for cnt:=number_of_unknown_bits-1 downto 0 do
          begin
            BitAccu:=BitAccu shl 1;
            if (mil110_signal_deint[cnt]<0) then
            begin
              BitAccu:= BitAccu or 1;
            end;
            Inc(BitAccuBitCount);
            if (BitAccuBitCount = 8) then
            begin
              BitStreamBuffer[BSBWriteIndex]:=BitAccu;
              Inc(BSBWriteIndex);
              BitAccu:=0;
              BitAccuBitCount:=0;
            end;
          end;
           if Code3MainForm.BitstreamSocket.Socket.ActiveConnections > 0
          then
          begin
            Code3MainForm.BitstreamSocket.Socket.Connections[0].SendBuf(BitStreamBuffer[0],BSBWriteIndex-1);
          end;
        end;
      end
      else
      begin
        BitStreamBufferUser := 0;
        Form78.ToolButton13.Down:=False;
      end;
end;
procedure show_mil110_symbol_deconv;
var cnt,count:smallint;
begin
      if Code3MainForm.BitstreamSocket.Socket.ActiveConnections > 0
      then
      begin
        // Zijn wij aan het streamen ??
        if BitStreamBufferUser = Choice then
        begin
          BSBWriteIndex:=0;
          for cnt:=number_of_deconv_output_bits-1 downto 0 do
          begin
            BitAccu:=BitAccu shl 1;
            if mil110_signal_deconv[cnt] then
            begin
              BitAccu:= BitAccu or 1;
            end;
            Inc(BitAccuBitCount);
            if (BitAccuBitCount = 8) then
            begin
              BitStreamBuffer[BSBWriteIndex]:=BitAccu;
              Inc(BSBWriteIndex);
              BitAccu:=0;
              BitAccuBitCount:=0;
            end;
          end;
           if Code3MainForm.BitstreamSocket.Socket.ActiveConnections > 0
          then
          begin
            Code3MainForm.BitstreamSocket.Socket.Connections[0].SendBuf(BitStreamBuffer[0],BSBWriteIndex-1);
          end;
        end;
      end
      else
      begin
        BitStreamBufferUser := 0;
        Form78.ToolButton13.Down:=False;
      end;
end;
procedure show_symbol_mil110;
var cnt,count:smallint;
begin
   for count:=0 to number_of_bytes-1 do
   begin
      if (count mod 5=0) then show_ascii(13);
      show_ascii_number(count);
      show_ascii(32);
      for cnt:= 7 downto 0 do
      begin
         if symbol_mil110[count] shr cnt and 1=1  then
         show_ascii(ord('1')) else show_ascii(ord('0'));
      end;
      show_ascii(32);
   end;
end;
procedure make_symbol_mil110;
var cnt,count:smallint;
    temp:smallint;
begin
   for count:=0 to (number_of_deconv_output_bits div 10)-1 do
   begin
      symbol_mil110[count]:=0;
      temp:=number_of_deconv_output_bits-1-(count)*10;
      for cnt:=0 to 7 do
      begin
         if mil110_signal_deconv[temp-cnt] then
         symbol_mil110[count]:=symbol_mil110[count] or ($1 shl cnt);
      end;
   end
end;
function test_eom(pos:smallint):boolean;
const
  eom_message=$4B65A5B2;
var
  cnt:smallint;
  templ:Cardinal;
begin
   templ:=0;
   for cnt:=0 to 31 do
   begin
     if mil110_signal_deconv[pos-cnt] then templ:=templ or ($80000000 shr cnt);
   end;
   templ:=templ xor eom_message;
   if (templ=0)
{   or (templ=$80000000) or (templ=$40000000)
   or (templ=$20000000) or (templ=$10000000)
   or (templ=$08000000) or (templ=$04000000)
   or (templ=$02000000) or (templ=$01000000)
   or (templ=$00800000) or (templ=$00400000)
   or (templ=$00200000) or (templ=$00100000)
   or (templ=$00080000) or (templ=$00040000)
   or (templ=$00020000) or (templ=$00010000)
   or (templ=$00008000) or (templ=$00040000)
   or (templ=$00002000) or (templ=$00001000)
   or (templ=$00000800) or (templ=$00000400)
   or (templ=$00000200) or (templ=$00000100)
   or (templ=$00000080) or (templ=$00000040)
   or (templ=$00000020) or (templ=$00000010)
   or (templ=$00000008) or (templ=$00000004)
   or (templ=$00000002) or (templ=$00000001)}
   then
   begin
      test_eom:=true;
      show_ascii(13);
      show_ascii(10);
      if not EOMinhibit then show_ascii_string('[EOM]');
      //Mil110Thread.synchronize(Mil110Thread.status);
      show_ascii(13);
      show_ascii(10);
   end
   else
   begin
      test_eom:=false;
   end;
end;
procedure show_output;
var cnt:smallint;
    temp:byte;
begin
{   show_ascii(13);}
   for cnt:=0 to (number_of_deconv_output_bits div 10)-1 do
   begin
      show_ascii(symbol_mil110[cnt] {and 127});
{      temp:=mirror_b(symbol_mil110[cnt]);
      show_ascii(temp and 127);}
   end;
   show_ascii(13);
   show_ascii(10);
end;
function ConvertToBinaryString(AValue : SmallInt ; NumberOfBits : SmallInt): String;
var
  i : Integer;
  TempStr     : String[16];
begin
TempStr:='';
  if (NumberOfBits > 0) and (NumberOfBits < 17)
  then
  begin
    for i:=1 to NumberOfBits  do
    begin
      if (AValue and 1) > 0
      then
      begin
        TempStr:='1' + TempStr;
      end
      else
      begin
        TempStr:='0' + TempStr;
      end;
      AValue:=AValue shr 1;
    end;
    ConvertToBinaryString:=TempStr;
  end;
end;

procedure show_output_VT100;
var cnt,count,temp:smallint;
    stop_bits_number:smallint;
    parity:boolean;
    start_stop_bits:boolean;
    bits_5,bits_7,bits_8:boolean;
begin
   start_error_counter:=2;
   stop_error_counter:=1;
   start_stop_bits:=true;
   parity:=terminal_parity;
   stop_bits_number:=terminal_stop_bits_number;
   bits_5:=(terminal_data_bits_number=5);
   bits_7:=(terminal_data_bits_number=7);
   bits_8:=(terminal_data_bits_number=8);
   cnt:=number_of_deconv_output_bits-1+output_counter;
   while (cnt>10) do
   begin
      for count:=0 to 10 do
      begin
         if ((cnt+count)>31) then
         begin
            if test_eom(cnt+count) and not EOMinhibit then
            begin
               EOM:=true;
               //Mil110Thread.synchronize(Mil110Thread.status);
               exit;
            end;
         end;
      end;
  if Add_LF then
   begin
   show_ascii(13);
   Add_LF:=false;
   end;
  if Add_Space then
   begin
   show_ascii(32);
   Add_Space:=false;
   end;
      if not (mil110_signal_deconv[cnt]) then
      begin
         dec(cnt);
         temp:=0;
         if bits_8 then
         begin
            for count:=0 to 7 do
         if mil110_signal_deconv[cnt-count] then temp:=temp or ($1 shl count);
            dec(cnt,8);
         end
         else
         if bits_7 then
         begin
            for count:=0 to 6 do
       if mil110_signal_deconv[cnt-count] then temp:=temp or ($1 shl count);
            dec(cnt,7);
         end
         else
         begin
            for count:=0 to 4 do
       if mil110_signal_deconv[cnt-count] then temp:=temp or ($1 shl count);
            dec(cnt,5);
         end;
         if bits_7 or bits_8 then
         begin
         if mirrored then show_ascii(mirror_b(temp)) else show_ascii(temp);
///         show_ascii(temp);
         end else
         begin
         if mirrored then show(temp) else show(mirror_b(temp shl 3));
///         show(temp);
         end;
         if parity then dec(cnt);
         if mil110_signal_deconv[cnt] then stop_error_counter:=0
         else inc(stop_error_counter);
         if (stop_error_counter>0) then
         begin
            while (not (mil110_signal_deconv[cnt] and not mil110_signal_deconv[cnt-1])
                   and (cnt>10)) do dec(cnt);
            stop_error_counter:=0;
         end;
         dec(cnt,stop_bits_number);{dit is het stopbit }
      end
      else
      begin
         dec(cnt);{hier wachten op het startbit}
      end;
   end;
   output_counter:=cnt+1; {!!!}{this is correct,use your BRAINS}
   move(mil110_signal_deconv[0],
   mil110_signal_deconv[number_of_deconv_output_bits],11);
end;

procedure show_output_synchrone_5;
var cnt,count,temp:integer;
begin
   if bitshifted
   then
   begin
    output_counter:=output_counter+1+bitshift;/////////////////!!toegevoegd   horst
    bitshift:=0;
   end;
   cnt:=number_of_deconv_output_bits-1+output_counter;
   while (cnt>10) do
   begin
      for count:=0 to 10 do
      begin
         if ((cnt+count)>31) then
         begin
            if test_eom(cnt+count) and not EOMinhibit then
            begin
               EOM:=true;
               exit;
            end;
         end;
      end;
     if Add_LF then
     begin
     show_ascii(13);
     Add_LF:=false;
     end;
    if Add_Space then
     begin
     show_ascii(32);
     Add_Space:=false;
     end;
      if true then///////not (mil110_signal_deconv[cnt]) then
      begin
      /////////   dec(cnt);  startbit
         temp:=0;
         begin
         for count:=0 to 4 do                             ////$10 shr  $1 shl
         if mil110_signal_deconv[cnt-count] then temp:=temp or ($1 shl count);
         dec(cnt,5);
         end;
//         show(temp);
         if mirrored then show(temp) else show(mirror_b(temp shl 3));
      end
      else
      begin
         dec(cnt);
      end;
   end;
  if bitshifted then output_counter:=cnt else output_counter:=cnt+1; {!!!+1 }{this is correct,use your BRAINS}
   move(mil110_signal_deconv[0],
   mil110_signal_deconv[number_of_deconv_output_bits],41); ///41
end;

procedure show_output_synchrone;
var cnt,count,temp,temp_count:integer;
temp_str:string;
i,bin,binA,bin1,bin2,bin3,bin4:smallint;
begin
   bits_5:=(terminal_data_bits_number=5);
   bits_7:=(terminal_data_bits_number=7);
   bits_8:=(terminal_data_bits_number=8);

   if bitshifted then
   begin
    output_counter:=output_counter+1+bitshift;/////////////////!!toegevoegd   horst
    bitshift:=0;
   end;
   cnt:=number_of_deconv_output_bits-1+output_counter;
   while (cnt>10) do  ////////////10
   begin
      for count:=0 to 10 do
      begin
         if ((cnt+count)>31) then
         begin
            if test_eom(cnt+count) and not EOMinhibit then
            begin
               EOM:=true;
               exit;
            end;
         end;
      end;
         if Add_LF then
         begin
         show_ascii(13);
         Add_LF:=false;
         end;
         if Add_Space then
         begin
         show_ascii(32);
         Add_Space:=false;
         end;

            temp:=0;
            if  bits_7 then
            begin
            for count:=0 to 6 do
            if mil110_signal_deconv[cnt-count] then temp:=temp or ($1 shl count);
            end else
            if bits_8 then
            begin
            for count:=0 to 7 do
            if mil110_signal_deconv[cnt-count] then temp:=temp or ($1 shl count);
            end else
            if bits_5 then
            begin
            for count:=0 to 4 do
            if mil110_signal_deconv[cnt-count] then temp:=temp or ($1 shl count);
            end;


        bin:=0;
        temp_str:='';
        for count:=7 downto 0 do
        if mil110_signal_deconv[cnt-count] then temp_str:=temp_str+'1' else temp_str:=temp_str+'0';
     if mirrored then
          begin
           if (temp_str[1])='1' then bin1:=8 else bin1:=0;
           if (temp_str[2])='1' then bin2:=4 else bin2:=0;
           if (temp_str[3])='1' then bin3:=2 else bin3:=0;
           if (temp_str[4])='1' then bin4:=1 else bin4:=0;
            bin:=bin1+bin2+bin3+bin4;
           if (temp_str[5])='1' then bin1:=8 else bin1:=0;
           if (temp_str[6])='1' then bin2:=4 else bin2:=0;
           if (temp_str[7])='1' then bin3:=2 else bin3:=0;
           if (temp_str[8])='1' then bin4:=1 else bin4:=0;
            binA:=bin1+bin2+bin3+bin4;
          end else
          begin
           if (temp_str[1])='1' then bin1:=1 else bin1:=0;
           if (temp_str[2])='1' then bin2:=2 else bin2:=0;
           if (temp_str[3])='1' then bin3:=4 else bin3:=0;
           if (temp_str[4])='1' then bin4:=8 else bin4:=0;
            bin:=bin1+bin2+bin3+bin4;
           if (temp_str[5])='1' then bin1:=1 else bin1:=0;
           if (temp_str[6])='1' then bin2:=2 else bin2:=0;
           if (temp_str[7])='1' then bin3:=4 else bin3:=0;
           if (temp_str[8])='1' then bin4:=8 else bin4:=0;
            binA:=bin1+bin2+bin3+bin4;
          end;
          if bits_7 then
          dec(cnt,7) else
          if bits_8 then
          dec(cnt,8) else
          if bits_5 then
          dec(cnt,5);
          if show_hex then
         begin
         show_ascii_string(Hex(bin));
         show_ascii_string(Hex(binA));
         show_ascii_string(' ');
         end else
         if Show_Binary then show_ascii_string(temp_str) else
         if mirrored then show_ascii(mirror_b(temp)) else show_ascii(temp);
   end;
   if bitshifted then output_counter:=cnt else output_counter:=cnt+1;
   move(mil110_signal_deconv[0],
   mil110_signal_deconv[number_of_deconv_output_bits],11);
end;                                                   ////11

procedure print_mil110;
var
  cnt : Integer;
begin
   begin
      sync:=false;
      EOM:=false;
      TOO_MANY_ERRORS:=false;
   end;
   find_sync_preamble;
   if not stopping and sync then
   begin
      system_configuration;
      set_initial_parameters(configuration);
      show_data_rate; // produceert nogal veel output,kan probleem zijn vanwege msgbuffer overflow
      output_counter:=0;
     if not (data_rate=4800) then output_counter:=-31;//-31;{skip first 31 bits}
      inittrellis;
   end;
   while not (stopping or (EOM and not EOMinhibit) or TOO_MANY_ERRORS or
              not correct_configuration or not sync) do
   begin
      begin
         sync:=true;
      end;
      decode_signal_mil110;
      modified_gray_decode;
      deinterleave;
      inittrellis_metric;
      deconvolution;
//new

      if deconv then show_mil110_symbol_deconv;
      if show_hex_deint then deint:=true;
      if deint then show_mil110_symbol_deint;
      if int then show_mil110_symbol_int;
      if sym then
      begin
      make_symbol_mil110;
      show_symbol_mil110;
      end;
       If TransmissionIsInverted
       then
       begin
         for cnt:=number_of_deconv_output_bits-1 downto 0 do
         begin
           mil110_signal_deconv[cnt]:= not mil110_signal_deconv[cnt];
         end;
       end;


        if (not sym) and (not Show_hex_deint) then
        begin
          if asynchronous_data then  show_output_VT100 else
           if terminal_baudot then show_output_synchrone_5 else
           if terminal_ascii then show_output_synchrone;
        end;
   end;
end;

procedure ClearAllStackArrays;
begin
  // Maak voor alle zekerheid alle op de stack gedefinieerde arrays leeg =0;
  FillChar(mil110_signal_tribit,SizeOf(mil110_signal_tribit),0);
  FillChar(mil110_signal_int,SizeOf(mil110_signal_int),0);
  FillChar(mil110_signal_deint,SizeOf(mil110_signal_deint),0);
  FillChar(mil110_signal_deconv,SizeOf(mil110_signal_deconv),0);
  FillChar(symbol_mil110,SizeOf(symbol_mil110),0);
  FillChar(random_shift_array,SizeOf(random_shift_array),0);
  FillChar(symbols,SizeOf(symbols),0);
  FillChar(trellis,SizeOf(trellis),0);
  FillChar(fse_array,SizeOf(fse_array),0);
  FillChar(forward_filter,SizeOf(forward_filter),0);
  FillChar(dfe_filter,SizeOf(dfe_filter),0);
  FillChar(old_channels,SizeOf(old_channels),0);
  FillChar(oldchannels,SizeOf(oldchannels),0);
  FillChar(sync_preamble_array,SizeOf(sync_preamble_array),0);
  FillChar(sync_template,SizeOf(sync_template),0);
  FillChar(amplitude_array,SizeOf(amplitude_array),0);
  FillChar(channel_array,SizeOf(channel_array),0);
  FillChar(corr_array,SizeOf(corr_array),0);
  FillChar(sync_test_array,SizeOf(sync_test_array),0);
end;
{procedure mil110_rx;}
begin
  ClearAllStackArrays;
  DecoderTXChars:=16;  //mag varieren per mode tussen 4 en 64 en moet een tweevoud zijn.
  FillChar(DecodedData,SizeOf(DecodedData),0);
  if StartAsDecoder
  then
  begin
   if RunDecoderIP.StartIP.IPMode < 0
   then
     begin
      StartAsDecoder:=false;
     end;
    SetRemoteVar(RunDecoderIP.StartIP,WaitEventArrayIndex,Choice);
   //Herstel de Interleave
   InitInterleave(RunDecoderIP.StartIP.IPMil110InterleaveMode);
   Form78.ModeSelect.ItemIndex:=RunDecoderIP.StartIP.IPMil110InterleaveMode;
   Form78.SyncSeqSelect.Checked:=picc_6;
    //Herstel de TerminalMode
form78.Termsyn.Itemindex:=R39Subchoice;
form78.Termdatabit.Itemindex:=num_bits;
form78.Termparity.Itemindex:=pactor_vs;
form78.Termstop.Itemindex:=Tone_R391;
form78.Termshift.Itemindex:=Tone_R392;
form78.TermMSB.Itemindex:=Char_length;
suppress_start_details:=picc_6;
EOMInhibit:=long_arq;
    form78.Alphabet.ItemIndex:=alph_type;
    Install_Alphabet(alph_type);
    if (alph_type=10) or (alph_type=14)  then survey:=1;

if Invertd=true then form78.TermInvert.Itemindex:=1 else form78.TermInvert.Itemindex:=0;
        SetTerminal;
        shift_freq:=2400;
        Shift_Tones:=2400;
        Shift_Speed_New:=True;
        Fill_Shift_Table_12;
        Shift_Choice:=12;
        Freq_Diff_Int:=0;
        Change_Shift;
        set_time_inc(baud_rate);
        set_windowtable;
       init;
  end
  else
  begin
    ThreadSyncCount:=0;
    if default_codeset then
    begin
         center_frequency:=1800;
         shift_freq:=2400;
         change_shift;
         baud_rate:=2400;
         set_time_inc(baud_rate);
         set_windowtable;
         auto_thr:=true;
         SetTerminal;
         Write_Text_To_Disk:=false;
         Show_Control:=False;
         short_long_interleave:=true;
         cr39:=false;
    end;
    default_codeset:=true;
    auto_mark_level:=false;
  end;
   default_codeset:=true;
   set_time_inc(baud_rate);
   shift_freq:=2400;
   shift_tones:=2400;
   Shift_Speed_New:=True;
   Fill_Shift_Table_12;
   Shift_Choice:=12;
   change_shift;
   init;
   initviterbi;
   make_sync_template;
   make_sync_preamble_array;
   fill_random_shift_array;
   mil110:=true;
   PreviousSyncState:=False;
   agc_gain:=1;
   Read_Buff_Offset:=Buf_Offset;
   Form78.SyncSeqSelect.Checked:=picc_6;


  // fek:=true;
    deint:=true;
    int:=false;
    Form78.Streammode.Visible:=false;
   Form78.Streammode.ItemIndex:=0;
   deconv:=false;
    sym:=false;

   If BufferLoadedFromFile
  then
  begin
    Read_Buff_Offset:=0;
    SetEvent(BufferWaitEventArray[WaitEventArrayIndex].BufferWaitEvent);
  end;
  DataString:='';
  Form78.RichEdit1.Clear;
  Form78.RichEdit1.Lines.Add('Start at: '+TimetoStr(Now)+'  '+DateToStr(Now)+'  with: '+system_name);
  ////////////////NIEUW BEGIN
  with SpectrumDrawSetting[WaitEventArrayIndex]  do
  begin
    SpectrumCenter      :=round(Center_Frequency);
    SpectrumCenterChanged:= False;
    SpectrumMaxShift    := shift_freq;
    SpectrumRaster      := Choice;
    SpectrumItemIndex   := 0;
  end;
  SpectrumSetDrawParameters(SpectrumDrawSetting[WaitEventArrayIndex].SpectrumItemIndex);
  SpectrumDrawIndex:=WaitEventArrayIndex;
  Code3MainForm.SetSpectrumButton(SpectrumDrawSetting[WaitEventArrayIndex].SpectrumItemIndex);
  SpectrumDrawSetting[WaitEventArrayIndex].SpectrumCenterChanged:=True;
  SpectrumDrawSetting[WaitEventArrayIndex].SpectrumRightChannel:=RightChannel;
  SpectrumDrawSetting[WaitEventArrayIndex].SpectrumChannelChanged:=True;
  //////////////////NIEUW END
  BitAccu := 0;
  BitAccuBitCount:=0;
/////  Form78.ToolButton13.Down:=False;
   First_remote_start:=true;
  while not stopping do
  begin
    print_mil110;
  end;
end;
{xxx$R-}
{ TMil110Thread }
procedure TMil110Thread.Execute;
begin
  mil110_rx;
end;
procedure TMil110Thread.status;
var
a:Double;
s:string;
R : TRect;
begin
  inc(format_counter);
  if (format_counter mod 2=0) then
  begin
    if not temp_scroll then
    begin
    form78.RichEdit1.Text:=form78.RichEdit1.Text + DataString;
    DataString:='';
    form78.RichEdit1.SelStart:=form78.RichEdit1.Perform(EM_LINEINDEX,form78.RichEdit1.Lines.Count-1,0);
    end;
  end;
if First_remote_start then
 begin
  set_time_inc(baud_rate);
  change_shift;
  SpectrumSetDrawParameters(SpectrumDrawSetting[WaitEventArrayIndex].SpectrumItemIndex);
  SpectrumDrawIndex:=WaitEventArrayIndex;
  Code3MainForm.SetSpectrumButton(SpectrumDrawSetting[WaitEventArrayIndex].SpectrumItemIndex);
  SpectrumDrawSetting[WaitEventArrayIndex].SpectrumCenterChanged:=True;
  SpectrumDrawSetting[WaitEventArrayIndex].SpectrumRightChannel:=RightChannel;
  with R do
  begin
    Top:=0;
    Left:=0;
    Bottom:=form78.Image1.Height;
    Right:=form78.Image1.Width;
  end;
    if (not SynopDecodeActive) then
  form78.Image1.Canvas.Brush.Color:=clblack;
  form78.Image1.Canvas.FillRect(R);
  First_remote_start:=false;
 end;

  if (format_counter mod 10=0) and (not sync) and (not SynopDecodeActive) then
  begin
    with R do
    begin
    Top:=0;
    Left:=0;
    Bottom:=form78.Image1.Height;
    Right:=form78.Image1.Width;
    end;
   form78.Image1.Canvas.Brush.Color:=clblack;
   form78.Image1.Canvas.FillRect(R);
  end;
  if (alph_type<>survey) then
 begin
 form78.Alphabet.ItemIndex:=alph_type;
 form78.Alphabet.OnClick(self);
 survey:=alph_type;
  end;


  if Code3MainForm.BitstreamSocket.Socket.ActiveConnections > 0 then
   begin
       if deconv then
      begin
      Form78.Streammode.visible:=true;
      Form78.Streammode.text:='Deconvoluted';
      end else
      if deint then
      begin
      Form78.Streammode.visible:=true;
      Form78.Streammode.text:='Deinterleaved';
      end else
      if int then
      begin
      Form78.Streammode.visible:=true;
      Form78.Streammode.text:='Interleaved';
      end else
      if sym then
      begin
      Form78.Streammode.visible:=true;
      Form78.Streammode.text:='Symbols';
      end;
  end else Form78.Streammode.visible:=false;

        if {(BitAccuBitCount<>0) and} FlushOutput then
            begin
              BitStreamBuffer[BSBWriteIndex]:=BitAccu;
              Inc(BSBWriteIndex);
              BitAccu:=0;
              BitAccuBitCount:=0;
             if Code3MainForm.BitstreamSocket.Socket.ActiveConnections > 0 then
              Code3MainForm.BitstreamSocket.Socket.Connections[0].SendBuf(BitStreamBuffer[0],BSBWriteIndex-1);
              FlushOutput:=false;
            end;
  if Code3MainForm.BitstreamSocket.Socket.ActiveConnections =0 then
  begin
  form78.Label3.Caption:=' ';
  end else
  begin
  if BitstreamBufferUser=Choice then
     begin
     if sync then form78.Label3.Caption:='Stream port traffic' else
     form78.Label3.Caption:='Stream port enabled';
     end else form78.Label3.Caption:='Stream port connected';
  end;
  if BitstreamBufferUser <> Choice then
  begin
    form78.ToolButton13.Down:=False;
  end;

  shift_max:=shift_freq;//round(shift_freq/2);
  if auto_thr then Auto_Threshold;

Form78.Gauge3.progress:=round(100-abs(min_distance div 127));
Form78.Label1.Caption:=' signal quality   BER: '+IntToStr(min_distance div 127);

  if sync then
  begin
    Form78.Status8.Caption:=Interleave_string+' Interleaver';
    if PreviousSyncState <> sync then
    begin
      BufferWaitEventArray[WaitEventArrayIndex].ModeSync:=3; // Gewijzigd en nu Sync
    end else
    begin
      BufferWaitEventArray[WaitEventArrayIndex].ModeSync:=1; // Ongewijzigd en nu Sync
    end;
    form78.status1.caption:='Sync Data ';
    form78.status1.font.color:=clBlack;
    Form78.Gauge3.progress:=round(100-abs(min_distance div 127));
    Form78.Label1.Caption:=' signal quality   BER: '+IntToStr(min_distance div 127);
  end else
  begin
    if PreviousSyncState <> sync then
    begin
      BufferWaitEventArray[WaitEventArrayIndex].ModeSync:=2; // Gewijzigd en nu geen Sync
    end else
    begin
      BufferWaitEventArray[WaitEventArrayIndex].ModeSync:=0; // Ongewijzigd en nu geen Sync
    end;
    form78.status1.caption:='no sync ';
    Form78.Status8.Caption:='';
    form78.status8.font.color:=clBlack;
    form78.status1.font.color:=clBlack;
    Form78.Status8.Caption:=' ';
  end;
  PreviousSyncState:=sync;

if preamble_found and (segment_counter>0) then
   begin
    Form78.Status8.Caption:=Interleave_string+' Interleaver';
    form78.status1.caption:='Preamble :'+Inttostr(segment_counter);
    form78.status1.font.color:=clBlack;
   end;


  // Werk de indicator voor de achterstand van de readpointer bij.
  Form78.Gauge1.progress:=round((Buf_Offset - Read_Buff_Offset)/BufferSize * 100);
  Form78.status6.caption:=IntToStr(round(center_frequency))+' Hz';
  a:=offset_freq/76800;
  Str(a:5:4,s);
  Form78.status2.caption:='df: '+s+' Hz';
  Form78.label4.left:=round(60+2*a);
  if Form78.label4.left< 1 then Form78.label4.left:=1;
  if Form78.label4.left>120 then Form78.label4.left:=120;
  UpDateCenterFrequencyDisplay;
  UpDateBaudrateDisplay;
  UpDateShiftDisplay;
if show_full_ascii then form78.asciicheck.checked:=true else form78.asciicheck.checked:=false;
if Show_Control then
          begin
          form78.controlcheck.checked:=true;
          shift_suppressed:=true;
          end else
          begin
          form78.controlcheck.checked:=false;
          shift_suppressed:=false;
          end;
if Auto_Thr then form78.SetButtonOnColor(form78.ATCButton)
        else form78.SetButtonOffColor(form78.ATCButton);
if Write_Text_To_Disk then form78.SetButtonOnColor(form78.OutputToDiskButton)
        else form78.SetButtonOffColor(form78.OutputToDiskButton);
form78.ModeSelect.items.Strings[form78.ModeSelect.itemindex];
if Read_Buffer_Reset then
    begin
    Read_Buff_Offset:=0; Read_Buffer_Reset:=false;
    end;
  if Step_Read_Buffer_Reset then
  begin
  Read_Buff_Offset:=Read_Buff_Offset-1000000; if Read_Buff_Offset<1 then Read_Buff_Offset:=1;
  Step_Read_Buffer_Reset:=false;
  end;
with SpectrumDrawSetting[WaitEventArrayIndex] do

  begin
    if SpectrumToModeCenter <> 0 then
    begin
      Center_Frequency:=SpectrumToModeCenter;
      SpectrumToModeCenter:=0;
      Clip_Center_Frequency;
      Change_Shift;
    end
  end;
Form78.Alphabet.items.Strings[Form78.Alphabet.itemindex];
  if EOMInhibit then form78.ToolButton23.down:=True else form78.ToolButton23.down:=False;
 if suppress_start_details then form78.ToolButton24.down:=True else form78.ToolButton24.down:=False;
    if RightChannel then
    Form78.caption:= 'Decoder '+DecoderNumberStr + '-' + IntToStr(WaitEventArrayINdex) +
                     '           Input source: Right channel' else
    Form78.caption:= 'Decoder '+DecoderNumberStr + '-' + IntToStr(WaitEventArrayINdex) +
                     '           Input source: Left channel';
  if RightChannel then
  begin
   form78.ToolButton2.down:=True;
   form78.ToolButton1.down:=False;
   form78.ToolButton1.Imageindex:=13;//51;
   form78.ToolButton2.Imageindex:=10;//48;
  end else
  begin
    form78.ToolButton1.down:=True;
    form78.ToolButton2.down:=False;
    form78.ToolButton1.Imageindex:=12;//50;
    form78.ToolButton2.Imageindex:=11;//49;
  end;
end;
{$I ModeRemMsgHandler.pas}
procedure Tform78.C3RemoteControl(var Message: TMessage);
begin
  HandleRemoteMessages(Self,Message);
  FlushOutput:=Flush_Output;
  out_to_screen($0A);
  EOMinhibit:=EOM_inhibit;
  if showbinary then show_binary:=true;
  if shownormal then show_binary:=false;
  showbinary:=false;
  shownormal:=false;
  suppress_start_details:= not Show_Start_Details;
  EOM_inhibit:=false;
  Flush_Output:=false;
end;

procedure TForm78.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Form78.Streammode.visible:=false;
 if Code3MainForm.BitstreamSocket.Socket.ActiveConnections > 0 then
 begin
  if (BitAccuBitCount<> 0) and (BitAccuBitCount <= 8)  then
  begin
  BitStreamBuffer[0]:=BitAccu shl (8-BitAccuBitCount);
  Code3MainForm.BitstreamSocket.Socket.Connections[0].SendBuf(BitStreamBuffer[0],1);
  end;
 end;
  if BitStreamBufferUser<>0 then
   begin
   ToolButton13.Down:=False;
   BitStreamBufferUser:=0;
   end;
 if textscanning then
  begin
    TextScanning:=False;
    TheTextScanner.Release;
  end;
  If AudioRecordingFilesOpened and not KeepRecording
  then                             //overall te vervangen!!!!!
  begin
    PostMessage(HwndMainForm,CMD_C3,C3_StopAudioRec,0);
    StartedAudioRecording:=False;
  end;
  SynopDecodeActive:=false;
    EOMInhibit:=false;
  long_arq:=false;
  suppress_start_details:=false;
  picc_6:=false;
  Close_Text_To_Disk;
  First_remote_start:=false;
  InsertTimeStamp1:=false;
  temp_scroll:=false;
  /////nieuw
  SpectrumDrawIndex:=0;
////////////////
  if mil110Thread <> nil
  then
  begin
    stopping:=True;
    // Voor geval BufferLoadedFromFile en lust in waitForDoubleObject
    SetEvent(BufferWaitEventArray[WaitEventArrayIndex].BufferWaitEvent);
    mil110Thread.WaitFor;
    MIL110Thread.Free;//////////////////
    //************************  NIEUW OM DUBBEL OPSTARTEN TE VOORKOMEN  **********************************
    BufferWaitEventArray[WaitEventArrayIndex].ModeChoice:=-1;                                           //
    //****************************************************************************************************
    BufferWaitEventArray[WaitEventArrayIndex].BufferEventInUse:=False;
    BufferWaitEventArray[WaitEventArrayIndex].ModeThread:=nil;
    BufferWaitEventArray[WaitEventArrayIndex].ModeForm:=nil;
  end;
//Code3mainform.visible:=true;
 RemoveZeroLengthFiles;
  if renameFORM<>nil then  renameFORM.Close;
  file_rename:=false;
  SendMessage(HWndMainForm,CMD_C3,C3_FilesClosed,WaitEventArrayIndex);
  SendMessage(HWndMainForm,CMD_C3,C3_DecoderClosed,WaitEventArrayIndex);
  WaitEventArrayIndex:=0;
 with SpectrumDrawSetting[SpectrumDrawIndex] do
  begin
  SpectrumRightChannel:=False;
  SpectrumChannelChanged:=True;
  end;
  release;
end;
procedure Tform78.OutputToDiskButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if OutputToDiskButton.Color or OutputToDiskButton.Color=ButtonOnColor
  then
  begin
    Write_Text_To_Disk:=False;
    OutputToDiskButton.Color:=ButtonOffColor;
    OutputToDiskButton.font.color:=clGray;
    OutputToDiskButton.BevelOuter:=bvRaised;
    OutputToDiskButton.Color:=ButtonOffColor;
    OutputToDiskButton.font.color:=clGray;
    OutputToDiskButton.BevelOuter:=bvRaised;
  end
  else
  begin
    if  (not file_rename) and Name_out_to_disk
    then
    begin
    Application.CreateForm(TrenameFORM,renameFORM);
    renameFORM.Show;
    renameFORM.Edit1.text:='';
    end;
    Write_Text_To_Disk:=True;
    OutputToDiskButton.Color:=ButtonOnColor;
    OutputToDiskButton.font.color:=clBlack;
    OutputToDiskButton.BevelOuter:=bvLowered;

  end;
end;
procedure TForm78.ATCButtonMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
begin
  if ATCButton.Color=ButtonOnColor  {on}
  then
  begin
    Auto_Thr:=False;
 //   Auto_Threshold;
offset_freq:=0;
    ATCButton.Color:=ButtonOffColor;   {off}
    ATCButton.font.color:=clGray;
    ATCButton.BevelOuter:=bvRaised;
  end
  else
  begin
    Auto_Thr:=True;
//    Auto_Threshold;
    ATCButton.Color:=ButtonOnColor;   {on}
    ATCButton.font.color:=clBlack;
    ATCButton.BevelOuter:=bvLowered;
  end;
end;
procedure TForm78.controlcheckMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
show_control:= not show_control;
end;

procedure TForm78.Selectall1Click(Sender: TObject);
begin
  RichEdit1.SelectAll;
end;
procedure Tform78.Selectfont1Click(Sender: TObject);
begin
  FontDialog1.Font.Name:=RichEdit1.Font.Name;
  FontDialog1.Font.Size:=RichEdit1.Font.Size;
  FontDialog1.Font.Color:=RichEdit1.Font.Color;
    if FontDialog1.Execute
    then
    begin
    RichEdit1.Font.color:=FontDialog1.Font.color;
    RichEdit1.Font.size:=FontDialog1.Font.size;
    RichEdit1.Font.Name:=FontDialog1.Font.name;
    end;
end;
procedure TForm78.Panel6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
offset_freq:=0;
  Panel6.Color:=ButtonOnColor;
  Panel6.font.color:=clBlack;
  Panel6.BevelOuter:=bvLowered;
  reset_sync;
end;
procedure TForm78.Panel6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel6.Color:=ButtonOffColor;
  Panel6.font.color:=clGray;
  Panel6.BevelOuter:=bvRaised;
end;
procedure TForm78.RichEdit1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if Button = mbRight  then temp_scroll:=not temp_scroll;
 if temp_scroll then ToolButton22.ImageIndex:= 28 else  ToolButton22.ImageIndex:=23;
end;
procedure TForm78.BaudrateLabelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
        baudratelabel.color:=clBtnFace;
        baud_rate_old:=baud_rate;
        set_time_inc(baud_rate);
        UpdateBaudrateDisplay;
end;
procedure TForm78.BaudrateLabelMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft
  then
  begin
        baudratelabel.color:=clBtnFace;
        baudratelabel.caption:='Baudrate ';
        UpdateBaudrateDisplay;
  end;
end;
procedure TForm78.CenterLabelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
        center_frequency_old:=round(center_frequency);
        centerlabel.color:=clBtnFace;
        centerlabel.caption:='Est. Center ';
        center_frequency:=center_estimate_1;
  end else
  begin
        centerlabel.color:=clBtnFace;
        centerlabel.caption:='Center ';
        center_frequency:=center_frequency_old;
  end;
  change_shift;
end;
procedure TForm78.CenterLabelMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft
  then
  begin
        centerlabel.color:=clBtnFace;
        centerlabel.caption:='Center ';
  end;
end;
procedure TForm78.ShiftLabelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
        shiftlabel.color:=clBtnFace;
        UpdateShiftDisplay;
end;
procedure TForm78.ShiftLabelMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft
  then
  begin
        shiftlabel.color:=clBtnFace;
        shiftlabel.caption:='Shift ';
//        shift_frequency:=shift_frequency_old;
//        change_shift;
        UpdateShiftDisplay;
  end;
end;
procedure TForm78.FormCreate(Sender: TObject);
begin
   Top:=Code3MainForm.Top+Code3MainForm.Height-2;
   Left:=6*WaitEventArrayIndex-6+Code3MainForm.Left;
   Width:=800;
RichEdit1.Font.Name:=text_font_name;
RichEdit1.Font.Size:=text_font_size;
RichEdit1.Font.Color:=text_font_color;
RichEdit1.Color:=text_background_color;
end;
//////////////// NIEUW BEGIN
procedure Tform78.FormActivate(Sender: TObject);
begin
   SpectrumDrawIndex:=WaitEventArrayIndex;
   Code3MainForm.SetSpectrumButton(SpectrumDrawSetting[WaitEventArrayIndex].SpectrumItemIndex);
   SpectrumDrawSetting[WaitEventArrayIndex].SpectrumCenterChanged:=True;
   SpectrumDrawSetting[WaitEventArrayIndex].SpectrumRightChannel:=RightChannel;
   SpectrumDrawSetting[WaitEventArrayIndex].SpectrumChannelChanged:=True;
end;

procedure TForm78.Savetextfile1Click(Sender: TObject);
var
  EndLoggingStr : String;
  str:string;
begin
  with SaveDialog1 do
  begin
    InitialDir:=DataDirectory+'Saved_Text_Files\';

    SaveDialog1.Filter:='Text files (*.rtf)|*.rtf|Text files (*.rtt)|*.rtt|Text files (*.txt)|*.txt';
    if save_rtf then SaveDialog1.FilterIndex:=1;  //rtf
    if save_rtt then SaveDialog1.FilterIndex:=2;  //rtt
    if save_txt then SaveDialog1.FilterIndex:=3;  //txt


//    SaveDialog1.Filter:='Text files (*.rtf)|*.rtf|Text files (*.rtt)|*.rtt|Text files (*.txt)|*.txt';
//    if save_rtf then SaveDialog1.FilterIndex:=1;  //rtf
//    if save_rtt then SaveDialog1.FilterIndex:=2;  //rtt
//    if save_txt then SaveDialog1.FilterIndex:=3;  //txt
    FileName:='Text file '+ System_Name;//+renameFORM.Edit1.text;
    if SaveDialog1.Execute then
    begin
      EndLoggingStr:=#13 + #10 +'Saved decoder text at: ' + TimetoStr(Now) + '  ' + DateToStr(Now);
      DataString:=DataString + EndLoggingStr;
      Richedit1.Text:=Richedit1.Text + DataString;
      DataString:='';
      Richedit1.Lines.Append(' --------------------------------------- ');
      Richedit1.Lines.Append(Mode_details);
      Richedit1.Lines.Append(custom_log);

     if SaveDialog1.FilterIndex=1 then Richedit1.Lines.SaveToFile(FileName +'.rtf');
     if SaveDialog1.FilterIndex=2 then
     begin
       Richedit1.PlainText:=True;
       Richedit1.Lines.SaveToFile(FileName +'.rtt');
       Richedit1.PlainText:=False;
     end;
     if SaveDialog1.FilterIndex=3 then
     begin
      Richedit1.PlainText:=True;
      Richedit1.Lines.SaveToFile(FileName +'.txt');
      Richedit1.PlainText:=False;
     end;

     Richedit1.clear;
    end;
  end;
    temp_hold:=false;
end;


procedure TForm78.Scrolltext1Click(Sender: TObject);
begin
  if ScrollText1.Checked
  then
  begin
    ScrollInText:=True;
  end
  else
  begin
    ScrollInText:=False;
  end;
end;
procedure TForm78.SavecurrentIP1Click(Sender: TObject);
var
  IPFile : File;
begin
  with SaveDialog1 do
  begin
    if  Code3MainForm.ComboBox1.Visible then
    begin
    InitialDir:=DataDirectory+'Freq_Used_Modes\';
    FileName:=System_Name+ ' Terminal_Mode_' +Form78.Termlabel3.caption+' '+Form78.Termlabel1.caption+' '+Form78.Termlabel2.caption;
    If Execute
    then
    begin
      FillIP(ModeIP);
      // ModeIp anvullen met specifieke variabelen
      ModeIP.IPMil110InterleaveMode:=ModeSelect.ItemIndex;
      // ModeIp anvullen met specifieke variabelen
      // Opnieuw CRC
      ModeIP.IPCRC:=CRC_CCITT(@ModeIP,SizeOf(InitiationPacket)-2);
      AssignFile(IPFile,SaveDialog1.FileName);
      Rewrite(IPFile,1);
      BlockWrite(IPFile,ModeIP,SizeOf(ModeIP));
      CloseFile(IPFile);
    end;
    end else
    begin
    InitialDir:= DataDirectory+'IP_Files\';
    FileName:=System_Name+ ' Terminal_Mode_' +Form78.Termlabel3.caption+' '+Form78.Termlabel1.caption+' '+Form78.Termlabel2.caption;
     SaveDialog1.Filter:='IP files (*.IP)|*.IP';
    If Execute
    then
    begin
      FillIP(ModeIP);
      // ModeIp anvullen met specifieke variabelen
      ModeIP.IPMil110InterleaveMode:=ModeSelect.ItemIndex;
      // ModeIp anvullen met specifieke variabelen
      // Opnieuw CRC
      ModeIP.IPCRC:=CRC_CCITT(@ModeIP,SizeOf(InitiationPacket)-2);
      AssignFile(IPFile,SaveDialog1.FileName+'.IP');
      Rewrite(IPFile,1);
      BlockWrite(IPFile,ModeIP,SizeOf(ModeIP));
      CloseFile(IPFile);
    end;
    end;
 end;
end;

procedure TForm78.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Code3MainForm.BitstreamSocket.Socket.ActiveConnections > 0 then
  begin
if key=#97 then
    begin
    deint:=true;
    int:=false;
    deconv:=false;
    sym:=false;
    end;
  if key=#98 then
    begin
    deconv:=true;
    deint:=false;
    int:=false;
    sym:=false;
    end;
if key=#99 then
    begin
    int:=true;
    deint:=false;
    deconv:=false;
    sym:=false;
    end;
if key=#100 then
    begin
    sym:=true;
    int:=false;
    deint:=false;
    deconv:=false;
    end;
if key=#120 then
    begin
    deint:=false;
    int:=false;
    deconv:=false;
    sym:=false;
    end;
   end;
key:=#0;
end;
procedure TForm78.Help1Click(Sender: TObject);
begin
  Application.HelpFile := ExtractFilePath(Application.ExeName) + 'Code300-32.chm';
  Application.Helpjump('MIL110');
end;

procedure TForm78.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var  R : TRect;
begin
  with R do
  begin
    Top:=0;
    Left:=0;
    Bottom:=Image1.Height;
    Right:=Image1.Width;
  end;
  Image1.Canvas.Brush.Color:=text_background_color;
  Image1.Canvas.FillRect(R);
end;

procedure TForm78.ModeSelectClick(Sender: TObject);
begin
  InitInterleave(ModeSelect.itemindex);
//  atcbutton.setfocus;
end;
procedure TForm78.AlphabetClick(Sender: TObject);
var
  NewLanguage : Word;
begin
  RichEdit1.BiDiMode:=bdLeftToRight;
  case  Alphabet.ItemIndex of
    0   : begin  // English U.S.
            NewLanguage:=$0409;
          end;
     3   : begin  // Greek
            NewLanguage:=$0408;
          end;
    4,
    5,
    6,
    7   : begin // Russian
            NewLanguage:=$0419;
          end;
    8   : begin // Hebrew
            NewLanguage:=$040d;
          end;
    10,  // Arabic 70
    11,  // Arabic 70 Latin
    12,  // Arabic 80 4th-shift
    13,  // Arabic 80 4th-shift Latin
    14,  // Farsi 70
    15,  // Farsi 70 Latin
    16,  // Farsi 80 4th-shift
    17  : begin // Arabic Farsi
//            NewLanguage:=$0401;
            RichEdit1.BiDiMode:= bdRighttoLeft;
          end;
    28: begin
          //load_alphabetCP1256;
          RichEdit1.BiDiMode:= bdRighttoLeft;
        end;

  end;
  alph_type:=Alphabet.ItemIndex;
  Install_Alphabet(Alphabet.ItemIndex);

end;

procedure TForm78.Alphabetmapping1Click(Sender: TObject);
var
  TerminalType : integer;
begin
 TerminalType:=1;
 if Terminal_ascii
 then
 begin
   TerminalType:=2
 end;
 TheAlphabetMapper:=TFontTAble.Create(Self,@Ita2_Table[0],@Ascii_table[0],@ccir342_table[0],@ccir476_table[0],@ita2_7_table[0],@ morse_table[0],
                                  @t3x4y_table[0],@tita2_7_table[0],TerminalType);
end;
procedure TForm78.ApplybuttonMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
SetTerminal;
TerminalPanel.Visible:=false;
end;

procedure TForm78.asciicheckMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
show_full_ascii:= not show_full_ascii;
end;

procedure TForm78.TermsynChange(Sender: TObject);
begin
setterminal;
end;

procedure Tform78.Textscanning1Click(Sender: TObject);
begin
  TheTextScanner:=TWatcherForm.Create(Self,@TextScanning,System_Name);
  TextScanning:=True;
end;

procedure Tform78.ToolButton9MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  auto_tune:=true;
end;
procedure Tform78.ToolButton9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  auto_tune:=false;
end;
procedure TForm78.Undo1Click(Sender: TObject);
begin
  RichEdit1.Undo;
end;
procedure Tform78.ToolButton5Click(Sender: TObject);
begin
if not Read_Buffer_Reset then
       Read_Buffer_Reset:=true;
end;
procedure Tform78.ToolButton14Click(Sender: TObject);
begin
 if not Step_Read_Buffer_Reset then
       Step_Read_Buffer_Reset:=true;

end;
procedure Tform78.ToolButton6Click(Sender: TObject);
begin
  if InsertTimeStamp1 then
   begin
    CRI:=False;
    InsertTimeStamp1:=false;
    ToolButton6.Down:=False;
  end else
  begin
    CRI:=True;
    Toolbutton20.Down:=True;
    InsertTimeStamp1:=True;
    ToolButton6.Down:=True;
  end;
end;

procedure Tform78.ToolButton19Click(Sender: TObject);
begin
  form78.RichEdit1.Clear;
end;
procedure Tform78.ToolButton20Click(Sender: TObject);
begin
  if CRI
  then
  begin
    CRI:=False;
    ToolButton20.Down:=False;
  end
  else
  begin
    CRI:=True;
    ToolButton20.Down:=True;
  end;
end;
procedure Tform78.ToolButton21Click(Sender: TObject);
begin
 if shift_suppressed
  then
  begin
    shift_suppressed:=false;
    ToolButton21.Down:=False;
  end
  else
  begin
    if upcase_allowed
    then
    begin
      ToolButton21.Down:=True;
      shift_suppressed:=true;
    end;
  end;
end;
procedure Tform78.ToolButton1Click(Sender: TObject);
begin
 form78.Caption := 'Decoder '+DecoderNumberStr + '-' + IntToStr(WaitEventArrayINdex) +
                     '           Input source: Left channel';
  RightChannel:=False;
  ToolButton1.down:=True;
  ToolButton2.down:=False;
  form78.ToolButton1.Imageindex:=12;
  form78.ToolButton2.Imageindex:=11;
  SpectrumDrawSetting[WaitEventArrayIndex].SpectrumRightChannel:=RightChannel ;
  SpectrumDrawSetting[WaitEventArrayIndex].SpectrumChannelChanged:=True;
end;
procedure Tform78.ToolButton2Click(Sender: TObject);
begin
  if AllowMultiChannel
  then
  begin
    if GlobalWaveFormat.nChannels > 1
    then
    begin
      Caption := 'Decoder '+DecoderNumberStr + '-' + IntToStr(WaitEventArrayINdex) +
                     '           Input source: Right channel';
      RightChannel:=True;
      ToolButton2.down:=True;
      ToolButton1.down:=False;
      form78.ToolButton1.Imageindex:=13;
      form78.ToolButton2.Imageindex:=10;
      SpectrumDrawSetting[WaitEventArrayIndex].SpectrumRightChannel:=RightChannel ;
      SpectrumDrawSetting[WaitEventArrayIndex].SpectrumChannelChanged:=True;
    end;
  end;
end;
procedure Tform78.ToolButton18Click(Sender: TObject);
begin
form78.Close;
end;


procedure Tform78.ToolButton13Click(Sender: TObject);
begin
   deint:=true;
  // er moet een active verbinding zijn.
  if Code3MainForm.BitstreamSocket.Socket.ActiveConnections > 0
  then
  begin
    //Als we al streamen , stoppen
    if BitStreamBufferUser<>0 //ToolButton13.Down
    then
    begin
      ToolButton13.Down:=False;
      // meldt ook dat we het buffer niet meer gebruiken
      BitStreamBufferUser:=0;
    end
    else
    begin
      // we streamen nog niet, buffer nog niet in gebruik dan beginnen.
      if BitStreamBufferUser = 0
      then
      begin
        BitAccuBitCount:=0;
        BitAccu:=0;
        BSBWriteIndex:=0;
        BitStreamBufferUser:=Choice;
        ToolButton13.Down:=True;
      end
      else
      begin
         ShowMessage('Bitstream facility in use by different mode.');
         ToolButton13.Down:=False;
      end;
    end;
  end
  else
  begin
    ShowMessage('Connect Bitstream monitor first.');
    ToolButton13.Down:=False;
    BitStreamBufferUser:=0;
  end;
end;

procedure TForm78.ToolButton4MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//if not terminal_ascii then
 begin
 UpperCase:=not Uppercase;
 if Uppercase then ToolButton4.Down:=false else ToolButton4.Down:=true;
 end;
end;
procedure TForm78.ToolButton22Click(Sender: TObject);
begin
  Temp_Hold:= not Temp_Hold;
end;

procedure TForm78.ToolButton23Click(Sender: TObject);
begin
EOMInhibit:=not EOMInhibit;
long_arq:=EOMInhibit;
end;
procedure TForm78.ToolButton4Click(Sender: TObject);
begin
{  if (not CharacterCounting){ or (not terminal_baudot) then
  begin
  TheCharacterCounter:=TCharacterCounter.Create(Self,@CharacterCounting,System_Name);
  CharacterCounting:=True;
  end;    }
end;
procedure TForm78.ToolButton24Click(Sender: TObject);
begin
suppress_start_details:=not suppress_start_details;
picc_6:=suppress_start_details;
end;

procedure TForm78.ToolButton25Click(Sender: TObject);
begin
  if not CharacterCounting then
  begin
  TheCharacterCounter:=TCharacterCounter.Create(Self,@CharacterCounting,System_Name);
  CharacterCounting:=True;
  end;
end;

procedure TForm78.TabSheet1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
tabnew.setfocus;
end;



procedure TForm78.termbuttonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
SetButtonOnColor(form78.termbutton);
TerminalPanel.Visible:=not TerminalPanel.Visible;
end;

procedure TForm78.termbuttonMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
SetButtonOffColor(form78.Termbutton);
end;

end.
