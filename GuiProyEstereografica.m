function varargout = GuiProyEstereografica(varargin)
% GUIPROYESTEREOGRAFICA MATLAB code for GuiProyEstereografica.fig
%      GUIPROYESTEREOGRAFICA, by itself, creates a new GUIPROYESTEREOGRAFICA or raises the existing
%      singleton*.
%
%      H = GUIPROYESTEREOGRAFICA returns the handle to a new GUIPROYESTEREOGRAFICA or the handle to
%      the existing singleton*.
%
%      GUIPROYESTEREOGRAFICA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIPROYESTEREOGRAFICA.M with the given input arguments.
%
%      GUIPROYESTEREOGRAFICA('Property','Value',...) creates a new GUIPROYESTEREOGRAFICA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GuiProyEstereografica_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GuiProyEstereografica_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiProyEstereografica

% Last Modified by GUIDE v2.5 16-Sep-2020 08:26:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiProyEstereografica_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiProyEstereografica_OutputFcn, ...
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


% --- Executes just before GuiProyEstereografica is made visible.
function GuiProyEstereografica_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GuiProyEstereografica (see VARARGIN)

% Choose default command line output for GuiProyEstereografica
handles.output = hObject;

axes(handles.axes1)

xlim([-1,1]);
ylim([-1,1]);

axes(handles.axes2)
[X,Y,Z] = sphere();
surf(X,Y,Z,'facecolor', 'w', 'FaceAlpha', 0.5)
hold on

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiProyEstereografica wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GuiProyEstereografica_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
[x,y,button] = ginput(5);

plot(x,y,'-o')

axes(handles.axes1)

axes(handles.axes2)
hold on
t = 0:0.1:1;

p1 = x;
p2 = y;
n = length(p1);
for i = 2:n
    a = (1-t)*p1(i-1) + t*p1(i);
    b = (1-t)*p2(i-1) + t*p2(i);
    riemann(a,b)
    hold on
end

varargout{1} = handles.output;
