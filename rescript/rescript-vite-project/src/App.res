%%raw("import '/src/App.css'")

module Button = {
  @react.component
  let make = (~clickCallback, ~label) => {
    <button onClick={clickCallback}> {React.string(label)} </button>
  }
}

@react.component
let make = () => {
  let (state, setState) = React.useState(_ => 0)

  <div>
    <h1> {React.int(state)} </h1>
    <Button clickCallback={_ => setState(_ => state + 1)} label={"Increment"} />
    <span> {React.string("\u00A0 \u00A0")} </span>
    <Button clickCallback={_ => setState(_ => state - 1)} label={"Decrement"} />
  </div>
}
