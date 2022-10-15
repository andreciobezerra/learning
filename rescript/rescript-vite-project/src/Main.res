@module("react-doom/client")
external createRoot: Dom.element => root = "createRoot"

createRoot(ReactDOM.querySelector("#root")->Belt.Option.getExn).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
)
