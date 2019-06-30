
function mriImage = AllInOneGUILess()
    global VObj;
    global VCtl;
    global VMag;
    global VCoi;
    global VMot;
    global VVar;
    global VSig;

    global VMmg;
    global VMco;
    global VMgd;


    spinMap = LoadImage(); %This loads the image from the .mat file into the workspace
    %and extracts the necessary variables into an array
    
    image = Localizer(spinMap); %This localizes the image.
    PreScan();  
    Scan(image);
%     postScan();
%     SaveImage();
end