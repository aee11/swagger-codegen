# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule SwaggerPetstore.Api.Pet do
  @moduledoc """
  API calls for all endpoints tagged `Pet`.
  """

  alias SwaggerPetstore.Connection
  import SwaggerPetstore.RequestBuilder


  @doc """
  Add a new pet to the store
  

  ## Parameters

  - connection (SwaggerPetstore.Connection): Connection to server
  - body (Pet): Pet object that needs to be added to the store
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec add_pet(Tesla.Env.client, SwaggerPetstore.Model.Pet.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def add_pet(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/pet")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Deletes a pet
  

  ## Parameters

  - connection (SwaggerPetstore.Connection): Connection to server
  - pet_id (Integer): Pet id to delete
  - opts (KeywordList): [optional] Optional parameters
    - :api_key (String): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_pet(Tesla.Env.client, Integer.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_pet(connection, pet_id, opts \\ []) do
    optional_params = %{
      :"api_key" => :headers
    }
    %{}
    |> method(:delete)
    |> url("/pet/#{pet_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Finds Pets by status
  Multiple status values can be provided with comma separated strings

  ## Parameters

  - connection (SwaggerPetstore.Connection): Connection to server
  - status (List[String]): Status values that need to be considered for filter
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, [%Pet{}, ...]} on success
  {:error, info} on failure
  """
  @spec find_pets_by_status(Tesla.Env.client, list(String.t), keyword()) :: {:ok, list(SwaggerPetstore.Model.Pet.t)} | {:error, Tesla.Env.t}
  def find_pets_by_status(connection, status, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/pet/findByStatus")
    |> add_param(:query, :"status", status)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%SwaggerPetstore.Model.Pet{}])
  end

  @doc """
  Finds Pets by tags
  Muliple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.

  ## Parameters

  - connection (SwaggerPetstore.Connection): Connection to server
  - tags (List[String]): Tags to filter by
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, [%Pet{}, ...]} on success
  {:error, info} on failure
  """
  @spec find_pets_by_tags(Tesla.Env.client, list(String.t), keyword()) :: {:ok, list(SwaggerPetstore.Model.Pet.t)} | {:error, Tesla.Env.t}
  def find_pets_by_tags(connection, tags, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/pet/findByTags")
    |> add_param(:query, :"tags", tags)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%SwaggerPetstore.Model.Pet{}])
  end

  @doc """
  Find pet by ID
  Returns a single pet

  ## Parameters

  - connection (SwaggerPetstore.Connection): Connection to server
  - pet_id (Integer): ID of pet to return
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %SwaggerPetstore.Model.Pet{}} on success
  {:error, info} on failure
  """
  @spec get_pet_by_id(Tesla.Env.client, Integer.t, keyword()) :: {:ok, SwaggerPetstore.Model.Pet.t} | {:error, Tesla.Env.t}
  def get_pet_by_id(connection, pet_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/pet/#{pet_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%SwaggerPetstore.Model.Pet{})
  end

  @doc """
  Update an existing pet
  

  ## Parameters

  - connection (SwaggerPetstore.Connection): Connection to server
  - body (Pet): Pet object that needs to be added to the store
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec update_pet(Tesla.Env.client, SwaggerPetstore.Model.Pet.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def update_pet(connection, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/pet")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Updates a pet in the store with form data
  

  ## Parameters

  - connection (SwaggerPetstore.Connection): Connection to server
  - pet_id (Integer): ID of pet that needs to be updated
  - opts (KeywordList): [optional] Optional parameters
    - :name (String): Updated name of the pet
    - :status (String): Updated status of the pet

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec update_pet_with_form(Tesla.Env.client, Integer.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def update_pet_with_form(connection, pet_id, opts \\ []) do
    optional_params = %{
      :"name" => :form,
      :"status" => :form
    }
    %{}
    |> method(:post)
    |> url("/pet/#{pet_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  uploads an image
  

  ## Parameters

  - connection (SwaggerPetstore.Connection): Connection to server
  - pet_id (Integer): ID of pet to update
  - opts (KeywordList): [optional] Optional parameters
    - :additional_metadata (String): Additional data to pass to server
    - :file (PID): file to upload

  ## Returns

  {:ok, %SwaggerPetstore.Model.ApiResponse{}} on success
  {:error, info} on failure
  """
  @spec upload_file(Tesla.Env.client, Integer.t, keyword()) :: {:ok, SwaggerPetstore.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def upload_file(connection, pet_id, opts \\ []) do
    optional_params = %{
      :"additionalMetadata" => :form,
      :"file" => :form
    }
    %{}
    |> method(:post)
    |> url("/pet/#{pet_id}/uploadImage")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%SwaggerPetstore.Model.ApiResponse{})
  end
end
