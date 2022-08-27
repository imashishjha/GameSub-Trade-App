#include<bits/stdc++.h>
using namespace std;

int main(){
    int t;
    cin>>t;
    int i=1;
    while(t--){
        int n;
        cin>>n;
        int ans= n/5+1;
        cout<<"Case #"<<i<<": "<<ans<<endl;
        i++;
    }
    return 0;
}