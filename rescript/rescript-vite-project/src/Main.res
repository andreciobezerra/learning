let container = ReactDOM.querySelector("#root")

let _ = switch container {
| None => Js.log("Root component not founded")
| Some(elem) => ReactDOM.render(<App />, elem)
}
