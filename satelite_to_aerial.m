clc;
clear all;
z=0;

filename = ['s2.jpg'];

img = imread(filename);
% imshow(img);
title('Input Image');

temp = img;


% for road

for i=1:693
    for j=1:1238
        for k = 1:3
            if k == 1
                if temp(i,j,k)>90 && temp(i,j,k)<150 %Red colour range for background
%                     temp(i,j,k) = 0;
                else
                    continue;
                end
            elseif k == 2
                if temp(i,j,k)>90 && temp(i,j,k)<110 %Red colour range for background
%                     temp(i,j,k) = 0;
                else
                    continue;
                end
            else
                if temp(i,j,k)>100 && temp(i,j,k)<130
                    temp(i,j,1) = 255;
                    temp(i,j,2) = 255;
                    temp(i,j,3) = 255;
                end
            end
        end
    end
end

% for green

for i=1:693
    for j=1:1238
        for k = 1:3
            if k == 1
                if temp(i,j,k)>40 && temp(i,j,k)<90 %Red colour range for background
%                     temp(i,j,k) = 0;
                else
                    continue;
                end
            elseif k == 2
                if temp(i,j,k)>40 && temp(i,j,k)<90 %Red colour range for background
%                     temp(i,j,k) = 0;
                else
                    continue;
                end
            else
                if temp(i,j,k)>30 && temp(i,j,k)<90
                    temp(i,j,1) = 0;
                    temp(i,j,2) = 0;
                    temp(i,j,3) = 0;
                end
            end
        end
    end
end

% for buildings

for i=1:693
    for j=1:1238
        for k = 1:3
            if k == 1
                if temp(i,j,k)>170 && temp(i,j,k)<220 %Red colour range for background
%                     temp(i,j,k) = 0;
                else
                    continue;
                end
            elseif k == 2
                if temp(i,j,k)>160 && temp(i,j,k)<190 %Red colour range for background
%                     temp(i,j,k) = 0;
                else
                    continue;
                end
            else
                if temp(i,j,k)>150 && temp(i,j,k)<250
                    temp(i,j,1) = 255;
                    temp(i,j,2) = 0;
                    temp(i,j,3) = 0;
                end
            end
        end
    end
end


% for i=2:610
%     for j=2:1066
%         for k=1:3
%             q = (temp(i-1,j-1,k) + temp(i-1,j,k) + temp(i,j+1,k) + ...
%                 temp(i,j-1,k) + temp(i,j,k) + temp(i,j+1,k) + ...
%                 temp(i+1,j-1,k) + temp(i+1,j,k) + temp(i+1,j+1,k)) + 100;
%             temp(i,j,k) = q;
%         end
%     end
% end


imshow(temp);
title('Background Removed');
