codeunit 1000003 "CTT SAS" implements "Shipping Agents Coms SAS"
{
    procedure SendShipment();
    begin
        Message('Sent to CTT');
    end;

    procedure GetTrackingInfo();
    begin
        Message('Tracking No. from CTT');
    end;

    procedure GetShipmentLabel();
    begin
        Message('Label from CTT');
    end;
}