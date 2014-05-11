HKH_QTY = xlsread('Training_Set_HKH.xlsx','Quantity Data')
clr
clc
HKH_NUM = xlsread('Training_Set_HKH.xlsx','Food Item Data');
date_vector = [datenum('01-Jun-2013'):datenum('01-Jun-2013')+213];
month_vector = month(date_vector);
month_vector = month(date_vector[1]);
month_vector = month(date_vector(1));
date_vector = '01-Jun-2013':'31-Dec-2013';
date_vector = [datenum('01-Jun-2013'):datenum('01-Jun-2013')+213];
[~,month,day]=gpsdate(date_vector);
[~,month,day]=gpsdate(date_vector');
day = day - 0.5;
Ys = HKH_QTY(:,2:n);
Ys = HKH_QTY(:,2:end);
Xs = HKH_QTY(:,1:end-1);
Xs = [1; day(1:end-1)'; month(1:end-1'; Xs];
Xs = [1; day(1:end-1)'; month(1:end-1'); Xs];
Xs = [day(1:end-1)'; month(1:end-1'); Xs];
Xs = [1; day(1:end-1)'; month(1:end-1)'; Xs];
Xs = [1; day(1:end-1); month(1:end-1); Xs];
Xs = [day(1:end-1)'; month(1:end-1)'; Xs];
Xs = [ones(1,213); Xs];
Bs = (X'*X)\(X'*Y);
Bs = (Xs'*Xs)\(Xs'*Ys);
clc
Ys = HKH_QTY(1,2:end);
Xs = [ones(1,213),day(1:end-1)',month(1:end-1)',HKH_QTY(1,1:end-1)];
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_QTY(1,1:end-1)];
Bs = (Xs'*Xs)\(Xs'*Ys);
Xs = Xs';
Ys = Ys';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Bs * Xs';
Y_hats = Xs * Bs;
Y_comp = [Ys Y_hats];
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_QTY(1,1:end-1);HKH_NUM(2:end)];
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_QTY(1,1:end-1);HKH_NUM(1,2:end)];
Bs = (Xs'*Xs)\(Xs'*Ys);
Xs = Xs';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
Y_comp = [Ys Y_hats];
R2 = [Ys'*Y_hats]\[Ys*Ys];
R2 = [Ys'*Y_hats]\[Ys'*Ys];
SSR = sum((Y_hats-mean(Ys).^2);
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(1,2:end)]';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
Y_comp = [Ys Y_hats];
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
clc
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(5,2:end)]';
Ys = HKH_QTY(5,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(19,2:end)]';
Ys = HKH_QTY(19,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(49,2:end)]';
Ys = HKH_QTY(19,49:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Ys = HKH_QTY(49,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(80,2:end)]';
Ys = HKH_QTY(80,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(126,2:end)]';
Ys = HKH_QTY(126,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(155,2:end)]';
Ys = HKH_QTY(155,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
clc
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(182,2:end)]';
Ys = HKH_QTY(182,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(220,2:end)]';
Ys = HKH_QTY(220,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(245,2:end)]';
Ys = HKH_QTY(245,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(265,2:end)]';
Ys = HKH_QTY(265,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
VKH_QTY = xlsread('Training_Set_VKH.xlsx','Quantity Data');
VKH_NUM = xlsread('Training_Set_VKH.xlsx','Food Item Data');
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(4,2:end)]';
Ys = VKH_QTY(4,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(22,2:end)]';
Ys = VKH_QTY(22,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(57,2:end)]';
Ys = VKH_QTY(57,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(74,2:end)]';
Ys = VKH_QTY(74,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(116,2:end)]';
Ys = VKH_QTY(116,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(148,2:end)]';
Ys = VKH_QTY(148,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(168,2:end)]';
Ys = VKH_QTY(168,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(206,2:end)]';
Ys = VKH_QTY(206,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(230,2:end)]';
Ys = VKH_QTY(230,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(262,2:end)]';
Ys = VKH_QTY(262,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Bs = Bs';
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(168,2:end)]';
Ys = VKH_QTY(168,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(148,2:end)]';
Ys = VKH_QTY(148,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(116,2:end)]';
Ys = VKH_QTY(116,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(74,2:end)]';
Ys = VKH_QTY(74,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(57,2:end)]';
Ys = VKH_QTY(57,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';VKH_NUM(4,2:end)]';
Ys = VKH_QTY(4,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(265,2:end)]';
Ys = HKH_QTY(265,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(245,2:end)]';
Ys = HKH_QTY(245,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(220,2:end)]';
Ys = HKH_QTY(220,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(182,2:end)]';
Ys = HKH_QTY(182,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(155,2:end)]';
Ys = HKH_QTY(155,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(126,2:end)]';
Ys = HKH_QTY(126,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(80,2:end)]';
Ys = HKH_QTY(80,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(49,2:end)]';
Ys = HKH_QTY(49,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(19,2:end)]';
Ys = HKH_QTY(19,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(5,2:end)]';
Ys = HKH_QTY(5,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
Y_hats = Xs * Bs;
SSR = sum((Y_hats-mean(Ys)).^2);
SST = sum((Ys-mean(Ys)).^2);
R2 = SSR/SST;
[1 1 1 2] * Bs
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(19,2:end)]';
Ys = HKH_QTY(19,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
[1 1 1 2] * Bs
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(49,2:end)]';
Ys = HKH_QTY(49,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
[1 1 1 2] * Bs
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(80,2:end)]';
Ys = HKH_QTY(80,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
[1 1 1 2] * Bs
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(126,2:end)]';
Ys = HKH_QTY(126,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
[1 1 1 2] * Bs
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(155,2:end)]';
Ys = HKH_QTY(155,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
[1 1 1 2] * Bs
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(182,2:end)]';
Ys = HKH_QTY(182,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
[1 1 1 2] * Bs
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(220,2:end)]';
Ys = HKH_QTY(220,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
[1 1 1 2] * Bs
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(245,2:end)]';
Ys = HKH_QTY(245,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
[1 1 1 2] * Bs
Xs = [ones(1,213);day(1:end-1)';month(1:end-1)';HKH_NUM(265,2:end)]';
Ys = HKH_QTY(265,2:end)';
Bs = (Xs'*Xs)\(Xs'*Ys);
[1 1 1 2] * Bs