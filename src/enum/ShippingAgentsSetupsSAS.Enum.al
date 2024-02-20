enum 1000000 "Shipping Agents Setups SAS" implements "Shipping Agents Coms SAS"
{
    DefaultImplementation = "Shipping Agents Coms SAS" = "No Implementation SAS";
    Extensible = true;
    UnknownValueImplementation = "Shipping Agents Coms SAS" = "No Implementation SAS";

    value(0; " ")
    {
        Caption = ' ', Comment = 'ESP=" "';
    }
    value(1; GLS)
    {
        Caption = 'GLS', Comment = 'ESP="GLS"';
        Implementation = "Shipping Agents Coms SAS" = "GLS SAS";
    }
    value(2; DHL)
    {
        Caption = 'DHL', Comment = 'ESP="DHL"';
        Implementation = "Shipping Agents Coms SAS" = "DHL SAS";
    }
    value(3; CTT)
    {
        Caption = 'CTT', Comment = 'ESP="CTT"';
        Implementation = "Shipping Agents Coms SAS" = "CTT SAS";
    }
}