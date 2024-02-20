pageextension 1000001 "ShippingAgents SAS" extends "Shipping Agents"
{
    layout
    {
        addlast(Control1)
        {
            field("Shipping Agent Setup SAS"; Rec."Shipping Agent Setup SAS")
            {
                ApplicationArea = All;
            }
        }
    }
}