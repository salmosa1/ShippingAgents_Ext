pageextension 1000000 "SalesOrder SAS" extends "Sales Order"
{
    actions
    {
        addlast(navigation)
        {
            group("ShipAgeSer SAS")
            {
                Caption = 'Shipping Agent', Comment = 'ESP="Transportista"';
                action("SendShptToShippAg SAS")
                {
                    ApplicationArea = All;
                    Caption = 'Send to Shipping Agent', Comment = 'ESP="Enviar a transportista"';
                    Image = ExportShipment;

                    trigger OnAction();
                    var
                        ShippAg: Record "Shipping Agent";
                        ShippAgComs: Interface "Shipping Agents Coms SAS";
                    begin
                        Rec.TestField("Shipping Agent Code");
                        ShippAgComs := ShippAg.GetShipAgentSetupSAS(Rec."Shipping Agent Code");
                        ShippAgComs.SendShipment();
                    end;
                }
                action("GetTrackingInfo SAS")
                {
                    ApplicationArea = All;
                    Caption = 'Tracking Information', Comment = 'ESP="Seguimiento de envío"';
                    Image = OrderTracking;

                    trigger OnAction();
                    var
                        ShippAg: Record "Shipping Agent";
                        ShippAgComs: Interface "Shipping Agents Coms SAS";
                    begin
                        Rec.TestField("Shipping Agent Code");
                        ShippAgComs := ShippAg.GetShipAgentSetupSAS(Rec."Shipping Agent Code");
                        ShippAgComs.GetTrackingInfo();
                    end;
                }
                action("GetShipmentLabel SAS")
                {
                    ApplicationArea = All;
                    Caption = 'GetShipmentLabel', Comment = 'ESP="Descargar etiqueta de envío"';
                    Image = BarCode;

                    trigger OnAction();
                    var
                        ShippAg: Record "Shipping Agent";
                        ShippAgComs: Interface "Shipping Agents Coms SAS";
                    begin
                        Rec.TestField("Shipping Agent Code");
                        ShippAgComs := ShippAg.GetShipAgentSetupSAS(Rec."Shipping Agent Code");
                        ShippAgComs.GetShipmentLabel();
                    end;
                }
            }
        }
    }
}