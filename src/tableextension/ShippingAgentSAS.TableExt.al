tableextension 1000000 "ShippingAgent SAS" extends "Shipping Agent"
{
    fields
    {
        field(1000000; "Shipping Agent Setup SAS"; Enum "Shipping Agents Setups SAS")
        {
            Caption = 'Shipping Agent Setup', Comment = 'ESP="Conf. transportista"';
            DataClassification = CustomerContent;
        }
    }

    procedure GetShipAgentSetupSAS(ShipAgCode: Code[10]): Enum "Shipping Agents Setups SAS";
    var
        ShipAg: Record "Shipping Agent";
    begin
        ShipAg.Get(ShipAgCode);
        exit(ShipAg."Shipping Agent Setup SAS");
    end;
}