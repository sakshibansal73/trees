#include <bits/stdc++.h>
using namespace std;
const int N=100;
char G[N][N];
vector<int>v;
void dfs(int i,int j,int c){v.push_back(c);
 if(i<0||j<0){return;}
 if((G[i+1][j]-'0')-(G[i][j]-'0')==1){
 dfs(i+1,j,c+1);
   
 }
 else if((G[i-1][j]-'0')-(G[i][j]-'0')==1){dfs(i+1,j,c+1);}
else  if((G[i][j+1]-'0')-(G[i][j]-'0')==1){dfs(i,j+1,c+1);}
 else  if((G[i][j-1]-'0')-(G[i][j]-'0')==1){dfs(i,j-1,c+1);}
 else  if((G[i+1][j+1]-'0')-(G[i][j]-'0')==1){dfs(i+1,j+1,c+1);}
else  if((G[i+1][j-1]-'0')-(G[i][j]-'0')==1){ dfs(i+1,j-1,c+1);}
else  if((G[i-1][j+1]-'0')-(G[i][j]-'0')==1) {dfs(i-1,j+1,c+1);}
else  if((G[i-1][j-1]-'0')-(G[i][j]-'0')==1){ dfs(i-1,j-1,c+1);}
 
}
int main(){
  int a,b;
  cin>>a>>b;
  
  vector<pair<int,int>>aposn;
  for(int i=0;i<a;i++){string s;
  cin>>s;
  
    for(int j=0;j<b;j++){
     char c=s[j];
      
   
    if (c=='A'){
    aposn.push_back({i,j});
     
    }
    G[i][j]=c;}}
 for(int i=0;i<aposn.size();i++){
   dfs(aposn[i].first,aposn[i].second,0);
 }
   sort(v.begin(),v.end());
   cout<<v[v.size()-1]<<endl;
    
  
}
