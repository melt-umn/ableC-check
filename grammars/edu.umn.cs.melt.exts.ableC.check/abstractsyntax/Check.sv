grammar edu:umn:cs:melt:exts:ableC:check:abstractsyntax;

imports edu:umn:cs:melt:ableC:abstractsyntax:host;
imports edu:umn:cs:melt:ableC:abstractsyntax:construction;
imports edu:umn:cs:melt:ableC:abstractsyntax:env;
imports edu:umn:cs:melt:ableC:abstractsyntax:injectable as inj;
imports silver:langutil;
imports silver:langutil:pp;

global MODULE_NAME :: String = "edu:umn:cs:melt:exts:ableC:check";

abstract production checkQualifier
top::Qualifier ::=
{
  top.pp = pp"check";
  top.mangledName = "check";
  top.qualIsPositive = true;
  top.qualIsNegative = true;
  top.qualAppliesWithinRef = true;
  top.qualCompat = \qualToCompare::Qualifier ->
    case qualToCompare of
      checkQualifier() -> true
    | _ -> false
    end;
  top.qualIsHost = false;
  top.errors := [];
}

