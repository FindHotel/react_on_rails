shared_examples "react_with_redux_generator" do
  it "creates redux directories" do
    %w(actions constants reducers store).each { |dir| assert_directory("client/app/bundles/HelloWorld/#{dir}") }
  end

  it "copies base redux files" do
    %w(client/app/bundles/HelloWorld/actions/helloWorldActionCreators.jsx
       client/app/bundles/HelloWorld/containers/HelloWorld.jsx
       client/app/bundles/HelloWorld/constants/helloWorldConstants.jsx
       client/app/bundles/HelloWorld/reducers/helloWorldReducer.jsx
       client/app/bundles/HelloWorld/reducers/index.jsx
       client/app/bundles/HelloWorld/store/helloWorldStore.jsx
       client/app/bundles/HelloWorld/startup/HelloWorldApp.jsx).each { |file| assert_file(file) }
  end
end
