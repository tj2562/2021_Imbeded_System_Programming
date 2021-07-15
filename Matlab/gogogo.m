
    function varargout = gogogo(varargin)
    % GOGOGO MATLAB code for gogogo.fig
    %      GOGOGO, by itself, creates a new GOGOGO or raises the existing
    %      singleton*.
   
    %      H = GOGOGO returns the handle to a new GOGOGO or the handle to
    %      the existing singleton*.
    %
    %      GOGOGO('CALLBACK',hObject,eventData,handles,...) calls the local
    %      function named CALLBACK in GOGOGO.M with the given input arguments.
    %
    %      GOGOGO('Property','Value',...) creates a new GOGOGO or raises the
    %      existing singleton*.  Starting from the left, property lue pairs
    %      are+
    %      applied to the GUI before gogogo_OpeningFcn gets called.  An
    %      unrecognized property name or invalid value makes property application
    %      stop.  All inputs are passed to gogogo_OpeningFcn via varargin.
    %
    %      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
    %      instance to run (singleton)".
    %
    % See also: GUIDE, GUIDATA, GUIHANDLES

    % Edit the above text to modify the response to help gogogo

    % Last Modified by GUIDE v2.5 10-Nov-2020 20:29:57

    % Begin initialization code - DO NOT EDIT
    gui_Singleton = 1;
    gui_State = struct('gui_Name',       mfilename, ...
                       'gui_Singleton',  gui_Singleton, ...
                       'gui_OpeningFcn', @gogogo_OpeningFcn, ...
                       'gui_OutputFcn',  @gogogo_OutputFcn, ...
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


    % --- Executes just before gogogo is made visible.
    function gogogo_OpeningFcn(hObject, eventdata, handles, varargin)
    % This function has no output args, see OutputFcn.
    % hObject    handle to figure
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    % varargin   command line arguments to gogogo (see VARARGIN)

    % Choose default command line output for gogogo
    handles.output = hObject;
    global str
    str = []
    % Update handles structure
    guidata(hObject, handles);


    % UIWAIT makes gogogo wait for user response (see UIRESUME)
    % uiwait(handles.figure1);



    % --- Outputs from this function are returned to the command line.
    function varargout = gogogo_OutputFcn(hObject, eventdata, handles) 
    % varargout  cell array for returning output args (see VARARGOUT);
    % hObject    handle to figure
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)

    % Get default command line output from handles structure
    varargout{1} = handles.output;


    % --- Executes on button press in pushbutton1.
    function pushbutton1_Callback(hObject, eventdata, handles)
    % hObject    handle to pushbutton1 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    global str
    str = [str 1];
    set(handles.Sendedit,'String', num2str(str));



    % --- Executes on button press in pushbutton2.
    function pushbutton2_Callback(hObject, eventdata, handles)
    % hObject    handle to pushbutton2 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    global str
    str = [str 2];
    set(handles.Sendedit,'String', num2str(str));


    % --- Executes on button press in pushbutton3.
    function pushbutton3_Callback(hObject, eventdata, handles)
    % hObject    handle to pushbutton3 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    global str
    str = [str 3];
    set(handles.Sendedit,'String', num2str(str));


    % --- Executes on button press in pushbutton4.
    function pushbutton4_Callback(hObject, eventdata, handles)
    % hObject    handle to pushbutton4 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    global str
    str = [str 4];
    set(handles.Sendedit,'String', num2str(str));


    % --- Executes on button press in pushbutton5.
    function pushbutton5_Callback(hObject, eventdata, handles)
    % hObject    handle to pushbutton5 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    global str
    str = [str 5];
    set(handles.Sendedit,'String', num2str(str));


    % --- Executes on button press in pushbutton6.
    function pushbutton6_Callback(hObject, eventdata, handles)
    % hObject    handle to pushbutton6 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    global str
    str = [str 6];
    set(handles.Sendedit,'String', num2str(str));

    % --- Executes on button press in pushbutton7.
    function pushbutton7_Callback(hObject, eventdata, handles)
    % hObject    handle to pushbutton7 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    global str
    str = [str 7];
    set(handles.Sendedit,'String', num2str(str));

    % --- Executes on button press in pushbutton8.
    function pushbutton8_Callback(hObject, eventdata, handles)
    % hObject    handle to pushbutton8 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    global str
    str = [str 8];
    set(handles.Sendedit,'String', num2str(str));

    % --- Executes on button press in pushbutton9.
    function pushbutton9_Callback(hObject, eventdata, handles)
    % hObject    handle to pushbutton9 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    global str
    str = [str 9];
    set(handles.Sendedit,'String', num2str(str));


    function Sendedit_Callback(hObject, eventdata, handles)
    % hObject    handle to Sendedit (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)

    % Hints: get(hObject,'String') returns contents of Sendedit as text
    %        str2double(get(hObject,'String')) returns contents of Sendedit as a double


    % --- Executes during object creation, after setting all properties.
    function Sendedit_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to Sendedit (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called

    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end


    % --- Executes on button press in Enterbutton.
    function Enterbutton_Callback(hObject, eventdata, handles)
    % hObject    handle to Enterbutton (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    global str
    global sendTableNum
    if length(str) >= 4
        sendTableNum = str(1:4);
        str = str(5:end);
    elseif length(str) < 4
        sendTableNum = str(1:end);
        str = [];
    end
    set(handles.Sendedit,'String', num2str(str));


    global sendTableNum
    global device

    userInput = sendTableNum
    s = [ 12 22 21 31 41 51 61 61 63 63 53 43 43 33 23];
    t = [ 22 21 31 41 51 61 71 63 73 53 43 33 41 23 22];
    w = [ 1  1  1  1  1  1  1  2  1  1  1  1  2  1  1];
    G = graph(s,t,w);
    %plot(G,'EdgeLabel',G.Edges.Weight)
    hold on

    tableNum = [0 0 0 0 0 0 0 0 0];
    tableNode = [];
    for i = 1:length(userInput)
        a= userInput(i);
        tableNum(userInput(i)) = 1;
        tableNode = [tableNode 0];
    end

    tableNum  = reshape(tableNum,3,3)';



    weight_1 = dot([3 2 1],tableNum(:,1));
    weight_3 = dot([3 2 1],tableNum(:,3));

    orderSum = sum(tableNum);
    if orderSum(1) > orderSum(3)
        startLine = 1;
    elseif orderSum(1) < orderSum(3)
        startLine = 3;
    else
        if weight_1 < weight_3
            startLine = 1;
        elseif weight_1 > weight_3
            startLine = 3;
        else
            startLine = 1; %default = line 1
        end
    end

    for i = 1:length(tableNode)
        if userInput(i) == 1
           tableNode(i) = 71;
        elseif userInput(i) == 2
           if startLine == 1
               tableNode(i) = 71;
           elseif startLine == 3
               tableNode(i) = 73;
           end
        elseif userInput(i) == 3
           tableNode(i) = 73;
        elseif userInput(i) == 4
           tableNode(i) = 51;
        elseif userInput(i) == 5
           if startLine == 1
               tableNode(i) = 51;
           elseif startLine == 3
               tableNode(i) = 53;
           end
        elseif userInput(i) == 6
           tableNode(i) = 53;
        elseif userInput(i) == 7
           tableNode(i) = 31;
        elseif userInput(i) == 8
           if startLine == 1
               tableNode(i) = 31;
           elseif startLine == 3
               tableNode(i) = 33;
           end
        elseif userInput(i) == 9
           tableNode(i) = 33;
        end
    end

    line_3 = [0,0,0,0];
    line_1 = [0,0,0,0];
    tableNode = [unique(tableNode(1,:))]
    for i =  1:length(tableNode)
        if rem(tableNode(i),10) == 3
            line_3(i) = tableNode(i);
        elseif rem(tableNode(i),10) == 1
            line_1(i) = tableNode(i);
        end
    end
    line_1 = nonzeros(line_1)'
    line_3 = nonzeros(line_3)'
    if startLine == 1
        tableNode = [line_1 sort(line_3,'descend')]
    elseif startLine == 3
        tableNode = [line_3 sort(line_1,'descend')]
    end
    command = [];

    for i =  1:length(tableNode)
        tableNode(i)
        if tableNode(i) == 31
            if (length(find(userInput == 7)) && length(find(userInput == 8))) ~= 0 
                command = [command '2'];
                userInput(find(userInput==7))=0;
                userInput(find(userInput==8))=0;
                command
            elseif find(userInput == 7) ~= 0
                command = [command '1'];
                userInput(find(userInput==7))=0;                
            else
                command = [command '0'];
                userInput(find(userInput==8))=0;
            end
        elseif tableNode(i) == 51
           if (length(find(userInput == 4)) && length(find(userInput == 5))) ~= 0 
                command = [command '2'];
                userInput(find(userInput==4))=0;
                userInput(find(userInput==5))=0;
                
            elseif find(userInput == 4) ~= 0
                command = [command '1'];
                userInput(find(userInput==4))=0;
            else
                command = [command '0'];
                userInput(find(userInput==5))=0;
            end
        elseif tableNode(i) == 71
            if (length(find(userInput == 1)) && length(find(userInput == 2))) ~= 0 
                command = [command '2'];
                userInput(find(userInput==1))=0;
                userInput(find(userInput==2))=0;

            elseif find(userInput == 1) ~= 0
                command = [command '1'];
                userInput(find(userInput==1))=0;
                
            else
                command = [command '0'];
                userInput(find(userInput==1))=0;
            end
        elseif tableNode(i) == 33
            if (length(find(userInput == 8)) && length(find(userInput == 9))) ~= 0 
                command = [command '2'];
                userInput(find(userInput==8))=0;
                userInput(find(userInput==9))=0;
            elseif find(userInput == 8) ~= 0
                command = [command '1'];
                userInput(find(userInput==8))=0;
            else
                command = [command '0'];
                userInput(find(userInput==9))=0;
                command
            end
        elseif tableNode(i) == 53
            if (length(find(userInput == 5)) && length(find(userInput == 6))) ~= 0 
                command = [command '2'];
                userInput(find(userInput==5))=0;
                userInput(find(userInput==6))=0;
            elseif find(userInput == 5) ~= 0
                command = [command '1'];
                userInput(find(userInput==5))=0;
            else
                command = [command '0'];
                userInput(find(userInput==6))=0;
            end
        elseif tableNode(i) == 73
            if (length(find(userInput == 2)) && length(find(userInput == 3))) ~= 0 
                command = [command '2'];
                userInput(find(userInput==2))=0;
                userInput(find(userInput==3))=0;
            elseif find(userInput == 2) ~= 0
                command = [command '1'];
                userInput(find(userInput==2))=0;
            else
                command = [command '0'];
                userInput(find(userInput==3))=0;
            end
        end
    end
    userInput
    tableNode = [12 tableNode 12]  %%%%%%%%%%%%%%%%%%%% �迭 �۽�
    figure(1)
    t = tiledlayout(1,length(tableNode)-1); % Requires R2019b or later
    title(t,'Route Argorithm')
    t.TileSpacing = 'compact';
    t.Padding = 'none';
    t.TileSpacing = 'none';
    tablex = [0 0 0 2 2 2 4 4 4 2];
    tabley = [3 5 7 3 5 7 3 5 7 1];
    tablen = [7 4 1 8 5 2 9 6 3 0];
    mapy = [ 0.85 0.85 7.15 7.15 0.85];
    mapx = [ -0.5 4.5 4.5 -0.5 -0.5];
    write(device,'s',"uint8")

    for i = 1:length(tableNode)-1
        startTable = tableNode(i);
        endTable = tableNode(i+1);
        [P,d] = shortestpath(G,startTable,endTable);
        P
            write(device,'n',"uint8")
            x = rem(P,10);
            y = abs(fix(P/10));
            nexttile;
            plot(mapx, mapy, '-')
            hold on
            plot(tablex,tabley,'s','MarkerSize', 15, 'Color', 'Black')
            text(tablex,tabley,cellstr(num2str(tablen')),'HorizontalAlignment','center');
            hold on
            plot(x,y,'-d','MarkerIndices',length(P), 'Color' , 'Red')
            grid
            axis([-2 6 0 8])
            write(device, P,"uint8")
    end
    command
    write(device,'t',"uint8")
    for i = 1:length(command)
        write(device,str2num(command(i)),"uint8")
    end
    write(device,'e',"uint8")



    % --- Executes on selection change in Setcomportmenu.
    function Setcomportmenu_Callback(hObject, eventdata, handles)
    % hObject    handle to Setcomportmenu (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)

    % Hints: contents = cellstr(get(hObject,'String')) returns Setcomportmenu contents as cell array
    %        contents{get(hObject,'Value')} returns selected item from Setcomportmenu


    % --- Executes during object creation, after setting all properties.
    function Setcomportmenu_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to Setcomportmenu (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called

    % Hint: popupmenu controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end


    % --- Executes on button press in Connectbutton.
    function Connectbutton_Callback(hObject, eventdata, handles)
    % hObject    handle to Connectbutton (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    global device
    device = serialport("COM5",9600)
    configureTerminator(device,"CR")
    device.Terminator



    % --- Executes on button press in Disconnectbutton.
    function Disconnectbutton_Callback(hObject, eventdata, handles)
    % hObject    handle to Disconnectbutton (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)

