<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\SyncIntegration;
use GuzzleHttp\Client;
use Symfony\Component\HttpFoundation\Request;

/**
 *
 * @author yois
 *        
 */
class BaseController extends Controller
{

    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function sendResponse($result, $message = '')
    {
        $response = [
            'success' => true,
            'message' => $message,
            'data' => $result
        ];

        return response()->json($result, 200);
    }

    /**
     * return error response.
     *
     * @return \Illuminate\Http\Response
     */
    public function sendError($error, $errorMessages = [], $code = 404)
    {
        $response = [
            'success' => false,
            'message' => $error,
            'code' => $code
        ];

        if (!empty($errorMessages)) {
            $response['data'] = $errorMessages;
        }

        return response()->json($response, $code);
    }

    /**
     * Get the value of platform
     */
    public function getPlatform()
    {
        return $this->platform;
    }

    /**
     * Set the value of platform
     *
     * @return  self
     */
    public function setPlatform($platform)
    {
        $this->platform = $platform;

        return $this;
    }
}
