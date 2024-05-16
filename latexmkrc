# @cus_dep_list = (@cus_dep_list, "glo gls 0 makenomenclature");
# sub makenomenclature {
#    system("makeindex $_[0].glo -s nomencl.ist -o $_[0].gls"); }
# @generated_exts = (@generated_exts, 'glo');
# $makeindex='makeindex AdjointBEM.nlo -s nomencl.ist -o AdjointBEM.nls';
add_cus_dep( 'nlo', 'nls', 0, 'makenlo2nls' );
sub makenlo2nls {
system( "makeindex -s nomencl.ist -o \"$_[0].nls\" \"$_[0].nlo\"" );
}