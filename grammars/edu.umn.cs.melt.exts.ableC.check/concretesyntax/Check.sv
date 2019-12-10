grammar edu:umn:cs:melt:exts:ableC:check:concretesyntax;

imports edu:umn:cs:melt:ableC:concretesyntax;
imports edu:umn:cs:melt:ableC:abstractsyntax:host as abs;
imports edu:umn:cs:melt:ableC:abstractsyntax:construction as abs;
imports silver:langutil only ast; 

imports edu:umn:cs:melt:exts:ableC:check:abstractsyntax;

marking terminal CheckBounds_t 'check' lexer classes {Keyword, Global};

concrete production checkTypeQualifier_c
top::TypeQualifier_c ::= 'check'
{
  top.typeQualifiers = abs:foldQualifier([checkQualifier(location=top.location)]);
  top.mutateTypeSpecifiers = [];
}


