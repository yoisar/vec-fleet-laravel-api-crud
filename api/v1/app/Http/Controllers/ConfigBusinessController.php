<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreConfigBusinessRequest;
use App\Http\Requests\UpdateConfigBusinessRequest;
use App\Models\ConfigBusiness;
use Illuminate\Support\Facades\DB;

/**
 * Undocumented class
 */
class ConfigBusinessController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $configbusness =   ConfigBusiness::all();

        return $this->sendResponse($configbusness,);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreConfigBusinessRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreConfigBusinessRequest $request)
    {
        DB::beginTransaction();
        try {
            $input = $request->all();
            $configBusiness = ConfigBusiness::create($input);
            DB::commit();
            return $this->sendResponse($configBusiness, 'configBusiness updated successfully');
        } catch (\Exception $e) {
            DB::rollback();
            return $this->sendError($e->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\marketplace_tokens\ConfigBusiness  $ConfigBusiness
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {
            $configBusiness = ConfigBusiness::find($id);
            if (is_null($configBusiness)) {
                return $this->sendError('configBusiness not found');
            } else {
                return $this->sendResponse($configBusiness, 'configBusiness retrieved successfully');
            }
        } catch (\Exception $e) {
            return $this->sendError($e->getMessage());
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\marketplace_tokens\ConfigBusiness  $ConfigBusiness
     * @return \Illuminate\Http\Response
     */
    public function edit(ConfigBusiness $ConfigBusiness)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateConfigBusinessRequest  $request
     * @param  \App\marketplace_tokens\ConfigBusiness  $ConfigBusiness
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateConfigBusinessRequest $request,  $id)
    {
        DB::beginTransaction();
        try {
            $input = $request->all();
            $configBusiness = ConfigBusiness::find($id);
            $configBusiness->seccion = $input['seccion'];
            $configBusiness->grupo = $input['grupo'];
            $configBusiness->subgrupo = $input['subgrupo'];
            $configBusiness->parametro = $input['parametro'];
            $configBusiness->valor = $input['valor'];
            //
            $configBusiness->save();
            DB::commit();
            return $this->sendResponse($configBusiness, 'configBusiness updated successfully');
        } catch (\Exception $e) {
            DB::rollback();
            return $this->sendError($e->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\marketplace_tokens\ConfigBusiness  $ConfigBusiness
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $configBusiness = ConfigBusiness::findorFail($id);
            $configBusiness->delete();
            return $this->sendResponse($configBusiness, 'configBusiness deleted successfully');
        } catch (\Exception $e) {
            DB::rollback();
            return $this->sendError($e->getMessage());
        }
    }
}
