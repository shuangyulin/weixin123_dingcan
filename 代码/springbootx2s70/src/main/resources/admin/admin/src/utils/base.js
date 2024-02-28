const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootx2s70/",
            name: "springbootx2s70",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootx2s70/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "在线订餐系统小程序"
        } 
    }
}
export default base
