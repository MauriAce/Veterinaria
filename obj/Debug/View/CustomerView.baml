   M S B A M L   `   `   `  ????F  BVeterinaria, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Veterinaria.ViewVeterinaria.View  5      #    Veterinaria.View.CustomerView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:Veterinaria.View     5      X TFontAwesome.Sharp, Version=6.1.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      .??5
      ?   ? RowDefinitions  5   
   ?? 5      $??50 ?6   ?? 5      .+?5   
   ? $??0??6    ? ColumnDefinitions 5      ?? 5      $??* ?6#   ?? 5      $	??120 ?6#   .+?5      ??  ?? Orientation$ 
Horizontal=?6   $	??Top=?5      $??0??5      .+?5      !  FontAwesome.Sharp.IconImage  ?  ?FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.1.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ Search=?6   $??20??6-   $??20??69      plainTextColor3   
Foreground# [  6D   ?? 5      $??	Buscar...??6   $??13(?5      $??24??5      $	??300??5      
?????? $??Medium"?5      $??
Montserrat)?5      #??[  5       ?? 
CaretBrush# [  5       #??[  5!      $??0,0,0,1q?5"      $??Center=?5#      $??5,5,0,0q?5$      61   5%      ?? 5&      -   5        $??1??5&      $??Nuevo??5(      $??12(?5)      $??
Montserrat)?5*       ? Cursor$
 Hand??5+      $??0q?5,      
???????$	??Top=?5.      ??5'      ?? *LoginCommand+??5/      ?? 50       ?? 
TargetType" ??6   .?51      ??  ?? Property ? ??	 ?? Value	 ?#773DFF67   ?? 52       ? ??	 53      ?? 54   "   
 ?? 
TargetType"
 ??62   .R?55   &   ?? $??30??6-    ?? CornerRadius$ 15??56   5   #??z??57   5   ._?58   *   ?? $??Center=?6;   $??Center=?59   G   5:   '   5;   #   5=       ?? Triggers 5>      P? 5?       P? Property ?@J?IsMouseOver P? Value . . ?5@   "   ??  ? ??	 ?#836EFB6?   5A      5C      5E      5G      ?? 5H   
   $??1??6   ???#200F53$ 10??5J       ?? Padding$ 10q?5K      ._?5M      &   System.Windows.Controls.DataGrid  -   5        $??DG??5M         AutoGenerateColumns .     
IsReadOnly . $??0??6O   $??1??6_      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6l   ???#200F53$??0q?5O         ColumnHeaderStyle 5P      ?? 5Q      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .?5R      ??  ? ??
	 ???? 67   ?? 5S       ? ??	 ?#BCBEE067   ?? 5T       ? ??$	 	10,0,0,10q?64   ?? 5U       ? ??$	 
Montserrat)?67   ?? 5V       ? ??$	 15(?65   5W         Columns 5Y      0  *System.Windows.Controls.DataGridTextColumn  5Z      ,  &System.Windows.Controls.DataGridColumn   Header$ ID??6g      HeaderStringFormat$  ??6s   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   ?? *Id+   ClipboardContentBinding 6@   ?? *Id+6s     5[      $ Nombre??6g    6)   ?? *Nombre+ 6D   Z? 6g     5\      $ Apellido??6i    6)   ?? *
Apellido+ 6F   Z? 6i     5]      $ 	Teléfono??6i    6)   ?? *
Telefono+ 6F   Z? 6i     5^      $
 Mail??6e    6)   ?? *Mail+ 6B   Z? 6e     5_      $ 
Dirección??6j    6)   ?? *	Direccion+ 6G   Z? 6j   4	  .System.Windows.Controls.DataGridTemplateColumn	  5a       	  CellTemplate 5b      ?? 5c      .R?5d   "   ?? .+?5e   &   ?? ??6-   ?? *Id+.??6N   Editar6V   ?? 5g   &   -   5        ??5g   -   ?? *Id+.??6e   
Eliminar6o   5i   #   5j      5l      5o      5p      5q      5r      