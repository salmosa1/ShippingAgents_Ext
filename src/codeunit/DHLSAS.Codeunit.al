codeunit 1000002 "DHL SAS" implements "Shipping Agents Coms SAS"
{
    procedure SendShipment();
    begin
        Message('Sent to DHL');
    end;

    procedure GetTrackingInfo();
    begin
        Message('Tracking No. from DHL');
    end;

    procedure GetShipmentLabel();
    begin
        Message('Label from DHL');
    end;
}