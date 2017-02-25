function varargout = MultiFunPanel(varargin)
% MultiFunPanel MATLAB code for MultiFunPanel.fig
%      MultiFunPanel, by itself, creates a new MultiFunPanel or raises the existing
%      singleton*.
%
%      H = MultiFunPanel returns the handle to a new MultiFunPanel or the handle to
%      the existing singleton*.
%
%      MultiFunPanel('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MultiFunPanel.M with the given input arguments.
%
%      MultiFunPanel('Property','Value',...) creates a new MultiFunPanel or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MultiFunPanel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MultiFunPanel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MultiFunPanel

% Last Modified by GUIDE v2.5 14-Jul-2014 16:38:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MultiFunPanel_OpeningFcn, ...
                   'gui_OutputFcn',  @MultiFunPanel_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before MultiFunPanel is made visible.
function MultiFunPanel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MultiFunPanel (see VARARGIN)

% Choose default command line output for MultiFunPanel
handles.output = hObject;

% Update handles structure

guidata(hObject, handles);

% Update handles structure
guidata(hObject, handles);
set(handles.edit18,'enable','off')
set(handles.edit11,'enable','off')
set(handles.edit20,'enable','off')
set(handles.edit30,'enable','off')
set(handles.edit31,'enable','off')



% UIWAIT makes MultiFunPanel wait for user response (see UIRESUME)
% uiwait(handles.figure1);
imshow('double_image.png', 'Parent', handles.axes1)
imshow('sandwich_image.png', 'Parent', handles.axes2)
imshow('single_image.png', 'Parent', handles.axes5)
imshow('logo.jpg', 'Parent', handles.axes6)

%Set diffault values for Poisson's ratio
 set(handles.edit31,'string','0.3');
 set(handles.edit30,'string','0.3');
 set(handles.edit39,'string','0.3');
 set(handles.edit40,'string','0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01');
%Place a question image
[a,map]=imread('question.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton5,'CData',g);

%Place a question image
[a,map]=imread('question.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton8,'CData',g);

%Place a question image
[a,map]=imread('question.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton14,'CData',g);

%Place a question image
[a,map]=imread('question.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton17,'CData',g);

%LEGEND sandwich panels set to zero
handles.N_pushes = 0;
handles.M_pushes = 0;
handles.aa_pushes = 0;
handles.bb_pushes = 0;
handles.cc_pushes = 0;
%RESIZE
set(gcf,'PaperPositionMode','auto')
guidata(hObject, handles) % to remove



% --- Outputs from this function are returned to the command line.
function varargout = MultiFunPanel_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
items = get(hObject,'String');
index_selected = get(hObject,'Value');
item_selected = items{index_selected};

option_pum_ = get(handles.popupmenu1,'Value');
 
if option_pum_ == 1
set(handles.edit18,'enable','off')
set(handles.edit11,'enable','off')
set(handles.edit20,'enable','off')
set(handles.edit16,'enable','on')
set(handles.edit30,'enable','off')
set(handles.edit31,'enable','off')
else
set(handles.edit18,'enable','on')
set(handles.edit11,'enable','on')
set(handles.edit20,'enable','on')
set(handles.edit16,'enable','off')
set(handles.edit30,'enable','on')
set(handles.edit31,'enable','on')
end

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',{'panels without connections';'panels with line connections';'panels with point connections'});


function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
d=str2double(InString);
set(handles.edit5, 'String', InString);
if isnan(d)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if d<=0 ;
    errordlg('Value should be greater than zero','Invalid Input','modal')
uicontrol(hObject)
end


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
h1=str2double(InString);
set(handles.edit9, 'String', InString);
if isnan(h1)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if h1<=0 ;
    errordlg('Value should be greater than zero','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
h2=str2double(InString);
set(handles.edit10, 'String', InString);
if isnan(h2)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if h2<=0 ;
    errordlg('Value should be greater than zero','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
E2=str2double(InString);
set(handles.edit11, 'String', InString);
if isnan(E2)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (E2<=0 | E2>32700)
    errordlg('Value should range from 0 to 32700','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
sigma=str2double(InString);
set(handles.edit16, 'String', InString);
if isnan(sigma)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (sigma<=0)
    errordlg('Value should be greater than zero','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
rho1=str2double(InString);
set(handles.edit17, 'String', InString);
if isnan(rho1)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (rho1<1 | rho1>22650)
    errordlg('Value should range from 1 to 22650','Invalid Input','modal')
uicontrol(hObject)
end
% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
E1=str2double(InString);
set(handles.edit18, 'String', InString);
if isnan(E1)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (E1<=0 | E1>32700)
    errordlg('Value should range from 0 to 32700','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
rho2=str2double(InString);
set(handles.edit19, 'String', InString);
if isnan(rho2)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (rho2<1 | rho2>22650)
    errordlg('Value should range from 1 to 22650','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
a=str2double(InString);
set(handles.edit20, 'String', InString);
if isnan(a)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if a<=0 ;
    errordlg('Value should be greater than zero','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%----------------------------------------------------------
% Double leaf wall: NBS-GCR-80-250 and Osama A.B. Hassan Building Acoustics
% and Vibration (ref.4)

try
d = str2double(get(handles.edit5,'String')); % spacing between plates (hc in .fig)
h1 = str2double(get(handles.edit9,'String')); %plate thickness
h2 = str2double(get(handles.edit10,'String')); 
E1 = str2double(get(handles.edit18,'String')); %elasticity modulus
E2 = str2double(get(handles.edit11,'String')); 
rho1 = str2double(get(handles.edit17,'String')); %density plate1
rho2 = str2double(get(handles.edit19,'String')); 
a = str2double(get(handles.edit20,'String')); %spacing between studs
sigma = str2double(get(handles.edit16,'String')); % flow resistivity
mu1 = str2double(get(handles.edit31,'String')); % poisson's ratio
mu2 = str2double(get(handles.edit30,'String'));

% Calculation without sound bridges - NBS-GCR-80-250 and ref.(4)
% Cavity filled with absorption material (properties specified)- ref(4)
            
m1=rho1*h1;                                             % mass of panel 1 [kg/m^2]
m2=rho2*h2;                                             % mass of panel 2[kg/m^2]
me=2*m1*m2/(m1+m2);                                    % average [kg/m^2]


f = [  100 125 160 200 250 315 400 500 630 800 1000 1250 1600 2000 2500 3150 4000 5000];     % frequency range [Hz]

f0=113./sqrt(me.*d);                                   % mass-spring-mass resonance frequency [Hz]
fl=55/d;                                               % the lowest order resonance across the air cavity [Hz]

% Mass Law - Transmission Loss - (5)
TLm=20.*log10((m1+m2).*f)-47.3;                          % total construction [dB]
TLm1=20.*log10(m1.*f)-47.3;                              % panel 1 [dB]
TLm2=20.*log10(m2.*f)-47.3;                              % panel 2 [dB]

% Transmission Loss calculation - (6)
c0=343;                                              % sound speed in air  [m/s]
rho0=1.205;                                             % density of sound in the air [kg/m^3] -ref(1)
omega=2.*pi.*f;                                         % angular frequency [rad/s]
k=omega./c0;                                           % wave number
alpha=((omega./c0).*0.189.*((f.*rho0)./sigma).^-0.595); % attenuation constant -ref.(4),(4.61),p.395
beta=(omega./c0).*(1+0.0978.*(f.*rho0./sigma).^-0.7);   % phase constant -ref.(4),(4.61),p.395
  
% Calculate TL array for all frequency range

%TL = repmat(TLm1+TLm2+6,1);                           % cavity material not specified (but cavity filled)

 TL = repmat(TLm1+TLm2+8.6.*alpha.*d+20.*log10(beta./k),1);   % specified cavity material -ref.(4),(4.60),p.395
q1 = (f0<=f) & (f<fl);                                 % condition 1
TL(q1) = 20.*log10(m1.*f(q1))-48 + 20.*log10(m2.*f(q1))-48 ...
    + 20.*log10(f(q1).*d)-29;                          % (TLm1+TLm2+20log(fd)-29) Ame. paper
q2 = (f <= f0);                                           % condition 2
TL(q2) = 20.*log10(m1+m2)+20.*log10(f(q2))-48;                 % (TLm)

%% Calculation of sound bridges - ref.(4),ch.4.4.3, p.389 

cl1=sqrt((E1*10^9)/(rho1*(1-mu1^2)));                     %longitudonal wavespeed in panel 1  ref.4(2.332)p.260
cl2=sqrt((E2*10^9)/(rho2*(1-mu2^2)));                     %longitudonal wavespeed in panel 2  

fc1=(sqrt(3)*c0^2)/(pi*h1*cl1) ;                 % critical frequency panel 1 [Hz] ref.4(2.332)p.260
fc2=(sqrt(3)*c0^2)/(pi*h2*cl2) ;                 % critical frequency panel 2 [Hz]
fc_line=((m1*sqrt(fc2)+m2*sqrt(fc1))/(m1+m2))^2; % critical frequency for line connected panels [Hz] ref.4(4,77b)p.401
fc_point=(m1*fc2+m2*fc1)/(m1+m2);                % critical frequency for point connected panels [Hz]ref.4(4,79b)p.402

% Transmission loss through sound bridges
option_pum = get(handles.popupmenu1,'Value');
if option_pum == 3
deltaTL=20.*log10(a)+20.*log10(fc_point)-44.8;       % point connections [dB] ref.4(4.79a), p.402
elseif option_pum == 2
deltaTL=10.*log10(fc_line)+10.*log10(a)-23.4;    % line connections [dB]  ref.4(4.77a), p.401
else
    deltaTL=0;
end

%% Transmission Loss for whole construction with sound bridges - ref.(4),ch.4.4.5.1,p.397 
% Cavity filled with absorption material (properties not specified)
% Determine cut-off frequency fb

% fb_=sym('fb_')
% % sym fb_
% fb_syn=solve(20*log10(m1+m2)+20*log10(fb_)-47.3+deltaTL==20*log10(m1*fb_)....
%     -48 + 20*log10(m2*fb_)-48+20*log10(fb_*d)-29,fb_);      % ref.(4), p.397
% fb = double(fb_syn);

for fb_=1:0.1:5000;
   
    Aa=20*log10(m1+m2)+20*log10(fb_)-47.3+deltaTL;
    A_ceil=ceil(Aa);
    Bb=20*log10(m1*fb_)-47.3 + 20*log10(m2*fb_)-47.3+20*log10(fb_*d)-29;
    B_ceil=ceil(Bb);
    if (A_ceil==B_ceil)
        fb=fb_;
        break
    else
        fb_=1;
    end
end

%Calculate TL_sb array for all frequency range
TL_sbx=repmat(TL,1);
x2= (fl<=f);
TL_sbx(x2)= 20.*log10(m1)+20.*log10(f(x2))-47.3+20.*log10(m2)+20.*log10(f(x2))-47.3+6;

TL_sb=repmat(TL_sbx,1);
x1= (f0<f) & (fb<f);                                        % condition 
TL_sb(x1) = 20.*log10(m1+m2)+20.*log10(f(x1))-47.3+deltaTL; % total transmission loss, ref.(4) 4.64, p.397


 %% Plot
 
% fig1 = figure;
axes5 = get(handles.axes5);
 
  option_pum = get(handles.popupmenu1,'Value');
%  if (isnan(d) | isnan(h1)| isnan(h2) |isnan(E1)| isnan(E2) |isnan(rho1)| isnan(rho2) |isnan(a) |isnan(sigma)| isnan(mu1) | isnan(mu2)) 
% errordlg('Provide values for all parameteres','Invalid Input','modal')
% uicontrol(hObject)
%  else
if option_pum == 1
          if  (isnan(d) || isnan(h1)|| isnan(h2)  ||isnan(rho1)|| isnan(rho2) || isnan(sigma)||d<=0||h1<=0||h2<=0||rho1<1||rho1>22650||rho2<1||rho2>22650);
              errordlg('One or more values are missing or exceed permissible range','Invalid Input','modal')
          else
              
              handles.aa_pushes = handles.aa_pushes + 1; 
my_str = sprintf('Panels without connections %g',handles.aa_pushes); 
              
        semilogx(f,TL,'DisplayName',my_str);
grid on
xlim([80 10000])
ylabel('Transmission Loss [dB]');
xlabel ('Frequency [Hz]')
title('Transmission Loss')
legend('-DynamicLegend','location','best')
hold all
guidata(hObject, handles); % to remove
          end

elseif option_pum == 2
            if  (isnan(d) || isnan(h1)|| isnan(h2) ||isnan(rho1)|| isnan(rho2) ||isnan(a)||isnan(E1)||isnan(E2)||isnan(mu1) || isnan(mu2)|| d<=0||h1<=0||h2<=0||rho1<1||rho1>22650||rho2<1||rho2>22650||mu1<-1|| mu1>0.5||mu2<-1|| mu2>0.5||a<=0||E1<0||E1>32700||E2<0||E2>32700  );
              errordlg('One or more values are missing or exceed permissible range','Invalid Input','modal')
            else
               handles.bb_pushes = handles.bb_pushes + 1; 
my_str = sprintf('Panels with line connections %g',handles.bb_pushes); 
        semilogx(f,TL_sb,'DisplayName',my_str);
grid on
xlim([80 10000])
ylabel('Transmission Loss [dB]');
xlabel ('Frequency [Hz]')
title('Transmission Loss')
legend('-DynamicLegend','location','best')
hold all
guidata(hObject, handles); % to remove
            end
elseif option_pum == 3
            if  (isnan(d) || isnan(h1)|| isnan(h2) ||isnan(rho1)|| isnan(rho2) ||isnan(a)||isnan(E1)||isnan(E2)||isnan(mu1) || isnan(mu2)|| d<=0||h1<=0||h2<=0||rho1<1||rho1>22650||rho2<1||rho2>22650||mu1<-1|| mu1>0.5||mu2<-1|| mu2>0.5||a<=0||E1<0||E1>32700||E2<0||E2>32700  );
              errordlg('One or more values are missing or exceed permissible range','Invalid Input','modal')
            else
               handles.cc_pushes = handles.cc_pushes + 1; 
my_str = sprintf('Panels with point connections %g',handles.cc_pushes); 
        semilogx(f,TL_sb,'DisplayName',my_str);
grid on
xlim([80 10000])
ylabel('Transmission Loss [dB]');
xlabel ('Frequency [Hz]')
title('Transmission Loss')
legend('-DynamicLegend','location','best')
hold all
guidata(hObject, handles); % to remove
            end

end
catch errorObj
% If there is a problem, we display the error message
errordlg('One or more values are missing or exceed permissible range','Invalid Input','modal')

end
    

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% ---------------------------------------------------------------
%Sandwich panel: Asessment of sandwich models for the prediction of sound transmission loss
%in unidirectional panels, T.Wang..., 2004
try
hc = str2double(get(handles.edit21,'String')); %thickness of the core [m]
hf = str2double(get(handles.edit22,'String')); %thickness of faceplate  [m]
Ec = str2double(get(handles.edit23,'String')); %elasticity modulus for the core [GPa]
Ef = str2double(get(handles.edit24,'String')); %elasticity modulus for the faceplate [GPa]
rhoc = str2double(get(handles.edit26,'String')); %density of the core material [kg/m^3]
rhof = str2double(get(handles.edit27,'String')); %density of faceplate  [kg/m^3]
mu = str2double(get(handles.edit28,'String')); %Poisson's ratio of the core material
b = str2double(get(handles.edit29,'String')); %width of a plate (shorther dimension)

if  (hc<=0 || hf<=0|| b<=0  ||mu<-1|| mu>0.5 ||rhof<1|| rhof>22650 || rhoc<1||rhoc>22650||Ec<0||Ec>32700||Ef<0||Ec>32700);
              errordlg('One or more values are missing or exceed permissible range','Invalid Input','modal')
 else

f = [ 100 125 160 200 250 315 400 500 630 800 1000....
    1250 1600 2000 2500 3150 4000 5000];     % frequency range [Hz]

Zair=428 ; % air impedance at 0°C [N*s/m^3]

M0=(rhoc*b*hc)/6;
E0=(Ec*10^9)/(1-mu^2);
v0=mu/(1-mu);
K=(E0*b)/(hc*(1-v0^2));
A=b*hf; %-cross secional area of the face sheet

omega=2.*pi.*f;                                         % angular frequency [rad/s]
c_air=343;                                              % sound speed in air [m/s]                                          
k0=omega./c_air;
%k=k0.*sin(teta)
EI=(Ef*10^9*hf^3)/(12*(1-mu^2));

T=(E0*b)/(hc*(1-v0^2));


% Azimuthal angle is ommited since we assume the isotropic core
fun1= @(teta) ((((abs((((-1i.*(T.*(k0.*sin(teta)).^2+EI.*(k0.*sin(teta)).^4-rhof.*A.*omega.^2+2.*K-M0.*omega.^2))./(omega.*Zair))+((1i.*(EI.*(k0.*sin(teta)).^4-rhof.*A.*omega.^2+3.*T.*(k0.*sin(teta)).^2-3.*M0.*omega.^2))./(omega.*Zair)))./((1-((1i.*(EI.*(k0.*sin(teta)).^4-rhof.*A.*omega.^2+3.*T.*(k0.*sin(teta)).^2-3.*M0.*omega.^2))./(omega.*Zair))).*(1+((-1i.*(T.*(k0.*sin(teta)).^2+EI.*(k0.*sin(teta)).^4-rhof.*A.*omega.^2+2.*K-M0.*omega.^2))./(omega.*Zair)))))).^2)).*sin(teta).*cos(teta));
fun2= @(teta) (sin(teta).*cos(teta));

tau_tr_dash1= integral(fun1,0,1.36135682,'ArrayValued',true);
tau_tr_dash2= integral(fun2,0,1.36135682);

tau_tr_dash=tau_tr_dash1./tau_tr_dash2;

TL=10.*log10(abs(1./tau_tr_dash));

if isnan(TL)
    errordlg('One or more values are missing or exceed permissible range.','Invalid Input','modal')
else
  
handles.N_pushes = handles.N_pushes + 1; 

my_str = sprintf('Sandwich panel %g',handles.N_pushes); 


 
semilogx(f,TL,'DisplayName', my_str); 
grid on
ylabel('Transmission Loss [dB]');
xlabel ('Frequency')
xlim([80 10000])
title('Transmission Loss')
legend('-DynamicLegend','location','best')
hold all
 end

end
guidata(hObject, handles); % to remove

catch errorObj
% If there is a problem, we display the error message
errordlg('One or more values are missing or exceed permissible range','Invalid Input','modal')
% errordlg(getReport(errorObj,'extended','hyperlinks','off'),'Error');
end







function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
b=str2double(InString);
set(handles.edit29, 'String', InString);
if isnan(b)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if b<=0 ;
    errordlg('Value should be greater than zero','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
mu=str2double(InString);
set(handles.edit28, 'String', InString);
if isnan(mu)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (mu<-1 | mu>0.5)
    errordlg('Value should range from -1 to 0.5','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
rhof=str2double(InString);
set(handles.edit27, 'String', InString);
if isnan(rhof)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (rhof<1 | rhof>22650)
    errordlg('Value should range from 1 to 22650','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
rhoc=str2double(InString);
set(handles.edit26, 'String', InString);
if isnan(rhoc)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (rhoc<1 | rhoc>22650)
    errordlg('Value should range from 1 to 22650','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
Ef=str2double(InString);
set(handles.edit24, 'String', InString);
if isnan(Ef)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (Ef<=0 | Ef>32700)
    errordlg('Value should range from 0 to 32700','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
Ec=str2double(InString);
set(handles.edit23, 'String', InString);
if isnan(Ec)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (Ec<=0 | Ec>32700)
    errordlg('Value should range from 0 to 32700','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
hf=str2double(InString);
set(handles.edit22, 'String', InString);
if isnan(hf)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if hf<=0 ;
    errordlg('Value should be greater than zero','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
hc=str2double(InString);
set(handles.edit21, 'String', InString);
if isnan(hc)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if hc<=0 ;
    errordlg('Value should be greater than zero','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
children = get(gca, 'children'); % grabs the last additions to the figure
delete(children(1)) % deletes from the plot the last element added to the figure

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
children = get(gca, 'children'); % grabs the last additions to the figure
delete(children) % deletes from the plot the last element added to the figure

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpdlg(sprintf('This section plots the transmission loss over the frequency range for double leaf walls. \nAssumptions made:\n-the critical frequency for each panel lies above the frequency range of interest\n-at each case the cavity is filled with a porous material (flow resistivity taken into consideration in unconnected panels only)\n-connections are distributed evenly over the surface area'),'Double leaf wall');



% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpdlg(sprintf('This section plots the transmission loss over frequency range for sandwich panels.\nAssumptions made:\n-panels are infinitely wide\n-face sheets and a core are isotropic'),'Sandwich panels');

% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes4


% --- Executes during object deletion, before destroying properties.
function uipanel8_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to uipanel8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object deletion, before destroying properties.
function uipanel2_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function uipanel2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double

InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
mu1=str2double(InString);
set(handles.edit31, 'String', InString);
if isnan(mu1)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (mu1<-1 | mu1>0.5)
    errordlg('Value should range from -1 to 0.5','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
mu2=str2double(InString);
set(handles.edit30, 'String', InString);
if isnan(mu2)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (mu2<-1 | mu2>0.5)
    errordlg('Value should range from -1 to 0.5','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Save_Callback(hObject, eventdata, handles)
% hObject    handle to Save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




orient landscape
[file path] = uiputfile('*.pdf');
print([path file], '-dpdf');



% --------------------------------------------------------------------
function Open_Callback(hObject, eventdata, handles)
% hObject    handle to Open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file = uigetfile('*.png');
    if ~isequal(file, 0)
        open(file);
    end


% --------------------------------------------------------------------
function Print_Callback(hObject, eventdata, handles)
% hObject    handle to Print (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

orient landscape
printpreview(gcf)
 printdlg(gcf);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in MyTabpanel1.
function MyTabpanel_1_Callback(hObject, eventdata, handles)
% hObject    handle to MyTabpanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in MyTabpanel1.
function MyTabpanel1_Callback(hObject, eventdata, handles)
% hObject    handle to MyTabpanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%   set(handles.Panel1, 'HandleVisibilty','on');
 set(handles.Panel1, 'Visible','on');
 
%    set(handles.Panel2, 'HandleVisibilty','off');
 set(handles.Panel2, 'Visible','off');

% --- Executes on button press in MyTabpanel2.
function MyTabpanel2_Callback(hObject, eventdata, handles)
% hObject    handle to MyTabpanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 %
 
 set(handles.Panel1, 'Visible','off');
 set(handles.Panel2, 'Visible','on');

   %set(handles.Panel1, 'HandleVisibilty','off');
 

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit33 as text
%        str2double(get(hObject,'String')) returns contents of edit33 as a double


% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit34_Callback(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit34 as text
%        str2double(get(hObject,'String')) returns contents of edit34 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
length=str2double(InString);
set(handles.edit34, 'String', InString);
if isnan(length)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if length<=0 ;
    errordlg('Value should be greater than zero','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35 as text
%        str2double(get(hObject,'String')) returns contents of edit35 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
width=str2double(InString);
set(handles.edit35, 'String', InString);
if isnan(width)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if width<=0 ;
    errordlg('Value should be greater than zero','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit36_Callback(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit36 as text
%        str2double(get(hObject,'String')) returns contents of edit36 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
h=str2double(InString);
set(handles.edit36, 'String', InString);
if isnan(h)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if h<=0 ;
    errordlg('Value should be greater than zero','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit37_Callback(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit37 as text
%        str2double(get(hObject,'String')) returns contents of edit37 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
rho=str2double(InString);
set(handles.edit37, 'String', InString);
if isnan(rho)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (rho<1 | rho>22650);
    errordlg('Value should range from 1 to 22650','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit38_Callback(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit38 as text
%        str2double(get(hObject,'String')) returns contents of edit38 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
E=str2double(InString);
set(handles.edit38, 'String', InString);
if isnan(E)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (E<=0 | E>32700)
    errordlg('Value should range from 0 to 32700','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit38_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit39_Callback(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit39 as text
%        str2double(get(hObject,'String')) returns contents of edit39 as a double
InString = get(hObject, 'String');
InString = strrep(InString, ',', '.');
mu=str2double(InString);
set(handles.edit39, 'String', InString);
if isnan(mu)
errordlg('You must enter a numeric value','Invalid Input','modal')
uicontrol(hObject)
return
else
end
if (mu<-1 | mu>0.5)
    errordlg('Value should range from -1 to 0.5','Invalid Input','modal')
uicontrol(hObject)
end

% --- Executes during object creation, after setting all properties.
function edit39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit40_Callback(hObject, eventdata, handles)
% hObject    handle to edit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit40 as text
%        str2double(get(hObject,'String')) returns contents of edit40 as a double
InString = get(hObject, 'String');
%InString = strrep(InString, ',', '.');
S = char(InString);
C = textscan(S, '%f');
eta_tot=cell2mat(C);

% eta_tot=str2double(InString);
% set(handles.edit40, 'String', InString);
% if isnan(eta_tot)
% errordlg('You must enter a numeric value','Invalid Input','modal')
% uicontrol(hObject)
% return
% else
% end
% if (eta_tot<0 | eta_tot>1)
%     errordlg('Value should range from 0 to 1','Invalid Input','modal')
% uicontrol(hObject)
% end

% --- Executes during object creation, after setting all properties.
function edit40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%  ------------------------------------------------------------
%Single plate: EN 12354-1:2014 4th draft, ANNEX B, page 27

%% PART 1 
length = str2double(get(handles.edit34,'String')); % plate dimentions
width = str2double(get(handles.edit35,'String')); % plate dimentions
h = str2double(get(handles.edit36,'String')); %plate thickness
rho = str2double(get(handles.edit37,'String')); % density of a plate
E = str2double(get(handles.edit38,'String')); %elasticity modulus
mu = str2double(get(handles.edit39,'String')); % poisson's ratio

S = char(get(handles.edit40,'String'));
C = textscan(S, '%f');
eta_tot=cell2mat(C);
eta_tot=eta_tot';

%try
eta_tot(eta_tot<0)=NaN;
eta_tot(eta_tot>1)=NaN;
if (length<=0||width<=0||h<=0||rho<1||rho>22650||E<0||E>32700||mu<-1||mu>0.5||any(isnan(eta_tot(:))));
     errordlg('One or more values are missing or exceed permissible range','Invalid Input','modal')
else

    if length>width;
    l1=length;
    l2=width;
    else
    l1=width;
    l2=length;
    end

m_surf=rho*h; % [kg/m^2]
c0=343;                                              % sound speed  [m/s]
rho0=1.21;                                             % density of sound in the air [kg/m^3] -ref(1)
cL=sqrt((E*10^9)/(rho*(1-mu^2)));                         %longitudonal wavespeed

f = [100 125 160 200 250 315 400 500 630 800 1000 1250 1600 2000 2500 3150 4000 5000]; 

fc=(c0^2)/(1.8*h*cL);                  % critical frequency panel 1 [Hz] ref.4(2.332)p.260

fc_ceil=ceil(fc);

lambda_air=c0/fc; 

% wavespeed at coincidence frequency [m] 
if (l1>=2*lambda_air)&&(l2>=2*lambda_air); % dimentions of a plate has to be much bigger than lambda_air (Condition_1)
   
k0=2.*pi.*f./c0; % wave number
LAMBDA=-0.964-(0.5+l2/(pi*l1))*log(l2/l1)+(5*l2)/(2*pi*l1)-1./(4*pi*l1*l2.*k0.^2);

sigma_f=0.5*(log(k0.*sqrt(l1*l2))-LAMBDA); % radiation factor for forced waves
x1= (sigma_f>2);
sigma_f(x1)=2;

% Radiation factor for free waves SIGMA, page 29
f11=(c0^2/(4*fc))*(1/l1^2+1/l2^2);
sigma1=1./(sqrt(1-fc./f));
sigma2=4.*l1.*l2.*(f./c0).^2;
sigma3=sqrt((2.*pi.*f.*(l1+l2))./(16.*c0));

if f11<=(fc/2);
   SIGMA=sigma1;
   y1=(f>(fc/2))&(f<fc);
   delta2_=0;
   lambda=sqrt(f./fc);
   delta1=((1-lambda.^2).*log((1+lambda)./(1-lambda))+2.*lambda)./(4*pi^2.*(1-lambda.^2).^1.5);
   SIGMA(y1)=(2.*(l1+l2)./(l1+l2)).*(c0./fc).*delta1(y1)+delta2_;

   y2= f<=(fc/2);
   delta2=(8*c0.^2.*(1-2.*lambda.^2))./(fc^2*pi^4*l1*l2.*lambda.*sqrt(1-lambda.^2));
    SIGMA(y2)=(2.*(l1+l2)./(l1+l2)).*(c0./fc).*delta1(y2)+delta2(y2);
   y3=(f<f11)&(f11<fc/2)&(SIGMA>sigma2);
   SIGMA(y3)=sigma2(y3);

else
    SIGMA=sigma3;
    z1=(f>fc) & (sigma1<sigma3);
    SIGMA(z1)=sigma1(z1);
    z2=(f<fc) & (sigma2<sigma3);
    SIGMA(z2)=sigma2(z2);

end
 
v1= (SIGMA>2);
SIGMA(v1)=2;

% Transmission factor tau, page 28
tau=((2.*rho0.*c0)./(2.*pi.*f.*m_surf)).^2.*((pi.*fc.*SIGMA.^2)./(2.*f.*eta_tot)); % transmission factor f>fc
q1= (f==fc);
tau(q1)=((2.*rho0.*c0)./(2.*pi.*f(q1).*m_surf)).^2.*((pi.*SIGMA(q1).^2)./(2.*eta_tot(q1)));
q2 =  (f<fc); 
tau(q2)=((2.*rho0.*c0)./(2.*pi.*f(q2).*m_surf)).^2.*(2.*sigma_f(q2).*(1-f(q2).^2./fc.^2).^(-2)+2.*((pi.*fc.*SIGMA(q2).^2)./(4.*f(q2).*eta_tot(q2))));

% Transmission loss R
TL=-10.*log10(tau); 

%% PART 2 
% Close_coincidence frequency
% This part finds the exact TL for coincidence frequency (which might be omitted in the code above (3rd octave band only), this code gives the plot
% for f range, close to coincidence frequency (Matlab Code from Stefan
% Schoenwald, I don't know the paper)

f1 = 10 : 2 : 200; % 
f2 = 210 : 2 :600; % 
f3 = 615 : 10 : 5000; % 
f4 = 5020 : 20 : 12000; % 

f_ = [f1 f2 f3 f4];
below_f = 0.50; % line 126
f_close = f_(find(f_ > below_f * fc, 1, 'first') : find(f_ < 1.8 * fc, 1, 'last'));

k0_close = 2.*pi.*f_close./ c0; % wave number
kpl_close = 2.* pi .*sqrt(f_close.*fc)./c0;
eps1_close = (rho0.*c0)./(m_surf.*2.*pi.*f_close);

%f_damp = [63 80 100 125 160 200 250 315 400 500 630 800 1000 1250 1600 2000 2500 3150 4000 5000];
f_damp = [100 125 160 200 250 315 400 500 630 800 1000 1250 1600 2000 2500 3150 4000 5000];

damping_v=eta_tot.*ones(1,18);

eta = interp1(f_damp,damping_v,f_,'pchip','extrap'); 
eta_close = eta(find(f_ > below_f * fc, 1, 'first') : find(f_ < 1.8 * fc, 1, 'last')); 

%NEAR COINCIDENCE line 219
%Evaluation of T(a, b)
a = length;
b = width;
shape = b/a;
alpha0 = (0.25.*k0_close.*a.*eta_close);

pause(1)
 w1 = waitbar(0.3,'Please wait 1...');
 pause(1)

ks = size(k0_close);
Int_ab = zeros(ks);
for r = 1 : ks(1, 2);
    Int_ab(r) = dblquad(@J_near_ab1, 0, 1, 0, shape, [], [], a, b, k0_close(r), kpl_close(r), eta_close(r)) + dblquad(@J_near_ab2, 1, 2, 0, shape, [], [], a, b, k0_close(r), kpl_close(r), eta_close(r));    
end

T_ab = -real((1./shape).^2.*k0_close.^2.*eps1_close.^2 ./ (4.*pi.*alpha0) .* Int_ab);

%Evaluation of T(b, a)
b = length;
a = width;
shape = b/a;
alpha0 = (0.25.*k0_close.*a.*eta_close);

w2=waitbar(0.6,w1,'Please wait 2...');  % removed wait, inserted w1
 pause(1)

Int_ab = zeros(ks);
for r = 1 : ks(1, 2);
    Int_ab(r) = dblquad(@J_near_ab1, 0, 1, 0, shape, [], [], a, b, k0_close(r), kpl_close(r), eta_close(r)) + dblquad(@J_near_ab2, 1, 2, 0, shape, [], [], a, b, k0_close(r), kpl_close(r), eta_close(r));    
end

T_ba = -real((1./shape).^2.*k0_close.^2.*eps1_close.^2 ./ (4.*pi.*alpha0) .* Int_ab);

E_close = T_ab + T_ba; % E_close=tau-> transmission factor

%Remove complex values and values equal and less 0
[E_close, f_close_real] = TL_real_only(f_close, E_close);

w2=waitbar(1.0,w1,'Please wait 3...');  
pause(1) % pauses for 1 s
close(w2);

%Transmission loss in close coincidence range
TL_close = 10.*log10(1./E_close);
%% PART 3 
% Combine  the graph from PART 1 with the graph from PART 2
TL_interp=interp1(f,TL,f_close); % matrix of TL values from PART 1 restricted to the range of f_close

% Find the frequency for which 2 graphs are the closest to each other (will be connected) f_point1, f_point2
% range f<fc
x=f_close<=fc;
diff_TL_smaller=abs(TL_close(x)-TL_interp(x)); % substraction of 2 graphs for f smaller than fc
min_x=min(diff_TL_smaller); % find the minimal difference between graphs

indicesDesMin_x = find( diff_TL_smaller == min_x ); % find all column numbers for min diff_TL_smaller(if more than one column is min)
Num_col_x=max(indicesDesMin_x); % find column number for min diff_TL_smaller the closest to fc

f_point1=f_close(Num_col_x); % frequency(<fc) at which graphs will be connected 

num_col_small=size(diff_TL_smaller,2); % number of column of diff_TL_smaller

% range f>fc
y=f_close>fc;
diff_TL_greater=abs(TL_close(y)-TL_interp(y)); % substraction of 2 graphs for f greater than fc
min_y=min(diff_TL_greater); % find the minimal difference between graphs

indicesDesMin_y = find( diff_TL_greater == min_y ); % find all column numbers for min diff_TL_smaller(if more than one column is min)
Num_col_y=min(indicesDesMin_y); % find column number for min diff_TL_smaller the closest to fc

f_point2=f_close(num_col_small+Num_col_y); % frequency(>fc) at which graphs will be connected 

% Connect the graphs
TL_fc=interp1(f,TL,fc); % find valuse of TL for fc, PART 1
TL_close_fc=interp1(f_close,TL_close,fc); % find valuse of TL for fc, PART 2

%if TL_close_fc< TL_fc ; % CONDITION_2 if graph from PART 2 in coincidence f. lies above the graph from PART 1 I plot graph from part 1 only

if isnan(min_x) || isempty(min_x);
            
c1=f<=f(end);
part1f=f(c1);

part1tl=TL(c1);
    
axis_x=[part1f]; % axis x =f
axis_y=[part1tl]; % axis x =TL
 
handles.M_pushes = handles.M_pushes + 1; % give the correct number in the legend 
my_str = sprintf('Single plate %g',handles.M_pushes); 
 
semilogx(axis_x,axis_y,'DisplayName',my_str);
grid on
ylabel('Transmission Loss [dB]');
xlabel ('Frequency')
xlim([80 10000])
title('Transmission Loss')
legend('-DynamicLegend','location','best')
hold all


        
else
    if isnan(min_y) || isempty(min_y)
     
c1=f<=f_point1;
c2=(f_close>=f_point1) & (f_close<=f(end));
fx1=f(c1); % vector for f<f_point1, f
fx=fx1(end); % the last column of a vecotr fx1, f
point1x=[fx,f_point1]; % vector 1x2
TLy1=TL(c1);
TLy=TLy1(end);
TLL=TL_close(c2);
point1y=[TLy,TLL(1)];

part1f=f(c1);
part2f=point1x;     
part3f=f_close(c2) ;       

part1tl=TL(c1);
part2tl=point1y  ;      
part3tl= TL_close(c2) ;       

 axis_x=[part1f,part2f,part3f]; % axis x =f
 axis_y=[part1tl,part2tl,part3tl]; % axis y =TL
 
handles.M_pushes = handles.M_pushes + 1; % give the correct number in the legend 
my_str = sprintf('Single plate %g',handles.M_pushes); 
 
semilogx(axis_x,axis_y,'DisplayName',my_str);
grid on
ylabel('Transmission Loss [dB]');
xlabel ('Frequency')
xlim([80 10000])
title('Transmission Loss')
legend('-DynamicLegend','location','best')
hold all


    else  
  
c1=f<=f_point1;
c2=(f_close>=f_point1) & (f_close<=f_point2);
c3=f>=f_point2;

% Fill the empty space between graphs (interpolation between 2 points)  (<f_point1) 
fx1=f(c1); % vector for f<f_point1, f
fx=fx1(end); % the last column of a vecotr fx1, f
point1x=[fx,f_point1];
TLy1=TL(c1);
TLy=TLy1(end);
TLL=TL_close(c2);
point1y=[TLy,TLL(1)];

% fill the empty space between graphs (interpolation between 2 points)  (>f_point2) 
fx4=f(c3); % vector for f>f_point2, f
fx=fx4(1); % the first column of a vecotr fx4, f
point1xx=[f_point2,fx];

TLy4=TL(c3);
TLy=TLy4(1);
TLL=TL_close(c2);
point1yy=[TLL(end),TLy];

part1f=f(c1);
part2f=point1x;     
part3f=f_close(c2) ;       
part4f=point1xx;
part5f=f(c3);

part1tl=TL(c1);
part2tl=point1y  ;      
part3tl= TL_close(c2) ;       
part4tl=point1yy;
part5tl=TL(c3);
   
 set(gca, 'XScale', 'log')    
 
 axis_x=[part1f,part2f,part3f,part4f,part5f]; % axis x =f
 axis_y=[part1tl,part2tl,part3tl,part4tl,part5tl]; % axis y =TL
 
handles.M_pushes = handles.M_pushes + 1; % give the correct number in the legend 
my_str = sprintf('Single plate %g',handles.M_pushes); 
 
semilogx(axis_x,axis_y,'DisplayName',my_str);
grid on
ylabel('Transmission Loss [dB]');
xlabel ('Frequency')
xlim([80 10000])
title('Transmission Loss')
legend('-DynamicLegend','location','best')
hold all

%guidata(hObject, handles); % it's needed for my_str = sprintf('Single plate %g',handles.M_pushes) to count correctly
    end
end
% else
%      handles.M_pushes = handles.M_pushes + 1; % give the correct number in the legend 
%     my_str = sprintf('Single plate %g',handles.M_pushes); 
%     
%       semilogx(f,TL,'DisplayName',my_str);
% grid on
% ylabel('Transmission Loss [dB]');
% xlabel ('Frequency')
% xlim([80 10000])
% title('Transmission Loss')
% legend('-DynamicLegend','location','best')
% hold all

    %CONDITION_2 If TL calculated according to part1 is lower than
    %according to part 2 then plot TL from part 1 only 
%end
else
    errordlg(sprintf('One or both dimentions are too small. The condition \nl1,l2 >> lambda_coin has to be fulfilled. \nlambda_coin - wavelength at coincidence frequency'));
    %CONDITION_1
end
end
guidata(hObject, handles);
%catch errorObj
%If there is a problem, we display the error message
%errordlg('One or more values are missing or exceed permissible range','Invalid Input','modal')
%end


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpdlg(sprintf('This section plots the transmission loss over the frequency range for a single plate. \nAssumptions made:\n-\n-'),'Single plate');


        


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpdlg(sprintf('Provide frequency dependent total loss factor for the single plate, as a vector 1x18, e.g:\n0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01,\nFrequency:100 125 160 200 250 315 400 500 630 800 1000 1250 1600 2000 2500 3150 4000 5000[Hz]'),'Total loss factor');


% --- Executes during object deletion, before destroying properties.
function axes6_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to axes6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes6
