CREATE TABLE Experiment (
    experiment_id integer primary key AUTOINCREMENT,
    name text);
CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE Experiment_Properties (
    experiment_id integer not null,
    object_name text not null,
    field text not null,
    value longtext,
    constraint Experiment_Properties_pk primary key (experiment_id, object_name, field));
CREATE TABLE Per_Cells (
ImageNumber INTEGER
,
Cells_Number_Object_Number integer,
Cells_AreaShape_Area float,
Cells_AreaShape_BoundingBoxArea float,
Cells_AreaShape_BoundingBoxMaximum_X float,
Cells_AreaShape_BoundingBoxMaximum_Y float,
Cells_AreaShape_BoundingBoxMinimum_X float,
Cells_AreaShape_BoundingBoxMinimum_Y float,
Cells_AreaShape_Center_X float,
Cells_AreaShape_Center_Y float,
Cells_AreaShape_Compactness float,
Cells_AreaShape_ConvexArea float,
Cells_AreaShape_Eccentricity float,
Cells_AreaShape_EquivalentDiameter float,
Cells_AreaShape_EulerNumber float,
Cells_AreaShape_Extent float,
Cells_AreaShape_FormFactor float,
Cells_AreaShape_MajorAxisLength float,
Cells_AreaShape_MaxFeretDiameter float,
Cells_AreaShape_MaximumRadius float,
Cells_AreaShape_MeanRadius float,
Cells_AreaShape_MedianRadius float,
Cells_AreaShape_MinFeretDiameter float,
Cells_AreaShape_MinorAxisLength float,
Cells_AreaShape_Orientation float,
Cells_AreaShape_Perimeter float,
Cells_AreaShape_Solidity float,
Cells_AreaShape_Zernike_0_0 float,
Cells_AreaShape_Zernike_1_1 float,
Cells_AreaShape_Zernike_2_0 float,
Cells_AreaShape_Zernike_2_2 float,
Cells_AreaShape_Zernike_3_1 float,
Cells_AreaShape_Zernike_3_3 float,
Cells_AreaShape_Zernike_4_0 float,
Cells_AreaShape_Zernike_4_2 float,
Cells_AreaShape_Zernike_4_4 float,
Cells_AreaShape_Zernike_5_1 float,
Cells_AreaShape_Zernike_5_3 float,
Cells_AreaShape_Zernike_5_5 float,
Cells_AreaShape_Zernike_6_0 float,
Cells_AreaShape_Zernike_6_2 float,
Cells_AreaShape_Zernike_6_4 float,
Cells_AreaShape_Zernike_6_6 float,
Cells_AreaShape_Zernike_7_1 float,
Cells_AreaShape_Zernike_7_3 float,
Cells_AreaShape_Zernike_7_5 float,
Cells_AreaShape_Zernike_7_7 float,
Cells_AreaShape_Zernike_8_0 float,
Cells_AreaShape_Zernike_8_2 float,
Cells_AreaShape_Zernike_8_4 float,
Cells_AreaShape_Zernike_8_6 float,
Cells_AreaShape_Zernike_8_8 float,
Cells_AreaShape_Zernike_9_1 float,
Cells_AreaShape_Zernike_9_3 float,
Cells_AreaShape_Zernike_9_5 float,
Cells_AreaShape_Zernike_9_7 float,
Cells_AreaShape_Zernike_9_9 float,
Cells_Children_Cytoplasm_Count integer,
Cells_Intensity_IntegratedIntensityEdge_DNA float,
Cells_Intensity_IntegratedIntensityEdge_PH3 float,
Cells_Intensity_IntegratedIntensity_DNA float,
Cells_Intensity_IntegratedIntensity_PH3 float,
Cells_Intensity_LowerQuartileIntensity_DNA float,
Cells_Intensity_LowerQuartileIntensity_PH3 float,
Cells_Intensity_MADIntensity_DNA float,
Cells_Intensity_MADIntensity_PH3 float,
Cells_Intensity_MassDisplacement_DNA float,
Cells_Intensity_MassDisplacement_PH3 float,
Cells_Intensity_MaxIntensityEdge_DNA float,
Cells_Intensity_MaxIntensityEdge_PH3 float,
Cells_Intensity_MaxIntensity_DNA float,
Cells_Intensity_MaxIntensity_PH3 float,
Cells_Intensity_MeanIntensityEdge_DNA float,
Cells_Intensity_MeanIntensityEdge_PH3 float,
Cells_Intensity_MeanIntensity_DNA float,
Cells_Intensity_MeanIntensity_PH3 float,
Cells_Intensity_MedianIntensity_DNA float,
Cells_Intensity_MedianIntensity_PH3 float,
Cells_Intensity_MinIntensityEdge_DNA float,
Cells_Intensity_MinIntensityEdge_PH3 float,
Cells_Intensity_MinIntensity_DNA float,
Cells_Intensity_MinIntensity_PH3 float,
Cells_Intensity_StdIntensityEdge_DNA float,
Cells_Intensity_StdIntensityEdge_PH3 float,
Cells_Intensity_StdIntensity_DNA float,
Cells_Intensity_StdIntensity_PH3 float,
Cells_Intensity_UpperQuartileIntensity_DNA float,
Cells_Intensity_UpperQuartileIntensity_PH3 float,
Cells_Location_CenterMassIntensity_X_DNA float,
Cells_Location_CenterMassIntensity_X_PH3 float,
Cells_Location_CenterMassIntensity_Y_DNA float,
Cells_Location_CenterMassIntensity_Y_PH3 float,
Cells_Location_CenterMassIntensity_Z_DNA float,
Cells_Location_CenterMassIntensity_Z_PH3 float,
Cells_Location_Center_X float,
Cells_Location_Center_Y float,
Cells_Location_Center_Z float,
Cells_Location_MaxIntensity_X_DNA float,
Cells_Location_MaxIntensity_X_PH3 float,
Cells_Location_MaxIntensity_Y_DNA float,
Cells_Location_MaxIntensity_Y_PH3 float,
Cells_Location_MaxIntensity_Z_DNA float,
Cells_Location_MaxIntensity_Z_PH3 float,
Cells_Parent_Nuclei integer,
PRIMARY KEY (ImageNumber, Cells_Number_Object_Number) );
CREATE TABLE Per_Cytoplasm (
ImageNumber INTEGER
,
Cytoplasm_Number_Object_Number integer,
Cytoplasm_AreaShape_Area float,
Cytoplasm_AreaShape_BoundingBoxArea float,
Cytoplasm_AreaShape_BoundingBoxMaximum_X float,
Cytoplasm_AreaShape_BoundingBoxMaximum_Y float,
Cytoplasm_AreaShape_BoundingBoxMinimum_X float,
Cytoplasm_AreaShape_BoundingBoxMinimum_Y float,
Cytoplasm_AreaShape_Center_X float,
Cytoplasm_AreaShape_Center_Y float,
Cytoplasm_AreaShape_Compactness float,
Cytoplasm_AreaShape_ConvexArea float,
Cytoplasm_AreaShape_Eccentricity float,
Cytoplasm_AreaShape_EquivalentDiameter float,
Cytoplasm_AreaShape_EulerNumber float,
Cytoplasm_AreaShape_Extent float,
Cytoplasm_AreaShape_FormFactor float,
Cytoplasm_AreaShape_MajorAxisLength float,
Cytoplasm_AreaShape_MaxFeretDiameter float,
Cytoplasm_AreaShape_MaximumRadius float,
Cytoplasm_AreaShape_MeanRadius float,
Cytoplasm_AreaShape_MedianRadius float,
Cytoplasm_AreaShape_MinFeretDiameter float,
Cytoplasm_AreaShape_MinorAxisLength float,
Cytoplasm_AreaShape_Orientation float,
Cytoplasm_AreaShape_Perimeter float,
Cytoplasm_AreaShape_Solidity float,
Cytoplasm_AreaShape_Zernike_0_0 float,
Cytoplasm_AreaShape_Zernike_1_1 float,
Cytoplasm_AreaShape_Zernike_2_0 float,
Cytoplasm_AreaShape_Zernike_2_2 float,
Cytoplasm_AreaShape_Zernike_3_1 float,
Cytoplasm_AreaShape_Zernike_3_3 float,
Cytoplasm_AreaShape_Zernike_4_0 float,
Cytoplasm_AreaShape_Zernike_4_2 float,
Cytoplasm_AreaShape_Zernike_4_4 float,
Cytoplasm_AreaShape_Zernike_5_1 float,
Cytoplasm_AreaShape_Zernike_5_3 float,
Cytoplasm_AreaShape_Zernike_5_5 float,
Cytoplasm_AreaShape_Zernike_6_0 float,
Cytoplasm_AreaShape_Zernike_6_2 float,
Cytoplasm_AreaShape_Zernike_6_4 float,
Cytoplasm_AreaShape_Zernike_6_6 float,
Cytoplasm_AreaShape_Zernike_7_1 float,
Cytoplasm_AreaShape_Zernike_7_3 float,
Cytoplasm_AreaShape_Zernike_7_5 float,
Cytoplasm_AreaShape_Zernike_7_7 float,
Cytoplasm_AreaShape_Zernike_8_0 float,
Cytoplasm_AreaShape_Zernike_8_2 float,
Cytoplasm_AreaShape_Zernike_8_4 float,
Cytoplasm_AreaShape_Zernike_8_6 float,
Cytoplasm_AreaShape_Zernike_8_8 float,
Cytoplasm_AreaShape_Zernike_9_1 float,
Cytoplasm_AreaShape_Zernike_9_3 float,
Cytoplasm_AreaShape_Zernike_9_5 float,
Cytoplasm_AreaShape_Zernike_9_7 float,
Cytoplasm_AreaShape_Zernike_9_9 float,
Cytoplasm_Intensity_IntegratedIntensityEdge_DNA float,
Cytoplasm_Intensity_IntegratedIntensityEdge_PH3 float,
Cytoplasm_Intensity_IntegratedIntensity_DNA float,
Cytoplasm_Intensity_IntegratedIntensity_PH3 float,
Cytoplasm_Intensity_LowerQuartileIntensity_DNA float,
Cytoplasm_Intensity_LowerQuartileIntensity_PH3 float,
Cytoplasm_Intensity_MADIntensity_DNA float,
Cytoplasm_Intensity_MADIntensity_PH3 float,
Cytoplasm_Intensity_MassDisplacement_DNA float,
Cytoplasm_Intensity_MassDisplacement_PH3 float,
Cytoplasm_Intensity_MaxIntensityEdge_DNA float,
Cytoplasm_Intensity_MaxIntensityEdge_PH3 float,
Cytoplasm_Intensity_MaxIntensity_DNA float,
Cytoplasm_Intensity_MaxIntensity_PH3 float,
Cytoplasm_Intensity_MeanIntensityEdge_DNA float,
Cytoplasm_Intensity_MeanIntensityEdge_PH3 float,
Cytoplasm_Intensity_MeanIntensity_DNA float,
Cytoplasm_Intensity_MeanIntensity_PH3 float,
Cytoplasm_Intensity_MedianIntensity_DNA float,
Cytoplasm_Intensity_MedianIntensity_PH3 float,
Cytoplasm_Intensity_MinIntensityEdge_DNA float,
Cytoplasm_Intensity_MinIntensityEdge_PH3 float,
Cytoplasm_Intensity_MinIntensity_DNA float,
Cytoplasm_Intensity_MinIntensity_PH3 float,
Cytoplasm_Intensity_StdIntensityEdge_DNA float,
Cytoplasm_Intensity_StdIntensityEdge_PH3 float,
Cytoplasm_Intensity_StdIntensity_DNA float,
Cytoplasm_Intensity_StdIntensity_PH3 float,
Cytoplasm_Intensity_UpperQuartileIntensity_DNA float,
Cytoplasm_Intensity_UpperQuartileIntensity_PH3 float,
Cytoplasm_Location_CenterMassIntensity_X_DNA float,
Cytoplasm_Location_CenterMassIntensity_X_PH3 float,
Cytoplasm_Location_CenterMassIntensity_Y_DNA float,
Cytoplasm_Location_CenterMassIntensity_Y_PH3 float,
Cytoplasm_Location_CenterMassIntensity_Z_DNA float,
Cytoplasm_Location_CenterMassIntensity_Z_PH3 float,
Cytoplasm_Location_Center_X float,
Cytoplasm_Location_Center_Y float,
Cytoplasm_Location_MaxIntensity_X_DNA float,
Cytoplasm_Location_MaxIntensity_X_PH3 float,
Cytoplasm_Location_MaxIntensity_Y_DNA float,
Cytoplasm_Location_MaxIntensity_Y_PH3 float,
Cytoplasm_Location_MaxIntensity_Z_DNA float,
Cytoplasm_Location_MaxIntensity_Z_PH3 float,
Cytoplasm_Parent_Cells integer,
Cytoplasm_Parent_Nuclei integer,
PRIMARY KEY (ImageNumber, Cytoplasm_Number_Object_Number) );
CREATE TABLE Per_Nuclei (
ImageNumber INTEGER
,
Nuclei_Number_Object_Number integer,
Nuclei_AreaShape_Area float,
Nuclei_AreaShape_BoundingBoxArea float,
Nuclei_AreaShape_BoundingBoxMaximum_X float,
Nuclei_AreaShape_BoundingBoxMaximum_Y float,
Nuclei_AreaShape_BoundingBoxMinimum_X float,
Nuclei_AreaShape_BoundingBoxMinimum_Y float,
Nuclei_AreaShape_Center_X float,
Nuclei_AreaShape_Center_Y float,
Nuclei_AreaShape_Compactness float,
Nuclei_AreaShape_ConvexArea float,
Nuclei_AreaShape_Eccentricity float,
Nuclei_AreaShape_EquivalentDiameter float,
Nuclei_AreaShape_EulerNumber float,
Nuclei_AreaShape_Extent float,
Nuclei_AreaShape_FormFactor float,
Nuclei_AreaShape_MajorAxisLength float,
Nuclei_AreaShape_MaxFeretDiameter float,
Nuclei_AreaShape_MaximumRadius float,
Nuclei_AreaShape_MeanRadius float,
Nuclei_AreaShape_MedianRadius float,
Nuclei_AreaShape_MinFeretDiameter float,
Nuclei_AreaShape_MinorAxisLength float,
Nuclei_AreaShape_Orientation float,
Nuclei_AreaShape_Perimeter float,
Nuclei_AreaShape_Solidity float,
Nuclei_AreaShape_Zernike_0_0 float,
Nuclei_AreaShape_Zernike_1_1 float,
Nuclei_AreaShape_Zernike_2_0 float,
Nuclei_AreaShape_Zernike_2_2 float,
Nuclei_AreaShape_Zernike_3_1 float,
Nuclei_AreaShape_Zernike_3_3 float,
Nuclei_AreaShape_Zernike_4_0 float,
Nuclei_AreaShape_Zernike_4_2 float,
Nuclei_AreaShape_Zernike_4_4 float,
Nuclei_AreaShape_Zernike_5_1 float,
Nuclei_AreaShape_Zernike_5_3 float,
Nuclei_AreaShape_Zernike_5_5 float,
Nuclei_AreaShape_Zernike_6_0 float,
Nuclei_AreaShape_Zernike_6_2 float,
Nuclei_AreaShape_Zernike_6_4 float,
Nuclei_AreaShape_Zernike_6_6 float,
Nuclei_AreaShape_Zernike_7_1 float,
Nuclei_AreaShape_Zernike_7_3 float,
Nuclei_AreaShape_Zernike_7_5 float,
Nuclei_AreaShape_Zernike_7_7 float,
Nuclei_AreaShape_Zernike_8_0 float,
Nuclei_AreaShape_Zernike_8_2 float,
Nuclei_AreaShape_Zernike_8_4 float,
Nuclei_AreaShape_Zernike_8_6 float,
Nuclei_AreaShape_Zernike_8_8 float,
Nuclei_AreaShape_Zernike_9_1 float,
Nuclei_AreaShape_Zernike_9_3 float,
Nuclei_AreaShape_Zernike_9_5 float,
Nuclei_AreaShape_Zernike_9_7 float,
Nuclei_AreaShape_Zernike_9_9 float,
Nuclei_Children_Cells_Count integer,
Nuclei_Children_Cytoplasm_Count integer,
Nuclei_Children_PH3_Count integer,
Nuclei_Intensity_IntegratedIntensityEdge_DNA float,
Nuclei_Intensity_IntegratedIntensityEdge_PH3 float,
Nuclei_Intensity_IntegratedIntensity_DNA float,
Nuclei_Intensity_IntegratedIntensity_PH3 float,
Nuclei_Intensity_LowerQuartileIntensity_DNA float,
Nuclei_Intensity_LowerQuartileIntensity_PH3 float,
Nuclei_Intensity_MADIntensity_DNA float,
Nuclei_Intensity_MADIntensity_PH3 float,
Nuclei_Intensity_MassDisplacement_DNA float,
Nuclei_Intensity_MassDisplacement_PH3 float,
Nuclei_Intensity_MaxIntensityEdge_DNA float,
Nuclei_Intensity_MaxIntensityEdge_PH3 float,
Nuclei_Intensity_MaxIntensity_DNA float,
Nuclei_Intensity_MaxIntensity_PH3 float,
Nuclei_Intensity_MeanIntensityEdge_DNA float,
Nuclei_Intensity_MeanIntensityEdge_PH3 float,
Nuclei_Intensity_MeanIntensity_DNA float,
Nuclei_Intensity_MeanIntensity_PH3 float,
Nuclei_Intensity_MedianIntensity_DNA float,
Nuclei_Intensity_MedianIntensity_PH3 float,
Nuclei_Intensity_MinIntensityEdge_DNA float,
Nuclei_Intensity_MinIntensityEdge_PH3 float,
Nuclei_Intensity_MinIntensity_DNA float,
Nuclei_Intensity_MinIntensity_PH3 float,
Nuclei_Intensity_StdIntensityEdge_DNA float,
Nuclei_Intensity_StdIntensityEdge_PH3 float,
Nuclei_Intensity_StdIntensity_DNA float,
Nuclei_Intensity_StdIntensity_PH3 float,
Nuclei_Intensity_UpperQuartileIntensity_DNA float,
Nuclei_Intensity_UpperQuartileIntensity_PH3 float,
Nuclei_Location_CenterMassIntensity_X_DNA float,
Nuclei_Location_CenterMassIntensity_X_PH3 float,
Nuclei_Location_CenterMassIntensity_Y_DNA float,
Nuclei_Location_CenterMassIntensity_Y_PH3 float,
Nuclei_Location_CenterMassIntensity_Z_DNA float,
Nuclei_Location_CenterMassIntensity_Z_PH3 float,
Nuclei_Location_Center_X float,
Nuclei_Location_Center_Y float,
Nuclei_Location_Center_Z float,
Nuclei_Location_MaxIntensity_X_DNA float,
Nuclei_Location_MaxIntensity_X_PH3 float,
Nuclei_Location_MaxIntensity_Y_DNA float,
Nuclei_Location_MaxIntensity_Y_PH3 float,
Nuclei_Location_MaxIntensity_Z_DNA float,
Nuclei_Location_MaxIntensity_Z_PH3 float,
PRIMARY KEY (ImageNumber, Nuclei_Number_Object_Number) );
CREATE TABLE Per_PH3 (
ImageNumber INTEGER
,
PH3_Number_Object_Number integer,
PH3_Location_Center_X float,
PH3_Location_Center_Y float,
PH3_Location_Center_Z float,
PH3_Parent_Nuclei integer,
PRIMARY KEY (ImageNumber, PH3_Number_Object_Number) );
CREATE TABLE Per_Image (
ImageNumber INTEGER,
Image_Count_Cells integer,
Image_Count_Cytoplasm integer,
Image_Count_Nuclei integer,
Image_Count_PH3 integer,
Image_ExecutionTime_01Images float,
Image_ExecutionTime_02Metadata float,
Image_ExecutionTime_03NamesAndTypes float,
Image_ExecutionTime_04Groups float,
Image_ExecutionTime_05IdentifyPrimaryObjects float,
Image_ExecutionTime_06IdentifyPrimaryObjects float,
Image_ExecutionTime_07RelateObjects float,
Image_ExecutionTime_08IdentifySecondaryObjects float,
Image_ExecutionTime_09IdentifyTertiaryObjects float,
Image_ExecutionTime_10MeasureObjectIntensity float,
Image_ExecutionTime_11MeasureObjectSizeShape float,
Image_ExecutionTime_12OverlayOutlines float,
Image_ExecutionTime_13SaveImages float,
Image_ExecutionTime_14MaskImage float,
Image_ExecutionTime_15MaskImage float,
Image_ExecutionTime_16MaskImage float,
Image_ExecutionTime_17MaskImage float,
Image_FileName_DNA TEXT,
Image_FileName_OrigOverlay TEXT,
Image_FileName_PH3 TEXT,
Image_FileName_cellbody TEXT,
Image_Frame_DNA integer,
Image_Frame_PH3 integer,
Image_Frame_cellbody integer,
Image_Group_Index integer,
Image_Group_Length integer,
Image_Group_Number integer,
Image_Height_DNA integer,
Image_Height_PH3 integer,
Image_Height_cellbody integer,
Image_MD5Digest_DNA TEXT,
Image_MD5Digest_PH3 TEXT,
Image_MD5Digest_cellbody TEXT,
Image_PathName_DNA TEXT,
Image_PathName_OrigOverlay TEXT,
Image_PathName_PH3 TEXT,
Image_PathName_cellbody TEXT,
Image_Scaling_DNA float,
Image_Scaling_PH3 float,
Image_Scaling_cellbody float,
Image_Series_DNA integer,
Image_Series_PH3 integer,
Image_Series_cellbody integer,
Image_Threshold_FinalThreshold_Cells float,
Image_Threshold_FinalThreshold_Nuclei float,
Image_Threshold_FinalThreshold_PH3 float,
Image_Threshold_OrigThreshold_Cells float,
Image_Threshold_OrigThreshold_Nuclei float,
Image_Threshold_OrigThreshold_PH3 float,
Image_Threshold_SumOfEntropies_Cells float,
Image_Threshold_SumOfEntropies_Nuclei float,
Image_Threshold_SumOfEntropies_PH3 float,
Image_Threshold_WeightedVariance_Cells float,
Image_Threshold_WeightedVariance_Nuclei float,
Image_Threshold_WeightedVariance_PH3 float,
Image_Thumbnail_DNA longblob,
Image_Thumbnail_MaskDNACells longblob,
Image_Thumbnail_MaskDNACytoplasm longblob,
Image_Thumbnail_MaskDNANuclei longblob,
Image_Thumbnail_MaskDNAPH3 longblob,
Image_Thumbnail_OrigOverlay longblob,
Image_Thumbnail_PH3 longblob,
Image_Thumbnail_cellbody longblob,
Image_URL_DNA TEXT,
Image_URL_PH3 TEXT,
Image_URL_cellbody TEXT,
Image_Width_DNA integer,
Image_Width_PH3 integer,
Image_Width_cellbody integer,
Mean_Cells_AreaShape_Area float,
Mean_Cells_AreaShape_BoundingBoxArea float,
Mean_Cells_AreaShape_BoundingBoxMaximum_X float,
Mean_Cells_AreaShape_BoundingBoxMaximum_Y float,
Mean_Cells_AreaShape_BoundingBoxMinimum_X float,
Mean_Cells_AreaShape_BoundingBoxMinimum_Y float,
Mean_Cells_AreaShape_Center_X float,
Mean_Cells_AreaShape_Center_Y float,
Mean_Cells_AreaShape_Compactness float,
Mean_Cells_AreaShape_ConvexArea float,
Mean_Cells_AreaShape_Eccentricity float,
Mean_Cells_AreaShape_EquivalentDiameter float,
Mean_Cells_AreaShape_EulerNumber float,
Mean_Cells_AreaShape_Extent float,
Mean_Cells_AreaShape_FormFactor float,
Mean_Cells_AreaShape_MajorAxisLength float,
Mean_Cells_AreaShape_MaxFeretDiameter float,
Mean_Cells_AreaShape_MaximumRadius float,
Mean_Cells_AreaShape_MeanRadius float,
Mean_Cells_AreaShape_MedianRadius float,
Mean_Cells_AreaShape_MinFeretDiameter float,
Mean_Cells_AreaShape_MinorAxisLength float,
Mean_Cells_AreaShape_Orientation float,
Mean_Cells_AreaShape_Perimeter float,
Mean_Cells_AreaShape_Solidity float,
Mean_Cells_AreaShape_Zernike_0_0 float,
Mean_Cells_AreaShape_Zernike_1_1 float,
Mean_Cells_AreaShape_Zernike_2_0 float,
Mean_Cells_AreaShape_Zernike_2_2 float,
Mean_Cells_AreaShape_Zernike_3_1 float,
Mean_Cells_AreaShape_Zernike_3_3 float,
Mean_Cells_AreaShape_Zernike_4_0 float,
Mean_Cells_AreaShape_Zernike_4_2 float,
Mean_Cells_AreaShape_Zernike_4_4 float,
Mean_Cells_AreaShape_Zernike_5_1 float,
Mean_Cells_AreaShape_Zernike_5_3 float,
Mean_Cells_AreaShape_Zernike_5_5 float,
Mean_Cells_AreaShape_Zernike_6_0 float,
Mean_Cells_AreaShape_Zernike_6_2 float,
Mean_Cells_AreaShape_Zernike_6_4 float,
Mean_Cells_AreaShape_Zernike_6_6 float,
Mean_Cells_AreaShape_Zernike_7_1 float,
Mean_Cells_AreaShape_Zernike_7_3 float,
Mean_Cells_AreaShape_Zernike_7_5 float,
Mean_Cells_AreaShape_Zernike_7_7 float,
Mean_Cells_AreaShape_Zernike_8_0 float,
Mean_Cells_AreaShape_Zernike_8_2 float,
Mean_Cells_AreaShape_Zernike_8_4 float,
Mean_Cells_AreaShape_Zernike_8_6 float,
Mean_Cells_AreaShape_Zernike_8_8 float,
Mean_Cells_AreaShape_Zernike_9_1 float,
Mean_Cells_AreaShape_Zernike_9_3 float,
Mean_Cells_AreaShape_Zernike_9_5 float,
Mean_Cells_AreaShape_Zernike_9_7 float,
Mean_Cells_AreaShape_Zernike_9_9 float,
Mean_Cells_Children_Cytoplasm_Count float,
Mean_Cells_Intensity_IntegratedIntensityEdge_DNA float,
Mean_Cells_Intensity_IntegratedIntensityEdge_PH3 float,
Mean_Cells_Intensity_IntegratedIntensity_DNA float,
Mean_Cells_Intensity_IntegratedIntensity_PH3 float,
Mean_Cells_Intensity_LowerQuartileIntensity_DNA float,
Mean_Cells_Intensity_LowerQuartileIntensity_PH3 float,
Mean_Cells_Intensity_MADIntensity_DNA float,
Mean_Cells_Intensity_MADIntensity_PH3 float,
Mean_Cells_Intensity_MassDisplacement_DNA float,
Mean_Cells_Intensity_MassDisplacement_PH3 float,
Mean_Cells_Intensity_MaxIntensityEdge_DNA float,
Mean_Cells_Intensity_MaxIntensityEdge_PH3 float,
Mean_Cells_Intensity_MaxIntensity_DNA float,
Mean_Cells_Intensity_MaxIntensity_PH3 float,
Mean_Cells_Intensity_MeanIntensityEdge_DNA float,
Mean_Cells_Intensity_MeanIntensityEdge_PH3 float,
Mean_Cells_Intensity_MeanIntensity_DNA float,
Mean_Cells_Intensity_MeanIntensity_PH3 float,
Mean_Cells_Intensity_MedianIntensity_DNA float,
Mean_Cells_Intensity_MedianIntensity_PH3 float,
Mean_Cells_Intensity_MinIntensityEdge_DNA float,
Mean_Cells_Intensity_MinIntensityEdge_PH3 float,
Mean_Cells_Intensity_MinIntensity_DNA float,
Mean_Cells_Intensity_MinIntensity_PH3 float,
Mean_Cells_Intensity_StdIntensityEdge_DNA float,
Mean_Cells_Intensity_StdIntensityEdge_PH3 float,
Mean_Cells_Intensity_StdIntensity_DNA float,
Mean_Cells_Intensity_StdIntensity_PH3 float,
Mean_Cells_Intensity_UpperQuartileIntensity_DNA float,
Mean_Cells_Intensity_UpperQuartileIntensity_PH3 float,
Mean_Cells_Location_CenterMassIntensity_X_DNA float,
Mean_Cells_Location_CenterMassIntensity_X_PH3 float,
Mean_Cells_Location_CenterMassIntensity_Y_DNA float,
Mean_Cells_Location_CenterMassIntensity_Y_PH3 float,
Mean_Cells_Location_CenterMassIntensity_Z_DNA float,
Mean_Cells_Location_CenterMassIntensity_Z_PH3 float,
Mean_Cells_Location_Center_X float,
Mean_Cells_Location_Center_Y float,
Mean_Cells_Location_Center_Z float,
Mean_Cells_Location_MaxIntensity_X_DNA float,
Mean_Cells_Location_MaxIntensity_X_PH3 float,
Mean_Cells_Location_MaxIntensity_Y_DNA float,
Mean_Cells_Location_MaxIntensity_Y_PH3 float,
Mean_Cells_Location_MaxIntensity_Z_DNA float,
Mean_Cells_Location_MaxIntensity_Z_PH3 float,
Mean_Cells_Parent_Nuclei float,
Mean_Cytoplasm_AreaShape_Area float,
Mean_Cytoplasm_AreaShape_BoundingBoxArea float,
Mean_Cytoplasm_AreaShape_BoundingBoxMaximum_X float,
Mean_Cytoplasm_AreaShape_BoundingBoxMaximum_Y float,
Mean_Cytoplasm_AreaShape_BoundingBoxMinimum_X float,
Mean_Cytoplasm_AreaShape_BoundingBoxMinimum_Y float,
Mean_Cytoplasm_AreaShape_Center_X float,
Mean_Cytoplasm_AreaShape_Center_Y float,
Mean_Cytoplasm_AreaShape_Compactness float,
Mean_Cytoplasm_AreaShape_ConvexArea float,
Mean_Cytoplasm_AreaShape_Eccentricity float,
Mean_Cytoplasm_AreaShape_EquivalentDiameter float,
Mean_Cytoplasm_AreaShape_EulerNumber float,
Mean_Cytoplasm_AreaShape_Extent float,
Mean_Cytoplasm_AreaShape_FormFactor float,
Mean_Cytoplasm_AreaShape_MajorAxisLength float,
Mean_Cytoplasm_AreaShape_MaxFeretDiameter float,
Mean_Cytoplasm_AreaShape_MaximumRadius float,
Mean_Cytoplasm_AreaShape_MeanRadius float,
Mean_Cytoplasm_AreaShape_MedianRadius float,
Mean_Cytoplasm_AreaShape_MinFeretDiameter float,
Mean_Cytoplasm_AreaShape_MinorAxisLength float,
Mean_Cytoplasm_AreaShape_Orientation float,
Mean_Cytoplasm_AreaShape_Perimeter float,
Mean_Cytoplasm_AreaShape_Solidity float,
Mean_Cytoplasm_AreaShape_Zernike_0_0 float,
Mean_Cytoplasm_AreaShape_Zernike_1_1 float,
Mean_Cytoplasm_AreaShape_Zernike_2_0 float,
Mean_Cytoplasm_AreaShape_Zernike_2_2 float,
Mean_Cytoplasm_AreaShape_Zernike_3_1 float,
Mean_Cytoplasm_AreaShape_Zernike_3_3 float,
Mean_Cytoplasm_AreaShape_Zernike_4_0 float,
Mean_Cytoplasm_AreaShape_Zernike_4_2 float,
Mean_Cytoplasm_AreaShape_Zernike_4_4 float,
Mean_Cytoplasm_AreaShape_Zernike_5_1 float,
Mean_Cytoplasm_AreaShape_Zernike_5_3 float,
Mean_Cytoplasm_AreaShape_Zernike_5_5 float,
Mean_Cytoplasm_AreaShape_Zernike_6_0 float,
Mean_Cytoplasm_AreaShape_Zernike_6_2 float,
Mean_Cytoplasm_AreaShape_Zernike_6_4 float,
Mean_Cytoplasm_AreaShape_Zernike_6_6 float,
Mean_Cytoplasm_AreaShape_Zernike_7_1 float,
Mean_Cytoplasm_AreaShape_Zernike_7_3 float,
Mean_Cytoplasm_AreaShape_Zernike_7_5 float,
Mean_Cytoplasm_AreaShape_Zernike_7_7 float,
Mean_Cytoplasm_AreaShape_Zernike_8_0 float,
Mean_Cytoplasm_AreaShape_Zernike_8_2 float,
Mean_Cytoplasm_AreaShape_Zernike_8_4 float,
Mean_Cytoplasm_AreaShape_Zernike_8_6 float,
Mean_Cytoplasm_AreaShape_Zernike_8_8 float,
Mean_Cytoplasm_AreaShape_Zernike_9_1 float,
Mean_Cytoplasm_AreaShape_Zernike_9_3 float,
Mean_Cytoplasm_AreaShape_Zernike_9_5 float,
Mean_Cytoplasm_AreaShape_Zernike_9_7 float,
Mean_Cytoplasm_AreaShape_Zernike_9_9 float,
Mean_Cytoplasm_Intensity_IntegratedIntensityEdge_DNA float,
Mean_Cytoplasm_Intensity_IntegratedIntensityEdge_PH3 float,
Mean_Cytoplasm_Intensity_IntegratedIntensity_DNA float,
Mean_Cytoplasm_Intensity_IntegratedIntensity_PH3 float,
Mean_Cytoplasm_Intensity_LowerQuartileIntensity_DNA float,
Mean_Cytoplasm_Intensity_LowerQuartileIntensity_PH3 float,
Mean_Cytoplasm_Intensity_MADIntensity_DNA float,
Mean_Cytoplasm_Intensity_MADIntensity_PH3 float,
Mean_Cytoplasm_Intensity_MassDisplacement_DNA float,
Mean_Cytoplasm_Intensity_MassDisplacement_PH3 float,
Mean_Cytoplasm_Intensity_MaxIntensityEdge_DNA float,
Mean_Cytoplasm_Intensity_MaxIntensityEdge_PH3 float,
Mean_Cytoplasm_Intensity_MaxIntensity_DNA float,
Mean_Cytoplasm_Intensity_MaxIntensity_PH3 float,
Mean_Cytoplasm_Intensity_MeanIntensityEdge_DNA float,
Mean_Cytoplasm_Intensity_MeanIntensityEdge_PH3 float,
Mean_Cytoplasm_Intensity_MeanIntensity_DNA float,
Mean_Cytoplasm_Intensity_MeanIntensity_PH3 float,
Mean_Cytoplasm_Intensity_MedianIntensity_DNA float,
Mean_Cytoplasm_Intensity_MedianIntensity_PH3 float,
Mean_Cytoplasm_Intensity_MinIntensityEdge_DNA float,
Mean_Cytoplasm_Intensity_MinIntensityEdge_PH3 float,
Mean_Cytoplasm_Intensity_MinIntensity_DNA float,
Mean_Cytoplasm_Intensity_MinIntensity_PH3 float,
Mean_Cytoplasm_Intensity_StdIntensityEdge_DNA float,
Mean_Cytoplasm_Intensity_StdIntensityEdge_PH3 float,
Mean_Cytoplasm_Intensity_StdIntensity_DNA float,
Mean_Cytoplasm_Intensity_StdIntensity_PH3 float,
Mean_Cytoplasm_Intensity_UpperQuartileIntensity_DNA float,
Mean_Cytoplasm_Intensity_UpperQuartileIntensity_PH3 float,
Mean_Cytoplasm_Location_CenterMassIntensity_X_DNA float,
Mean_Cytoplasm_Location_CenterMassIntensity_X_PH3 float,
Mean_Cytoplasm_Location_CenterMassIntensity_Y_DNA float,
Mean_Cytoplasm_Location_CenterMassIntensity_Y_PH3 float,
Mean_Cytoplasm_Location_CenterMassIntensity_Z_DNA float,
Mean_Cytoplasm_Location_CenterMassIntensity_Z_PH3 float,
Mean_Cytoplasm_Location_Center_X float,
Mean_Cytoplasm_Location_Center_Y float,
Mean_Cytoplasm_Location_MaxIntensity_X_DNA float,
Mean_Cytoplasm_Location_MaxIntensity_X_PH3 float,
Mean_Cytoplasm_Location_MaxIntensity_Y_DNA float,
Mean_Cytoplasm_Location_MaxIntensity_Y_PH3 float,
Mean_Cytoplasm_Location_MaxIntensity_Z_DNA float,
Mean_Cytoplasm_Location_MaxIntensity_Z_PH3 float,
Mean_Cytoplasm_Parent_Cells float,
Mean_Cytoplasm_Parent_Nuclei float,
Mean_Nuclei_AreaShape_Area float,
Mean_Nuclei_AreaShape_BoundingBoxArea float,
Mean_Nuclei_AreaShape_BoundingBoxMaximum_X float,
Mean_Nuclei_AreaShape_BoundingBoxMaximum_Y float,
Mean_Nuclei_AreaShape_BoundingBoxMinimum_X float,
Mean_Nuclei_AreaShape_BoundingBoxMinimum_Y float,
Mean_Nuclei_AreaShape_Center_X float,
Mean_Nuclei_AreaShape_Center_Y float,
Mean_Nuclei_AreaShape_Compactness float,
Mean_Nuclei_AreaShape_ConvexArea float,
Mean_Nuclei_AreaShape_Eccentricity float,
Mean_Nuclei_AreaShape_EquivalentDiameter float,
Mean_Nuclei_AreaShape_EulerNumber float,
Mean_Nuclei_AreaShape_Extent float,
Mean_Nuclei_AreaShape_FormFactor float,
Mean_Nuclei_AreaShape_MajorAxisLength float,
Mean_Nuclei_AreaShape_MaxFeretDiameter float,
Mean_Nuclei_AreaShape_MaximumRadius float,
Mean_Nuclei_AreaShape_MeanRadius float,
Mean_Nuclei_AreaShape_MedianRadius float,
Mean_Nuclei_AreaShape_MinFeretDiameter float,
Mean_Nuclei_AreaShape_MinorAxisLength float,
Mean_Nuclei_AreaShape_Orientation float,
Mean_Nuclei_AreaShape_Perimeter float,
Mean_Nuclei_AreaShape_Solidity float,
Mean_Nuclei_AreaShape_Zernike_0_0 float,
Mean_Nuclei_AreaShape_Zernike_1_1 float,
Mean_Nuclei_AreaShape_Zernike_2_0 float,
Mean_Nuclei_AreaShape_Zernike_2_2 float,
Mean_Nuclei_AreaShape_Zernike_3_1 float,
Mean_Nuclei_AreaShape_Zernike_3_3 float,
Mean_Nuclei_AreaShape_Zernike_4_0 float,
Mean_Nuclei_AreaShape_Zernike_4_2 float,
Mean_Nuclei_AreaShape_Zernike_4_4 float,
Mean_Nuclei_AreaShape_Zernike_5_1 float,
Mean_Nuclei_AreaShape_Zernike_5_3 float,
Mean_Nuclei_AreaShape_Zernike_5_5 float,
Mean_Nuclei_AreaShape_Zernike_6_0 float,
Mean_Nuclei_AreaShape_Zernike_6_2 float,
Mean_Nuclei_AreaShape_Zernike_6_4 float,
Mean_Nuclei_AreaShape_Zernike_6_6 float,
Mean_Nuclei_AreaShape_Zernike_7_1 float,
Mean_Nuclei_AreaShape_Zernike_7_3 float,
Mean_Nuclei_AreaShape_Zernike_7_5 float,
Mean_Nuclei_AreaShape_Zernike_7_7 float,
Mean_Nuclei_AreaShape_Zernike_8_0 float,
Mean_Nuclei_AreaShape_Zernike_8_2 float,
Mean_Nuclei_AreaShape_Zernike_8_4 float,
Mean_Nuclei_AreaShape_Zernike_8_6 float,
Mean_Nuclei_AreaShape_Zernike_8_8 float,
Mean_Nuclei_AreaShape_Zernike_9_1 float,
Mean_Nuclei_AreaShape_Zernike_9_3 float,
Mean_Nuclei_AreaShape_Zernike_9_5 float,
Mean_Nuclei_AreaShape_Zernike_9_7 float,
Mean_Nuclei_AreaShape_Zernike_9_9 float,
Mean_Nuclei_Children_Cells_Count float,
Mean_Nuclei_Children_Cytoplasm_Count float,
Mean_Nuclei_Children_PH3_Count float,
Mean_Nuclei_Intensity_IntegratedIntensityEdge_DNA float,
Mean_Nuclei_Intensity_IntegratedIntensityEdge_PH3 float,
Mean_Nuclei_Intensity_IntegratedIntensity_DNA float,
Mean_Nuclei_Intensity_IntegratedIntensity_PH3 float,
Mean_Nuclei_Intensity_LowerQuartileIntensity_DNA float,
Mean_Nuclei_Intensity_LowerQuartileIntensity_PH3 float,
Mean_Nuclei_Intensity_MADIntensity_DNA float,
Mean_Nuclei_Intensity_MADIntensity_PH3 float,
Mean_Nuclei_Intensity_MassDisplacement_DNA float,
Mean_Nuclei_Intensity_MassDisplacement_PH3 float,
Mean_Nuclei_Intensity_MaxIntensityEdge_DNA float,
Mean_Nuclei_Intensity_MaxIntensityEdge_PH3 float,
Mean_Nuclei_Intensity_MaxIntensity_DNA float,
Mean_Nuclei_Intensity_MaxIntensity_PH3 float,
Mean_Nuclei_Intensity_MeanIntensityEdge_DNA float,
Mean_Nuclei_Intensity_MeanIntensityEdge_PH3 float,
Mean_Nuclei_Intensity_MeanIntensity_DNA float,
Mean_Nuclei_Intensity_MeanIntensity_PH3 float,
Mean_Nuclei_Intensity_MedianIntensity_DNA float,
Mean_Nuclei_Intensity_MedianIntensity_PH3 float,
Mean_Nuclei_Intensity_MinIntensityEdge_DNA float,
Mean_Nuclei_Intensity_MinIntensityEdge_PH3 float,
Mean_Nuclei_Intensity_MinIntensity_DNA float,
Mean_Nuclei_Intensity_MinIntensity_PH3 float,
Mean_Nuclei_Intensity_StdIntensityEdge_DNA float,
Mean_Nuclei_Intensity_StdIntensityEdge_PH3 float,
Mean_Nuclei_Intensity_StdIntensity_DNA float,
Mean_Nuclei_Intensity_StdIntensity_PH3 float,
Mean_Nuclei_Intensity_UpperQuartileIntensity_DNA float,
Mean_Nuclei_Intensity_UpperQuartileIntensity_PH3 float,
Mean_Nuclei_Location_CenterMassIntensity_X_DNA float,
Mean_Nuclei_Location_CenterMassIntensity_X_PH3 float,
Mean_Nuclei_Location_CenterMassIntensity_Y_DNA float,
Mean_Nuclei_Location_CenterMassIntensity_Y_PH3 float,
Mean_Nuclei_Location_CenterMassIntensity_Z_DNA float,
Mean_Nuclei_Location_CenterMassIntensity_Z_PH3 float,
Mean_Nuclei_Location_Center_X float,
Mean_Nuclei_Location_Center_Y float,
Mean_Nuclei_Location_Center_Z float,
Mean_Nuclei_Location_MaxIntensity_X_DNA float,
Mean_Nuclei_Location_MaxIntensity_X_PH3 float,
Mean_Nuclei_Location_MaxIntensity_Y_DNA float,
Mean_Nuclei_Location_MaxIntensity_Y_PH3 float,
Mean_Nuclei_Location_MaxIntensity_Z_DNA float,
Mean_Nuclei_Location_MaxIntensity_Z_PH3 float,
Mean_PH3_Location_Center_X float,
Mean_PH3_Location_Center_Y float,
Mean_PH3_Location_Center_Z float,
Mean_PH3_Parent_Nuclei float,
PRIMARY KEY (ImageNumber) );
CREATE TABLE Per_Experiment (
Pipeline_Pipeline longblob,
CellProfiler_Version TEXT,
Run_Timestamp TEXT,
Modification_Timestamp TEXT);
CREATE TABLE Per_RelationshipTypes (relationship_type_id integer primary key, module_number integer, relationship varchar(255), object_name1 varchar(255), object_name2 varchar(255), CONSTRAINT Per_RelationshipTypesUnique UNIQUE ( relationship_type_id, module_number, relationship, object_name1, object_name2 ));
CREATE TABLE Per_Relationships ( relationship_type_id integer, image_number1 integer, object_number1 integer, image_number2 integer, object_number2 integer ,CONSTRAINT Per_RRTypeIdFK FOREIGN KEY ( relationship_type_id )  REFERENCES Per_RelationshipTypes ( relationship_type_id ) ,CONSTRAINT Per_RelationshipUnique UNIQUE ( relationship_type_id, image_number1, object_number1, image_number2, object_number2 ));
CREATE INDEX Per_IRelationships1 ON Per_Relationships ( image_number1, object_number1, relationship_type_id );
CREATE INDEX Per_IRelationships2 ON Per_Relationships ( image_number2, object_number2, relationship_type_id );
CREATE VIEW Per_RelationshipsView AS SELECT T.module_number, T.relationship, T.object_name1, T.object_name2, R.image_number1, R.object_number1, R.image_number2, R.object_number2 FROM Per_RelationshipTypes T JOIN Per_Relationships R ON  T.relationship_type_id = R.relationship_type_id
/* Per_RelationshipsView(module_number,relationship,object_name1,object_name2,image_number1,object_number1,image_number2,object_number2) */;
