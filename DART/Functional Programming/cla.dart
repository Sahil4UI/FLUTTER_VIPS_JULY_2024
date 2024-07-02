
void main(List<String> x)
{
    int res = 0;
    x.forEach((val){
        res += int.parse(val);
    });

    print(res);
}