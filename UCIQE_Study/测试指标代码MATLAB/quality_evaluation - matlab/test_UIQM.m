%% Non-Commercial End-User License Agreement for ?Underwater Image Quality Measure (UIQM)?
% This End-User License Agreement (?EULA?) is a legal agreement between you, 
% an individual whose name is specified on the registration form (hereafter 
% ?You? or ?Your?) for the Products, (defined below) and Tufts University 
% (hereafter ?Tufts?).  This EULA governs Your use of ?UIQM? 
% (hereafter the ?Software Product?) along with supporting documentation 
% (hereafter the ?Documentation?).  This Software Product is licensed and not
% sold.  By downloading, installing, copying or otherwise using the Products, 
% you agree to be bound by the terms of this EULA.  Should you have any questions
% about this EULA, please contact karen@ece.tufts.edu.

% 1.	Grant of License.  This EULA grants You a non-exclusive, non-transferable 
%       license to use the Products along with the following rights.

%         a.	You may download and use an unlimited number of copies of the 
%             Software Product on an unlimited number of computers used solely
%             by You solely for Your personal use, for Your educational or other 
%             non-commercial research or for Your pedagogical use.  
%             The Software Product is in use on a computer when it is loaded 
%             into temporary memory or installed into permanent memory and 
%             executed on that computer (?Use?).  Installation on a network 
%             server for the purpose of distribution to one or more other 
%             computer(s) shall not constitute ?Use? as defined herein.  
% 
%         b.	Solely with respect to the Documentation, you may make an unlimited
%             number of copies either in hardcopy or electronic form, provided that
%             such copies shall be used solely by You.

% 2.	Ownership.  Except as expressly licensed to you in this EULA, 
%         Tufts University retains all right, title and interest in and to the 
%         Software Product.   

% 3.	   Copyright.  All title and copyrights in and to the Software Product
%        and Documentation (together the ?Products?) including any copies of
%        the Products are owned by Tufts.  The Products are protected by copyright
%        laws and international treaty provisions.  Therefore, you must treat the 
%        Products like any other copyrighted material except that you may make a 
%        reasonable number of copies of the Products solely for back-up and recovery
%        purposes.  The Software Product and Documentation are copyright ? 2018, 
%        Tufts University.

% 4.	Other Rights, Obligations and Limitations.  

%             a.	You may not reverse engineer, decompile, or disassemble any 
%             component of the Software Product, except and only to the extent
%             that such activity is expressly permitted by applicable law, 
%             notwithstanding this limitation.
% 
%             b.	You may not rent or lease the Products.
% 
%             c.	You may not transfer or assign any of your rights under this EULA.            
% 
%             d.	Tufts may terminate this EULA immediately if you fail to comply
%                 with any of the terms of this EULA.  In such event, you must 
%                 destroy all copies of the Products.
% 
%             e.	Use of the Products for any commercial purposes is strictly 
%                 prohibited.  If you wish to obtain ?UIQM? 
%                 for commercial use, including, without limitation, using 
%                 ?UIQM? to provide services to outside
%                 parties for a fee, you will need to execute a separate license
%                 agreement and pay a fee.  To use the Products for commercial
%                 purposes, please contact the following:

%                         Tufts University 
%                         Office for Technology Transfer and Industry Collaboration
%                         136 Harrison Avenue (75K-950)
%                         Boston, MA  02111
%                         Attn: Director

%             f.	The Products are provided to You by Tufts solely as a courtesy 
%                 and without any obligation by Tufts to provide accompanying 
%                 services or support.
% 
%             g.	Should You want to provide the developers of the Products with 
%                 feedback, please send your comments to karen@ece.tufts.edu.


% 5.	Disclaimer of Warranty.
% 
%             a.	The Products are provided to you ?as is? with no warranty 
%                 of any kind, either expressed or implied.  To the maximum 
%                 extent permitted by applicable law, Tufts disclaims all 
%                 warranties, either expressed or implied, including, but not 
%                 limited to, implied warranties of merchantability and fitness 
%                 for a particular purpose, with regard to the Products.  
%                 You assume the entire risk of using the Products.  
%                 Any liability of Tufts will be limited to replacement of 
%                 the Products.
% 
%             b.	To the maximum extent permitted by applicable law, in no 
%                 event shall Tufts be liable for any special, incidental,
%                 indirect or consequential damages whatsoever, (including
%                 without limitation, damages for loss of profits, business 
%                 interruption, loss of data or any other loss) arising out of 
%                 the use of or inability to use the Products, even if Tufts has
%                 been advised of the possibility of such damages.  Because some 
%                 states and jurisdictions do not allow the exclusion or limitation
%                 of liability for consequential or incidental damages,
%                 the foregoing limitation may not apply to you.

% 6.	Publishing results involving  ?UIQM?.   If use of 
%     the Products results in outcomes which will be published or publicized 
%     in any way, please specify the version of the Products You used and cite
%     the following reference:
%     ?UIQM? , Version 1.0, Copyright 2018, Tufts University. 
% 
% 7.	Miscellaneous.
% 
%         a.	This EULA is governed by the laws of the Commonwealth of Massachusetts.
%             In the event of any dispute arising from this EULA or from an alleged 
%             violation of its terms, the parties agree that the exclusive 
%             jurisdiction for such dispute shall be in the state and federal 
%             courts located in the Commonwealth of Massachusetts and agree to
%             waive any claim that such courts lack appropriate jurisdiction. 
% 
%         b.	You agree that any violation of paragraphs 4 a., b., c., d., or e. 
%             may cause irreparable harm to Tufts and that Tufts shall have the 
%             right to appropriate relief, including, without limitation,
%             injunctive relief.
% 
%         * * * * *
% 
%% 



%%





%% Help
%The UIQM function takes in an underwater image as input and returns the it's
%quality measurements: colrofulness, Sharpness, contrast and UIQM.
%call to the function:
%I = imread('image.jpg');
% UIQM_norm = UIQM(I);
%or
%[UIQM_norm, UICM, UISM, UIConM] = UIQM(I);
%where: UIQM_norm is the normalized Underwater Image Quality Measurement
% UICM = colorfulness measurement 
%UISM = Sharpness measurement 
%UIConM = Contrast measurement 

clc
clear all;
close all;

I = imread('5_raw.jpg');

[UIQM_norm, colrfulness, sharpness, contrast] = UIQM(I)
%[UIQM_norm,  col] = UIQM(I)





