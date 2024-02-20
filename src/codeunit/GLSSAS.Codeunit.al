codeunit 1000001 "GLS SAS" implements "Shipping Agents Coms SAS"
{
    procedure SendShipment();
    begin
        Message('Sent to GLS');
    end;

    procedure GetTrackingInfo();
    begin
        Message('Tracking No. from GLS');
    end;

    procedure GetShipmentLabel();
    begin
        Message('Label from GLS');
    end;
}