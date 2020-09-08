<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sudoku.aspx.cs" Inherits="Sudoku2.Sudoku" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

<div class="STitle" id="S_Title">
    <h2>Fill in Sudoku Values</h2>
    <p>*if the cell is empty, place a zero*</p>
    <br />
</div>

<div class="Sudoku_Tab" id="SudokuTable" >
    <table border="1" style="table-layout:fixed; width:450px" >
        <tr>
            <td><input type="text" style="width:35px" id="txt00" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt01" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt02" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt03" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt04" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt05" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt06" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt07" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt08" runat="server"/></td>
        </tr>
        <tr>
            <td><input type="text" style="width:35px" id="txt10" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt11" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt12" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt13" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt14" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt15" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt16" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt17" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt18" runat="server"/></td>
        </tr>
        <tr>
            <td><input type="text" style="width:35px" id="txt20" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt21" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt22" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt23" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt24" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt25" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt26" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt27" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt28" runat="server"/></td>
        </tr>
        <tr>
            <td colspan="9">&nbsp;</td>
        </tr>
        <tr>
            <td><input type="text" style="width:35px" id="txt30" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt31" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt32" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt33" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt34" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt35" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt36" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt37" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt38" runat="server"/></td>
        </tr>
        <tr>
            <td><input type="text" style="width:35px" id="txt40" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt41" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt42" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt43" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt44" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt45" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt46" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt47" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt48" runat="server"/></td>
        </tr>
        <tr>
            <td><input type="text" style="width:35px" id="txt50" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt51" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt52" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt53" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt54" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt55" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt56" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt57" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt58" runat="server"/></td>
        </tr>
        <tr>
            <td colspan="9">&nbsp;</td>
        </tr>
        <tr>
            <td><input type="text" style="width:35px" id="txt60" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt61" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt62" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt63" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt64" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt65" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt66" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt67" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt68" runat="server"/></td>
        </tr>
        <tr>
            <td><input type="text" style="width:35px" id="txt70" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt71" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt72" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt73" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt74" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt75" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt76" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt77" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt78" runat="server"/></td>
        </tr>
        <tr>
            <td><input type="text" style="width:35px" id="txt80" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt81" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt82" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt83" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt84" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt85" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt86" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt87" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt88" runat="server"/></td>
        </tr>

    </table>
    <br />
</div>

<div class="SubmitButton">
    <asp:Button runat="server" OnClick="Submit_Click" ID="Submit" Text="Submit" />
    <br />
</div>

<h2> Solution </h2>
<div class="Sudoku_Tab" id="SudokuTableSolution" >
    <br />
    <table border="1" style="table-layout:fixed; width:450px" >
        <tr>
            <td><input type="text" style="width:35px" id="txt00_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt01_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt02_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt03_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt04_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt05_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt06_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt07_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt08_2" runat="server"/></td>
        </tr>

        <tr>
            <td><input type="text" style="width:35px" id="txt10_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt11_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt12_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt13_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt14_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt15_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt16_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt17_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt18_2" runat="server"/></td>
        </tr>

        <tr>
            <td><input type="text" style="width:35px" id="txt20_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt21_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt22_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt23_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt24_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt25_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt26_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt27_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt28_2" runat="server"/></td>
        </tr>

        <tr>
            <td><input type="text" style="width:35px" id="txt30_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt31_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt32_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt33_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt34_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt35_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt36_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt37_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt38_2" runat="server"/></td>
        </tr>

        <tr>
            <td><input type="text" style="width:35px" id="txt40_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt41_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt42_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt43_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt44_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt45_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt46_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt47_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt48_2" runat="server"/></td>
        </tr>

        <tr>
            <td><input type="text" style="width:35px" id="txt50_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt51_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt52_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt53_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt54_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt55_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt56_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt57_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt58_2" runat="server"/></td>
        </tr>

        <tr>
            <td><input type="text" style="width:35px" id="txt60_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt61_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt62_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt63_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt64_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt65_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt66_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt67_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt68_2" runat="server"/></td>
        </tr>

        <tr>
            <td><input type="text" style="width:35px" id="txt70_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt71_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt72_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt73_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt74_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt75_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt76_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt77_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt78_2" runat="server"/></td>
        </tr>

        <tr>
            <td><input type="text" style="width:35px" id="txt80_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt81_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt82_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt83_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt84_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt85_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt86_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt87_2" runat="server"/></td>
            <td><input type="text" style="width:35px" id="txt88_2" runat="server"/></td>
        </tr>
       
    </table>
    <br />
</div>

    </form>
</body>
</html>
