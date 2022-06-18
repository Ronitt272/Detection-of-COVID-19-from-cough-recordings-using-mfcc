# Detection-of-COVID-19-from-cough-recordings-using-mfcc
This project makes use of Mel Frequency Cepstral Coefficients to perform COVID-19 detection. 
The cough recordings of COVID-19 positive and negative patients are provided as input. 
- The cough recordings used for the purpose of this project were extracted from https://virufy.org/en/, and were given as input to the MATLAB code.(Providing Datasets) 
- The Mel Frequency Cepstral Coefficients (MFCC) corresponding to the cough recordings were obtained, and these coefficeints were used to detect COVID-19 in patients. (Feature Extraction Step) 
- Statistical analysis was performed by calculating the standard deviation of the MFCC coefficients (features) obtained, and classifying these features as COVID-19 positive or negative on the basis of a particular range. (Prediction Model Design) 
