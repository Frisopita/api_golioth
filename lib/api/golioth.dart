// To parse this JSON data, do
//
//     final golioth = goliothFromJson(jsonString);

import 'dart:convert';
Golioth goliothFromJson(String str) => Golioth.fromJson(json.decode(str));
String goliothToJson(Golioth data) => json.encode(data.toJson());


class Golioth {
    final String swagger;
    final Info info;
    final List<Tag> tags;
    final String host;
    final List<String> schemes;
    final List<String> consumes;
    final List<String> produces;
    final Paths paths;
    final Definitions definitions;
    final SecurityDefinitions securityDefinitions;
    final List<Security> security;
    final ExternalDocs externalDocs;

    Golioth({
        required this.swagger,
        required this.info,
        required this.tags,
        required this.host,
        required this.schemes,
        required this.consumes,
        required this.produces,
        required this.paths,
        required this.definitions,
        required this.securityDefinitions,
        required this.security,
        required this.externalDocs,
    });

    factory Golioth.fromJson(Map<String, dynamic> json) => Golioth(
        swagger: json["swagger"],
        info: Info.fromJson(json["info"]),
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        host: json["host"],
        schemes: List<String>.from(json["schemes"].map((x) => x)),
        consumes: List<String>.from(json["consumes"].map((x) => x)),
        produces: List<String>.from(json["produces"].map((x) => x)),
        paths: Paths.fromJson(json["paths"]),
        definitions: Definitions.fromJson(json["definitions"]),
        securityDefinitions: SecurityDefinitions.fromJson(json["securityDefinitions"]),
        security: List<Security>.from(json["security"].map((x) => Security.fromJson(x))),
        externalDocs: ExternalDocs.fromJson(json["externalDocs"]),
    );

    Map<String, dynamic> toJson() => {
        "swagger": swagger,
        "info": info.toJson(),
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "host": host,
        "schemes": List<dynamic>.from(schemes.map((x) => x)),
        "consumes": List<dynamic>.from(consumes.map((x) => x)),
        "produces": List<dynamic>.from(produces.map((x) => x)),
        "paths": paths.toJson(),
        "definitions": definitions.toJson(),
        "securityDefinitions": securityDefinitions.toJson(),
        "security": List<dynamic>.from(security.map((x) => x.toJson())),
        "externalDocs": externalDocs.toJson(),
    };
}

class Definitions {
    final ComgoliothTag comgoliothTag;
    final GoliothApiKey goliothApiKey;
    final GoliothApiKeyType goliothApiKeyType;
    final GoliothApiKeyUpdate goliothApiKeyUpdate;
    final GoliothAccountQuota goliothAccountQuota;
    final GoliothArtifact goliothArtifact;
    final GoliothArtifactUpdate goliothArtifactUpdate;
    final GoliothBlueprint goliothBlueprint;
    final GoliothBlueprintUpdateClass goliothBlueprintUpdate;
    final GoliothBoard goliothBoard;
    final GoliothCertificate goliothCertificate;
    final GoliothCertificateContent goliothCertificateContent;
    final GoliothApiKeyType goliothCloudEventType;
    final GoliothConditionalMap goliothConditionalMap;
    final GoliothCreateApiKeyRequest goliothCreateApiKeyRequest;
    final GoliothCreateApiKeyResponseClass goliothCreateApiKeyResponse;
    final GoliothCreateArtifactRequest goliothCreateArtifactRequest;
    final GoliothCreateApiKeyResponseClass goliothCreateArtifactResponse;
    final GoliothBlueprintUpdateClass goliothCreateBlueprintRequest;
    final GoliothCreateApiKeyResponseClass goliothCreateBlueprintResponse;
    final GoliothCreateCertificateRequest goliothCreateCertificateRequest;
    final GoliothCreateApiKeyResponseClass goliothCreateCertificateResponse;
    final GoliothCreateCheckoutSessionRequest goliothCreateCheckoutSessionRequest;
    final GoliothCreateCResponse goliothCreateCheckoutSessionResponse;
    final GoliothCreateCredentialRequest goliothCreateCredentialRequest;
    final GoliothCreateApiKeyResponseClass goliothCreateCredentialResponse;
    final GoliothCreateCustomerPortalRequest goliothCreateCustomerPortalRequest;
    final GoliothCreateCResponse goliothCreateCustomerPortalResponse;
    final GoliothCreateDeviceRequest goliothCreateDeviceRequest;
    final GoliothCreateApiKeyResponseClass goliothCreateDeviceResponse;
    final GoliothCreateIntegrationRequest goliothCreateIntegrationRequest;
    final GoliothCreateApiKeyResponseClass goliothCreateIntegrationResponse;
    final GoliothCreateOrganizationRequestClass goliothCreateOrganizationRequest;
    final GoliothCreateApiKeyResponseClass goliothCreateOrganizationResponse;
    final GoliothCreateProjectRequest goliothCreateProjectRequest;
    final GoliothCreateApiKeyResponseClass goliothCreateProjectResponse;
    final GoliothCreateReleaseRequest goliothCreateReleaseRequest;
    final GoliothCreateApiKeyResponseClass goliothCreateReleaseResponse;
    final GoliothCreateSettingRequest goliothCreateSettingRequest;
    final GoliothCreateApiKeyResponseClass goliothCreateSettingResponse;
    final GoliothCreateTagRequest goliothCreateTagRequest;
    final GoliothCreateApiKeyResponseClass goliothCreateTagResponse;
    final GoliothCredential goliothCredential;
    final GoliothApiKeyType goliothCredentialType;
    final GoliothArtifactUpdate goliothDeleteApiKeyResponse;
    final GoliothArtifactUpdate goliothDeleteArtifactResponse;
    final GoliothArtifactUpdate goliothDeleteBlueprintResponse;
    final GoliothArtifactUpdate goliothDeleteCertificateResponse;
    final GoliothArtifactUpdate goliothDeleteCredentialResponse;
    final GoliothArtifactUpdate goliothDeleteDeviceResponse;
    final GoliothArtifactUpdate goliothDeleteDeviceStateResponse;
    final GoliothArtifactUpdate goliothDeleteIntegrationResponse;
    final GoliothArtifactUpdate goliothDeletePolicyResponse;
    final GoliothArtifactUpdate goliothDeleteProjectResponse;
    final GoliothArtifactUpdate goliothDeleteReleaseResponse;
    final GoliothArtifactUpdate goliothDeleteSettingResponse;
    final GoliothArtifactUpdate goliothDeleteTagResponse;
    final GoliothDevice goliothDevice;
    final GoliothDeviceActivityLog goliothDeviceActivityLog;
    final GoliothDeviceLogEntry goliothDeviceLogEntry;
    final GoliothApiKeyType goliothDeviceLogLevel;
    final GoliothApiKeyType goliothDeviceLogType;
    final GoliothDeviceMetadata goliothDeviceMetadata;
    final GoliothDeviceStreamQuery goliothDeviceStreamQuery;
    final GoliothDeviceUpdate goliothDeviceUpdate;
    final GoliothEventType goliothEventType;
    final GoliothFirmwareLogEntry goliothFirmwareLogEntry;
    final GoliothCreateApiKeyResponseClass goliothGetArtifactResponse;
    final GoliothGetAvailablePlansResponseClass goliothGetAvailablePlansResponse;
    final GoliothCreateApiKeyResponseClass goliothGetBlueprintResponse;
    final GoliothCreateApiKeyResponseClass goliothGetBoardsResponse;
    final GoliothCreateApiKeyResponseClass goliothGetCertificateResponse;
    final GoliothCreateApiKeyResponseClass goliothGetDeviceResponse;
    final GoliothDeviceStateResponse goliothGetDeviceStateResponse;
    final GoliothGetDeviceStreamRequest goliothGetDeviceStreamRequest;
    final GoliothGetStreamResponse goliothGetDeviceStreamResponse;
    final GoliothCreateApiKeyResponseClass goliothGetIntegrationResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothGetLatestDeviceActivityLogsResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothGetLogsResponse;
    final GoliothCreateApiKeyResponseClass goliothGetOrganizationResponse;
    final GoliothCreateApiKeyResponseClass goliothGetPolicyResponse;
    final GoliothCreateApiKeyResponseClass goliothGetProjectResponse;
    final GoliothGetProjectStreamRequest goliothGetProjectStreamRequest;
    final GoliothGetStreamResponse goliothGetProjectStreamResponse;
    final GoliothCreateApiKeyResponseClass goliothGetQuotaResponse;
    final GoliothCreateApiKeyResponseClass goliothGetReleaseResponse;
    final GoliothGetSettingResponseClass goliothGetSettingResponse;
    final GoliothCreateApiKeyResponseClass goliothGetTagResponse;
    final GoliothIntegration goliothIntegration;
    final GoliothIntegrationType goliothIntegrationType;
    final GoliothIntegrationTypeAttribute goliothIntegrationTypeAttribute;
    final GoliothIntegrationUpdate goliothIntegrationUpdate;
    final GoliothArtifactUpdate goliothIntegrationValidationResponse;
    final GoliothInviteUserRequest goliothInviteUserRequest;
    final GoliothCreateApiKeyResponseClass goliothInviteUserResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothListApiKeyResponse;
    final GoliothGetSettingResponseClass goliothListAllowedSettingsDataTypesResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothListArtifactResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothListBlueprintResponse;
    final GoliothGetSettingResponseClass goliothListBoardsResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothListCertificateResponse;
    final GoliothGetAvailablePlansResponseClass goliothListCredentialResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothListDeviceResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothListEventTypesResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothListFirmwareLogsResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothListIntegrationResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothListIntegrationTypesResponse;
    final GoliothGetAvailablePlansResponseClass goliothListOrganizationResponse;
    final GoliothGetAvailablePlansResponseClass goliothListPermissionResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothListPolicyResponse;
    final GoliothGetAvailablePlansResponseClass goliothListProjectResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothListReleaseResponse;
    final GoliothGetAvailablePlansResponseClass goliothListRoleResponse;
    final GoliothGetSettingResponseClass goliothListSettingResponse;
    final GoliothGetLatestDeviceActivityLogsResponseClass goliothListTagResponse;
    final GoliothGetAvailablePlansResponseClass goliothListUsersResponse;
    final GoliothCreateApiKeyResponseClass goliothMoveProjectResponse;
    final GoliothOrganization goliothOrganization;
    final GoliothCreateOrganizationRequestClass goliothOrganizationUpdate;
    final GoliothArtifactUpdate goliothPaymentWebhookResponse;
    final GoliothPermission goliothPermission;
    final GoliothPlan goliothPlan;
    final GoliothPolicy goliothPolicy;
    final GoliothPolicyUpdate goliothPolicyUpdate;
    final GoliothProject goliothProject;
    final GoliothUpdate goliothProjectUpdate;
    final GoliothProvisionData goliothProvisionData;
    final GoliothProvisionDeviceRequest goliothProvisionDeviceRequest;
    final GoliothCreateApiKeyResponseClass goliothProvisionDeviceResponse;
    final GoliothQueryField goliothQueryField;
    final GoliothQueryFilter goliothQueryFilter;
    final GoliothQuota goliothQuota;
    final GoliothQuotaPerType goliothQuotaPerType;
    final GoliothRelease goliothRelease;
    final GoliothReleaseUpdate goliothReleaseUpdate;
    final GoliothRemoteProcedureCallRequest goliothRemoteProcedureCallRequest;
    final GoliothRemoteProcedureCallResponse goliothRemoteProcedureCallResponse;
    final GoliothRole goliothRole;
    final GoliothSetting goliothSetting;
    final GoliothSettingDataType goliothSettingDataType;
    final GoliothSettingError goliothSettingError;
    final GoliothSettingUpdate goliothSettingUpdate;
    final GoliothSettingsStatus goliothSettingsStatus;
    final GoliothSubscriptionItem goliothSubscriptionItem;
    final GoliothUpdate goliothTagUpdate;
    final GoliothTestIntegrationRequest goliothTestIntegrationRequest;
    final GoliothTestIntegrationResponse goliothTestIntegrationResponse;
    final GoliothCreateApiKeyResponseClass goliothUpdateApiKeyResponse;
    final GoliothCreateApiKeyResponseClass goliothUpdateArtifactResponse;
    final GoliothCreateApiKeyResponseClass goliothUpdateBlueprintResponse;
    final GoliothCreateApiKeyResponseClass goliothUpdateDeviceResponse;
    final GoliothDeviceStateResponse goliothUpdateDeviceStateResponse;
    final GoliothCreateApiKeyResponseClass goliothUpdateIntegrationResponse;
    final GoliothCreateApiKeyResponseClass goliothUpdateOrganizationResponse;
    final GoliothCreateApiKeyResponseClass goliothUpdatePolicyResponse;
    final GoliothCreateApiKeyResponseClass goliothUpdateProjectResponse;
    final GoliothCreateApiKeyResponseClass goliothUpdateReleaseResponse;
    final GoliothCreateApiKeyResponseClass goliothUpdateSettingResponse;
    final GoliothCreateApiKeyResponseClass goliothUpdateTagResponse;
    final GoliothUser goliothUser;
    final ProtobufAny protobufAny;
    final GoliothApiKeyType protobufNullValue;
    final RpcStatus rpcStatus;

    Definitions({
        required this.comgoliothTag,
        required this.goliothApiKey,
        required this.goliothApiKeyType,
        required this.goliothApiKeyUpdate,
        required this.goliothAccountQuota,
        required this.goliothArtifact,
        required this.goliothArtifactUpdate,
        required this.goliothBlueprint,
        required this.goliothBlueprintUpdate,
        required this.goliothBoard,
        required this.goliothCertificate,
        required this.goliothCertificateContent,
        required this.goliothCloudEventType,
        required this.goliothConditionalMap,
        required this.goliothCreateApiKeyRequest,
        required this.goliothCreateApiKeyResponse,
        required this.goliothCreateArtifactRequest,
        required this.goliothCreateArtifactResponse,
        required this.goliothCreateBlueprintRequest,
        required this.goliothCreateBlueprintResponse,
        required this.goliothCreateCertificateRequest,
        required this.goliothCreateCertificateResponse,
        required this.goliothCreateCheckoutSessionRequest,
        required this.goliothCreateCheckoutSessionResponse,
        required this.goliothCreateCredentialRequest,
        required this.goliothCreateCredentialResponse,
        required this.goliothCreateCustomerPortalRequest,
        required this.goliothCreateCustomerPortalResponse,
        required this.goliothCreateDeviceRequest,
        required this.goliothCreateDeviceResponse,
        required this.goliothCreateIntegrationRequest,
        required this.goliothCreateIntegrationResponse,
        required this.goliothCreateOrganizationRequest,
        required this.goliothCreateOrganizationResponse,
        required this.goliothCreateProjectRequest,
        required this.goliothCreateProjectResponse,
        required this.goliothCreateReleaseRequest,
        required this.goliothCreateReleaseResponse,
        required this.goliothCreateSettingRequest,
        required this.goliothCreateSettingResponse,
        required this.goliothCreateTagRequest,
        required this.goliothCreateTagResponse,
        required this.goliothCredential,
        required this.goliothCredentialType,
        required this.goliothDeleteApiKeyResponse,
        required this.goliothDeleteArtifactResponse,
        required this.goliothDeleteBlueprintResponse,
        required this.goliothDeleteCertificateResponse,
        required this.goliothDeleteCredentialResponse,
        required this.goliothDeleteDeviceResponse,
        required this.goliothDeleteDeviceStateResponse,
        required this.goliothDeleteIntegrationResponse,
        required this.goliothDeletePolicyResponse,
        required this.goliothDeleteProjectResponse,
        required this.goliothDeleteReleaseResponse,
        required this.goliothDeleteSettingResponse,
        required this.goliothDeleteTagResponse,
        required this.goliothDevice,
        required this.goliothDeviceActivityLog,
        required this.goliothDeviceLogEntry,
        required this.goliothDeviceLogLevel,
        required this.goliothDeviceLogType,
        required this.goliothDeviceMetadata,
        required this.goliothDeviceStreamQuery,
        required this.goliothDeviceUpdate,
        required this.goliothEventType,
        required this.goliothFirmwareLogEntry,
        required this.goliothGetArtifactResponse,
        required this.goliothGetAvailablePlansResponse,
        required this.goliothGetBlueprintResponse,
        required this.goliothGetBoardsResponse,
        required this.goliothGetCertificateResponse,
        required this.goliothGetDeviceResponse,
        required this.goliothGetDeviceStateResponse,
        required this.goliothGetDeviceStreamRequest,
        required this.goliothGetDeviceStreamResponse,
        required this.goliothGetIntegrationResponse,
        required this.goliothGetLatestDeviceActivityLogsResponse,
        required this.goliothGetLogsResponse,
        required this.goliothGetOrganizationResponse,
        required this.goliothGetPolicyResponse,
        required this.goliothGetProjectResponse,
        required this.goliothGetProjectStreamRequest,
        required this.goliothGetProjectStreamResponse,
        required this.goliothGetQuotaResponse,
        required this.goliothGetReleaseResponse,
        required this.goliothGetSettingResponse,
        required this.goliothGetTagResponse,
        required this.goliothIntegration,
        required this.goliothIntegrationType,
        required this.goliothIntegrationTypeAttribute,
        required this.goliothIntegrationUpdate,
        required this.goliothIntegrationValidationResponse,
        required this.goliothInviteUserRequest,
        required this.goliothInviteUserResponse,
        required this.goliothListApiKeyResponse,
        required this.goliothListAllowedSettingsDataTypesResponse,
        required this.goliothListArtifactResponse,
        required this.goliothListBlueprintResponse,
        required this.goliothListBoardsResponse,
        required this.goliothListCertificateResponse,
        required this.goliothListCredentialResponse,
        required this.goliothListDeviceResponse,
        required this.goliothListEventTypesResponse,
        required this.goliothListFirmwareLogsResponse,
        required this.goliothListIntegrationResponse,
        required this.goliothListIntegrationTypesResponse,
        required this.goliothListOrganizationResponse,
        required this.goliothListPermissionResponse,
        required this.goliothListPolicyResponse,
        required this.goliothListProjectResponse,
        required this.goliothListReleaseResponse,
        required this.goliothListRoleResponse,
        required this.goliothListSettingResponse,
        required this.goliothListTagResponse,
        required this.goliothListUsersResponse,
        required this.goliothMoveProjectResponse,
        required this.goliothOrganization,
        required this.goliothOrganizationUpdate,
        required this.goliothPaymentWebhookResponse,
        required this.goliothPermission,
        required this.goliothPlan,
        required this.goliothPolicy,
        required this.goliothPolicyUpdate,
        required this.goliothProject,
        required this.goliothProjectUpdate,
        required this.goliothProvisionData,
        required this.goliothProvisionDeviceRequest,
        required this.goliothProvisionDeviceResponse,
        required this.goliothQueryField,
        required this.goliothQueryFilter,
        required this.goliothQuota,
        required this.goliothQuotaPerType,
        required this.goliothRelease,
        required this.goliothReleaseUpdate,
        required this.goliothRemoteProcedureCallRequest,
        required this.goliothRemoteProcedureCallResponse,
        required this.goliothRole,
        required this.goliothSetting,
        required this.goliothSettingDataType,
        required this.goliothSettingError,
        required this.goliothSettingUpdate,
        required this.goliothSettingsStatus,
        required this.goliothSubscriptionItem,
        required this.goliothTagUpdate,
        required this.goliothTestIntegrationRequest,
        required this.goliothTestIntegrationResponse,
        required this.goliothUpdateApiKeyResponse,
        required this.goliothUpdateArtifactResponse,
        required this.goliothUpdateBlueprintResponse,
        required this.goliothUpdateDeviceResponse,
        required this.goliothUpdateDeviceStateResponse,
        required this.goliothUpdateIntegrationResponse,
        required this.goliothUpdateOrganizationResponse,
        required this.goliothUpdatePolicyResponse,
        required this.goliothUpdateProjectResponse,
        required this.goliothUpdateReleaseResponse,
        required this.goliothUpdateSettingResponse,
        required this.goliothUpdateTagResponse,
        required this.goliothUser,
        required this.protobufAny,
        required this.protobufNullValue,
        required this.rpcStatus,
    });

    factory Definitions.fromJson(Map<String, dynamic> json) => Definitions(
        comgoliothTag: ComgoliothTag.fromJson(json["comgoliothTag"]),
        goliothApiKey: GoliothApiKey.fromJson(json["goliothAPIKey"]),
        goliothApiKeyType: GoliothApiKeyType.fromJson(json["goliothAPIKeyType"]),
        goliothApiKeyUpdate: GoliothApiKeyUpdate.fromJson(json["goliothAPIKeyUpdate"]),
        goliothAccountQuota: GoliothAccountQuota.fromJson(json["goliothAccountQuota"]),
        goliothArtifact: GoliothArtifact.fromJson(json["goliothArtifact"]),
        goliothArtifactUpdate: GoliothArtifactUpdate.fromJson(json["goliothArtifactUpdate"]),
        goliothBlueprint: GoliothBlueprint.fromJson(json["goliothBlueprint"]),
        goliothBlueprintUpdate: GoliothBlueprintUpdateClass.fromJson(json["goliothBlueprintUpdate"]),
        goliothBoard: GoliothBoard.fromJson(json["goliothBoard"]),
        goliothCertificate: GoliothCertificate.fromJson(json["goliothCertificate"]),
        goliothCertificateContent: GoliothCertificateContent.fromJson(json["goliothCertificateContent"]),
        goliothCloudEventType: GoliothApiKeyType.fromJson(json["goliothCloudEventType"]),
        goliothConditionalMap: GoliothConditionalMap.fromJson(json["goliothConditionalMap"]),
        goliothCreateApiKeyRequest: GoliothCreateApiKeyRequest.fromJson(json["goliothCreateAPIKeyRequest"]),
        goliothCreateApiKeyResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothCreateAPIKeyResponse"]),
        goliothCreateArtifactRequest: GoliothCreateArtifactRequest.fromJson(json["goliothCreateArtifactRequest"]),
        goliothCreateArtifactResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothCreateArtifactResponse"]),
        goliothCreateBlueprintRequest: GoliothBlueprintUpdateClass.fromJson(json["goliothCreateBlueprintRequest"]),
        goliothCreateBlueprintResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothCreateBlueprintResponse"]),
        goliothCreateCertificateRequest: GoliothCreateCertificateRequest.fromJson(json["goliothCreateCertificateRequest"]),
        goliothCreateCertificateResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothCreateCertificateResponse"]),
        goliothCreateCheckoutSessionRequest: GoliothCreateCheckoutSessionRequest.fromJson(json["goliothCreateCheckoutSessionRequest"]),
        goliothCreateCheckoutSessionResponse: GoliothCreateCResponse.fromJson(json["goliothCreateCheckoutSessionResponse"]),
        goliothCreateCredentialRequest: GoliothCreateCredentialRequest.fromJson(json["goliothCreateCredentialRequest"]),
        goliothCreateCredentialResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothCreateCredentialResponse"]),
        goliothCreateCustomerPortalRequest: GoliothCreateCustomerPortalRequest.fromJson(json["goliothCreateCustomerPortalRequest"]),
        goliothCreateCustomerPortalResponse: GoliothCreateCResponse.fromJson(json["goliothCreateCustomerPortalResponse"]),
        goliothCreateDeviceRequest: GoliothCreateDeviceRequest.fromJson(json["goliothCreateDeviceRequest"]),
        goliothCreateDeviceResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothCreateDeviceResponse"]),
        goliothCreateIntegrationRequest: GoliothCreateIntegrationRequest.fromJson(json["goliothCreateIntegrationRequest"]),
        goliothCreateIntegrationResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothCreateIntegrationResponse"]),
        goliothCreateOrganizationRequest: GoliothCreateOrganizationRequestClass.fromJson(json["goliothCreateOrganizationRequest"]),
        goliothCreateOrganizationResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothCreateOrganizationResponse"]),
        goliothCreateProjectRequest: GoliothCreateProjectRequest.fromJson(json["goliothCreateProjectRequest"]),
        goliothCreateProjectResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothCreateProjectResponse"]),
        goliothCreateReleaseRequest: GoliothCreateReleaseRequest.fromJson(json["goliothCreateReleaseRequest"]),
        goliothCreateReleaseResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothCreateReleaseResponse"]),
        goliothCreateSettingRequest: GoliothCreateSettingRequest.fromJson(json["goliothCreateSettingRequest"]),
        goliothCreateSettingResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothCreateSettingResponse"]),
        goliothCreateTagRequest: GoliothCreateTagRequest.fromJson(json["goliothCreateTagRequest"]),
        goliothCreateTagResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothCreateTagResponse"]),
        goliothCredential: GoliothCredential.fromJson(json["goliothCredential"]),
        goliothCredentialType: GoliothApiKeyType.fromJson(json["goliothCredentialType"]),
        goliothDeleteApiKeyResponse: GoliothArtifactUpdate.fromJson(json["goliothDeleteAPIKeyResponse"]),
        goliothDeleteArtifactResponse: GoliothArtifactUpdate.fromJson(json["goliothDeleteArtifactResponse"]),
        goliothDeleteBlueprintResponse: GoliothArtifactUpdate.fromJson(json["goliothDeleteBlueprintResponse"]),
        goliothDeleteCertificateResponse: GoliothArtifactUpdate.fromJson(json["goliothDeleteCertificateResponse"]),
        goliothDeleteCredentialResponse: GoliothArtifactUpdate.fromJson(json["goliothDeleteCredentialResponse"]),
        goliothDeleteDeviceResponse: GoliothArtifactUpdate.fromJson(json["goliothDeleteDeviceResponse"]),
        goliothDeleteDeviceStateResponse: GoliothArtifactUpdate.fromJson(json["goliothDeleteDeviceStateResponse"]),
        goliothDeleteIntegrationResponse: GoliothArtifactUpdate.fromJson(json["goliothDeleteIntegrationResponse"]),
        goliothDeletePolicyResponse: GoliothArtifactUpdate.fromJson(json["goliothDeletePolicyResponse"]),
        goliothDeleteProjectResponse: GoliothArtifactUpdate.fromJson(json["goliothDeleteProjectResponse"]),
        goliothDeleteReleaseResponse: GoliothArtifactUpdate.fromJson(json["goliothDeleteReleaseResponse"]),
        goliothDeleteSettingResponse: GoliothArtifactUpdate.fromJson(json["goliothDeleteSettingResponse"]),
        goliothDeleteTagResponse: GoliothArtifactUpdate.fromJson(json["goliothDeleteTagResponse"]),
        goliothDevice: GoliothDevice.fromJson(json["goliothDevice"]),
        goliothDeviceActivityLog: GoliothDeviceActivityLog.fromJson(json["goliothDeviceActivityLog"]),
        goliothDeviceLogEntry: GoliothDeviceLogEntry.fromJson(json["goliothDeviceLogEntry"]),
        goliothDeviceLogLevel: GoliothApiKeyType.fromJson(json["goliothDeviceLogLevel"]),
        goliothDeviceLogType: GoliothApiKeyType.fromJson(json["goliothDeviceLogType"]),
        goliothDeviceMetadata: GoliothDeviceMetadata.fromJson(json["goliothDeviceMetadata"]),
        goliothDeviceStreamQuery: GoliothDeviceStreamQuery.fromJson(json["goliothDeviceStreamQuery"]),
        goliothDeviceUpdate: GoliothDeviceUpdate.fromJson(json["goliothDeviceUpdate"]),
        goliothEventType: GoliothEventType.fromJson(json["goliothEventType"]),
        goliothFirmwareLogEntry: GoliothFirmwareLogEntry.fromJson(json["goliothFirmwareLogEntry"]),
        goliothGetArtifactResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothGetArtifactResponse"]),
        goliothGetAvailablePlansResponse: GoliothGetAvailablePlansResponseClass.fromJson(json["goliothGetAvailablePlansResponse"]),
        goliothGetBlueprintResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothGetBlueprintResponse"]),
        goliothGetBoardsResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothGetBoardsResponse"]),
        goliothGetCertificateResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothGetCertificateResponse"]),
        goliothGetDeviceResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothGetDeviceResponse"]),
        goliothGetDeviceStateResponse: GoliothDeviceStateResponse.fromJson(json["goliothGetDeviceStateResponse"]),
        goliothGetDeviceStreamRequest: GoliothGetDeviceStreamRequest.fromJson(json["goliothGetDeviceStreamRequest"]),
        goliothGetDeviceStreamResponse: GoliothGetStreamResponse.fromJson(json["goliothGetDeviceStreamResponse"]),
        goliothGetIntegrationResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothGetIntegrationResponse"]),
        goliothGetLatestDeviceActivityLogsResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothGetLatestDeviceActivityLogsResponse"]),
        goliothGetLogsResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothGetLogsResponse"]),
        goliothGetOrganizationResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothGetOrganizationResponse"]),
        goliothGetPolicyResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothGetPolicyResponse"]),
        goliothGetProjectResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothGetProjectResponse"]),
        goliothGetProjectStreamRequest: GoliothGetProjectStreamRequest.fromJson(json["goliothGetProjectStreamRequest"]),
        goliothGetProjectStreamResponse: GoliothGetStreamResponse.fromJson(json["goliothGetProjectStreamResponse"]),
        goliothGetQuotaResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothGetQuotaResponse"]),
        goliothGetReleaseResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothGetReleaseResponse"]),
        goliothGetSettingResponse: GoliothGetSettingResponseClass.fromJson(json["goliothGetSettingResponse"]),
        goliothGetTagResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothGetTagResponse"]),
        goliothIntegration: GoliothIntegration.fromJson(json["goliothIntegration"]),
        goliothIntegrationType: GoliothIntegrationType.fromJson(json["goliothIntegrationType"]),
        goliothIntegrationTypeAttribute: GoliothIntegrationTypeAttribute.fromJson(json["goliothIntegrationTypeAttribute"]),
        goliothIntegrationUpdate: GoliothIntegrationUpdate.fromJson(json["goliothIntegrationUpdate"]),
        goliothIntegrationValidationResponse: GoliothArtifactUpdate.fromJson(json["goliothIntegrationValidationResponse"]),
        goliothInviteUserRequest: GoliothInviteUserRequest.fromJson(json["goliothInviteUserRequest"]),
        goliothInviteUserResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothInviteUserResponse"]),
        goliothListApiKeyResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothListAPIKeyResponse"]),
        goliothListAllowedSettingsDataTypesResponse: GoliothGetSettingResponseClass.fromJson(json["goliothListAllowedSettingsDataTypesResponse"]),
        goliothListArtifactResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothListArtifactResponse"]),
        goliothListBlueprintResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothListBlueprintResponse"]),
        goliothListBoardsResponse: GoliothGetSettingResponseClass.fromJson(json["goliothListBoardsResponse"]),
        goliothListCertificateResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothListCertificateResponse"]),
        goliothListCredentialResponse: GoliothGetAvailablePlansResponseClass.fromJson(json["goliothListCredentialResponse"]),
        goliothListDeviceResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothListDeviceResponse"]),
        goliothListEventTypesResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothListEventTypesResponse"]),
        goliothListFirmwareLogsResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothListFirmwareLogsResponse"]),
        goliothListIntegrationResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothListIntegrationResponse"]),
        goliothListIntegrationTypesResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothListIntegrationTypesResponse"]),
        goliothListOrganizationResponse: GoliothGetAvailablePlansResponseClass.fromJson(json["goliothListOrganizationResponse"]),
        goliothListPermissionResponse: GoliothGetAvailablePlansResponseClass.fromJson(json["goliothListPermissionResponse"]),
        goliothListPolicyResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothListPolicyResponse"]),
        goliothListProjectResponse: GoliothGetAvailablePlansResponseClass.fromJson(json["goliothListProjectResponse"]),
        goliothListReleaseResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothListReleaseResponse"]),
        goliothListRoleResponse: GoliothGetAvailablePlansResponseClass.fromJson(json["goliothListRoleResponse"]),
        goliothListSettingResponse: GoliothGetSettingResponseClass.fromJson(json["goliothListSettingResponse"]),
        goliothListTagResponse: GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(json["goliothListTagResponse"]),
        goliothListUsersResponse: GoliothGetAvailablePlansResponseClass.fromJson(json["goliothListUsersResponse"]),
        goliothMoveProjectResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothMoveProjectResponse"]),
        goliothOrganization: GoliothOrganization.fromJson(json["goliothOrganization"]),
        goliothOrganizationUpdate: GoliothCreateOrganizationRequestClass.fromJson(json["goliothOrganizationUpdate"]),
        goliothPaymentWebhookResponse: GoliothArtifactUpdate.fromJson(json["goliothPaymentWebhookResponse"]),
        goliothPermission: GoliothPermission.fromJson(json["goliothPermission"]),
        goliothPlan: GoliothPlan.fromJson(json["goliothPlan"]),
        goliothPolicy: GoliothPolicy.fromJson(json["goliothPolicy"]),
        goliothPolicyUpdate: GoliothPolicyUpdate.fromJson(json["goliothPolicyUpdate"]),
        goliothProject: GoliothProject.fromJson(json["goliothProject"]),
        goliothProjectUpdate: GoliothUpdate.fromJson(json["goliothProjectUpdate"]),
        goliothProvisionData: GoliothProvisionData.fromJson(json["goliothProvisionData"]),
        goliothProvisionDeviceRequest: GoliothProvisionDeviceRequest.fromJson(json["goliothProvisionDeviceRequest"]),
        goliothProvisionDeviceResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothProvisionDeviceResponse"]),
        goliothQueryField: GoliothQueryField.fromJson(json["goliothQueryField"]),
        goliothQueryFilter: GoliothQueryFilter.fromJson(json["goliothQueryFilter"]),
        goliothQuota: GoliothQuota.fromJson(json["goliothQuota"]),
        goliothQuotaPerType: GoliothQuotaPerType.fromJson(json["goliothQuotaPerType"]),
        goliothRelease: GoliothRelease.fromJson(json["goliothRelease"]),
        goliothReleaseUpdate: GoliothReleaseUpdate.fromJson(json["goliothReleaseUpdate"]),
        goliothRemoteProcedureCallRequest: GoliothRemoteProcedureCallRequest.fromJson(json["goliothRemoteProcedureCallRequest"]),
        goliothRemoteProcedureCallResponse: GoliothRemoteProcedureCallResponse.fromJson(json["goliothRemoteProcedureCallResponse"]),
        goliothRole: GoliothRole.fromJson(json["goliothRole"]),
        goliothSetting: GoliothSetting.fromJson(json["goliothSetting"]),
        goliothSettingDataType: GoliothSettingDataType.fromJson(json["goliothSettingDataType"]),
        goliothSettingError: GoliothSettingError.fromJson(json["goliothSettingError"]),
        goliothSettingUpdate: GoliothSettingUpdate.fromJson(json["goliothSettingUpdate"]),
        goliothSettingsStatus: GoliothSettingsStatus.fromJson(json["goliothSettingsStatus"]),
        goliothSubscriptionItem: GoliothSubscriptionItem.fromJson(json["goliothSubscriptionItem"]),
        goliothTagUpdate: GoliothUpdate.fromJson(json["goliothTagUpdate"]),
        goliothTestIntegrationRequest: GoliothTestIntegrationRequest.fromJson(json["goliothTestIntegrationRequest"]),
        goliothTestIntegrationResponse: GoliothTestIntegrationResponse.fromJson(json["goliothTestIntegrationResponse"]),
        goliothUpdateApiKeyResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothUpdateAPIKeyResponse"]),
        goliothUpdateArtifactResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothUpdateArtifactResponse"]),
        goliothUpdateBlueprintResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothUpdateBlueprintResponse"]),
        goliothUpdateDeviceResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothUpdateDeviceResponse"]),
        goliothUpdateDeviceStateResponse: GoliothDeviceStateResponse.fromJson(json["goliothUpdateDeviceStateResponse"]),
        goliothUpdateIntegrationResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothUpdateIntegrationResponse"]),
        goliothUpdateOrganizationResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothUpdateOrganizationResponse"]),
        goliothUpdatePolicyResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothUpdatePolicyResponse"]),
        goliothUpdateProjectResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothUpdateProjectResponse"]),
        goliothUpdateReleaseResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothUpdateReleaseResponse"]),
        goliothUpdateSettingResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothUpdateSettingResponse"]),
        goliothUpdateTagResponse: GoliothCreateApiKeyResponseClass.fromJson(json["goliothUpdateTagResponse"]),
        goliothUser: GoliothUser.fromJson(json["goliothUser"]),
        protobufAny: ProtobufAny.fromJson(json["protobufAny"]),
        protobufNullValue: GoliothApiKeyType.fromJson(json["protobufNullValue"]),
        rpcStatus: RpcStatus.fromJson(json["rpcStatus"]),
    );

    Map<String, dynamic> toJson() => {
        "comgoliothTag": comgoliothTag.toJson(),
        "goliothAPIKey": goliothApiKey.toJson(),
        "goliothAPIKeyType": goliothApiKeyType.toJson(),
        "goliothAPIKeyUpdate": goliothApiKeyUpdate.toJson(),
        "goliothAccountQuota": goliothAccountQuota.toJson(),
        "goliothArtifact": goliothArtifact.toJson(),
        "goliothArtifactUpdate": goliothArtifactUpdate.toJson(),
        "goliothBlueprint": goliothBlueprint.toJson(),
        "goliothBlueprintUpdate": goliothBlueprintUpdate.toJson(),
        "goliothBoard": goliothBoard.toJson(),
        "goliothCertificate": goliothCertificate.toJson(),
        "goliothCertificateContent": goliothCertificateContent.toJson(),
        "goliothCloudEventType": goliothCloudEventType.toJson(),
        "goliothConditionalMap": goliothConditionalMap.toJson(),
        "goliothCreateAPIKeyRequest": goliothCreateApiKeyRequest.toJson(),
        "goliothCreateAPIKeyResponse": goliothCreateApiKeyResponse.toJson(),
        "goliothCreateArtifactRequest": goliothCreateArtifactRequest.toJson(),
        "goliothCreateArtifactResponse": goliothCreateArtifactResponse.toJson(),
        "goliothCreateBlueprintRequest": goliothCreateBlueprintRequest.toJson(),
        "goliothCreateBlueprintResponse": goliothCreateBlueprintResponse.toJson(),
        "goliothCreateCertificateRequest": goliothCreateCertificateRequest.toJson(),
        "goliothCreateCertificateResponse": goliothCreateCertificateResponse.toJson(),
        "goliothCreateCheckoutSessionRequest": goliothCreateCheckoutSessionRequest.toJson(),
        "goliothCreateCheckoutSessionResponse": goliothCreateCheckoutSessionResponse.toJson(),
        "goliothCreateCredentialRequest": goliothCreateCredentialRequest.toJson(),
        "goliothCreateCredentialResponse": goliothCreateCredentialResponse.toJson(),
        "goliothCreateCustomerPortalRequest": goliothCreateCustomerPortalRequest.toJson(),
        "goliothCreateCustomerPortalResponse": goliothCreateCustomerPortalResponse.toJson(),
        "goliothCreateDeviceRequest": goliothCreateDeviceRequest.toJson(),
        "goliothCreateDeviceResponse": goliothCreateDeviceResponse.toJson(),
        "goliothCreateIntegrationRequest": goliothCreateIntegrationRequest.toJson(),
        "goliothCreateIntegrationResponse": goliothCreateIntegrationResponse.toJson(),
        "goliothCreateOrganizationRequest": goliothCreateOrganizationRequest.toJson(),
        "goliothCreateOrganizationResponse": goliothCreateOrganizationResponse.toJson(),
        "goliothCreateProjectRequest": goliothCreateProjectRequest.toJson(),
        "goliothCreateProjectResponse": goliothCreateProjectResponse.toJson(),
        "goliothCreateReleaseRequest": goliothCreateReleaseRequest.toJson(),
        "goliothCreateReleaseResponse": goliothCreateReleaseResponse.toJson(),
        "goliothCreateSettingRequest": goliothCreateSettingRequest.toJson(),
        "goliothCreateSettingResponse": goliothCreateSettingResponse.toJson(),
        "goliothCreateTagRequest": goliothCreateTagRequest.toJson(),
        "goliothCreateTagResponse": goliothCreateTagResponse.toJson(),
        "goliothCredential": goliothCredential.toJson(),
        "goliothCredentialType": goliothCredentialType.toJson(),
        "goliothDeleteAPIKeyResponse": goliothDeleteApiKeyResponse.toJson(),
        "goliothDeleteArtifactResponse": goliothDeleteArtifactResponse.toJson(),
        "goliothDeleteBlueprintResponse": goliothDeleteBlueprintResponse.toJson(),
        "goliothDeleteCertificateResponse": goliothDeleteCertificateResponse.toJson(),
        "goliothDeleteCredentialResponse": goliothDeleteCredentialResponse.toJson(),
        "goliothDeleteDeviceResponse": goliothDeleteDeviceResponse.toJson(),
        "goliothDeleteDeviceStateResponse": goliothDeleteDeviceStateResponse.toJson(),
        "goliothDeleteIntegrationResponse": goliothDeleteIntegrationResponse.toJson(),
        "goliothDeletePolicyResponse": goliothDeletePolicyResponse.toJson(),
        "goliothDeleteProjectResponse": goliothDeleteProjectResponse.toJson(),
        "goliothDeleteReleaseResponse": goliothDeleteReleaseResponse.toJson(),
        "goliothDeleteSettingResponse": goliothDeleteSettingResponse.toJson(),
        "goliothDeleteTagResponse": goliothDeleteTagResponse.toJson(),
        "goliothDevice": goliothDevice.toJson(),
        "goliothDeviceActivityLog": goliothDeviceActivityLog.toJson(),
        "goliothDeviceLogEntry": goliothDeviceLogEntry.toJson(),
        "goliothDeviceLogLevel": goliothDeviceLogLevel.toJson(),
        "goliothDeviceLogType": goliothDeviceLogType.toJson(),
        "goliothDeviceMetadata": goliothDeviceMetadata.toJson(),
        "goliothDeviceStreamQuery": goliothDeviceStreamQuery.toJson(),
        "goliothDeviceUpdate": goliothDeviceUpdate.toJson(),
        "goliothEventType": goliothEventType.toJson(),
        "goliothFirmwareLogEntry": goliothFirmwareLogEntry.toJson(),
        "goliothGetArtifactResponse": goliothGetArtifactResponse.toJson(),
        "goliothGetAvailablePlansResponse": goliothGetAvailablePlansResponse.toJson(),
        "goliothGetBlueprintResponse": goliothGetBlueprintResponse.toJson(),
        "goliothGetBoardsResponse": goliothGetBoardsResponse.toJson(),
        "goliothGetCertificateResponse": goliothGetCertificateResponse.toJson(),
        "goliothGetDeviceResponse": goliothGetDeviceResponse.toJson(),
        "goliothGetDeviceStateResponse": goliothGetDeviceStateResponse.toJson(),
        "goliothGetDeviceStreamRequest": goliothGetDeviceStreamRequest.toJson(),
        "goliothGetDeviceStreamResponse": goliothGetDeviceStreamResponse.toJson(),
        "goliothGetIntegrationResponse": goliothGetIntegrationResponse.toJson(),
        "goliothGetLatestDeviceActivityLogsResponse": goliothGetLatestDeviceActivityLogsResponse.toJson(),
        "goliothGetLogsResponse": goliothGetLogsResponse.toJson(),
        "goliothGetOrganizationResponse": goliothGetOrganizationResponse.toJson(),
        "goliothGetPolicyResponse": goliothGetPolicyResponse.toJson(),
        "goliothGetProjectResponse": goliothGetProjectResponse.toJson(),
        "goliothGetProjectStreamRequest": goliothGetProjectStreamRequest.toJson(),
        "goliothGetProjectStreamResponse": goliothGetProjectStreamResponse.toJson(),
        "goliothGetQuotaResponse": goliothGetQuotaResponse.toJson(),
        "goliothGetReleaseResponse": goliothGetReleaseResponse.toJson(),
        "goliothGetSettingResponse": goliothGetSettingResponse.toJson(),
        "goliothGetTagResponse": goliothGetTagResponse.toJson(),
        "goliothIntegration": goliothIntegration.toJson(),
        "goliothIntegrationType": goliothIntegrationType.toJson(),
        "goliothIntegrationTypeAttribute": goliothIntegrationTypeAttribute.toJson(),
        "goliothIntegrationUpdate": goliothIntegrationUpdate.toJson(),
        "goliothIntegrationValidationResponse": goliothIntegrationValidationResponse.toJson(),
        "goliothInviteUserRequest": goliothInviteUserRequest.toJson(),
        "goliothInviteUserResponse": goliothInviteUserResponse.toJson(),
        "goliothListAPIKeyResponse": goliothListApiKeyResponse.toJson(),
        "goliothListAllowedSettingsDataTypesResponse": goliothListAllowedSettingsDataTypesResponse.toJson(),
        "goliothListArtifactResponse": goliothListArtifactResponse.toJson(),
        "goliothListBlueprintResponse": goliothListBlueprintResponse.toJson(),
        "goliothListBoardsResponse": goliothListBoardsResponse.toJson(),
        "goliothListCertificateResponse": goliothListCertificateResponse.toJson(),
        "goliothListCredentialResponse": goliothListCredentialResponse.toJson(),
        "goliothListDeviceResponse": goliothListDeviceResponse.toJson(),
        "goliothListEventTypesResponse": goliothListEventTypesResponse.toJson(),
        "goliothListFirmwareLogsResponse": goliothListFirmwareLogsResponse.toJson(),
        "goliothListIntegrationResponse": goliothListIntegrationResponse.toJson(),
        "goliothListIntegrationTypesResponse": goliothListIntegrationTypesResponse.toJson(),
        "goliothListOrganizationResponse": goliothListOrganizationResponse.toJson(),
        "goliothListPermissionResponse": goliothListPermissionResponse.toJson(),
        "goliothListPolicyResponse": goliothListPolicyResponse.toJson(),
        "goliothListProjectResponse": goliothListProjectResponse.toJson(),
        "goliothListReleaseResponse": goliothListReleaseResponse.toJson(),
        "goliothListRoleResponse": goliothListRoleResponse.toJson(),
        "goliothListSettingResponse": goliothListSettingResponse.toJson(),
        "goliothListTagResponse": goliothListTagResponse.toJson(),
        "goliothListUsersResponse": goliothListUsersResponse.toJson(),
        "goliothMoveProjectResponse": goliothMoveProjectResponse.toJson(),
        "goliothOrganization": goliothOrganization.toJson(),
        "goliothOrganizationUpdate": goliothOrganizationUpdate.toJson(),
        "goliothPaymentWebhookResponse": goliothPaymentWebhookResponse.toJson(),
        "goliothPermission": goliothPermission.toJson(),
        "goliothPlan": goliothPlan.toJson(),
        "goliothPolicy": goliothPolicy.toJson(),
        "goliothPolicyUpdate": goliothPolicyUpdate.toJson(),
        "goliothProject": goliothProject.toJson(),
        "goliothProjectUpdate": goliothProjectUpdate.toJson(),
        "goliothProvisionData": goliothProvisionData.toJson(),
        "goliothProvisionDeviceRequest": goliothProvisionDeviceRequest.toJson(),
        "goliothProvisionDeviceResponse": goliothProvisionDeviceResponse.toJson(),
        "goliothQueryField": goliothQueryField.toJson(),
        "goliothQueryFilter": goliothQueryFilter.toJson(),
        "goliothQuota": goliothQuota.toJson(),
        "goliothQuotaPerType": goliothQuotaPerType.toJson(),
        "goliothRelease": goliothRelease.toJson(),
        "goliothReleaseUpdate": goliothReleaseUpdate.toJson(),
        "goliothRemoteProcedureCallRequest": goliothRemoteProcedureCallRequest.toJson(),
        "goliothRemoteProcedureCallResponse": goliothRemoteProcedureCallResponse.toJson(),
        "goliothRole": goliothRole.toJson(),
        "goliothSetting": goliothSetting.toJson(),
        "goliothSettingDataType": goliothSettingDataType.toJson(),
        "goliothSettingError": goliothSettingError.toJson(),
        "goliothSettingUpdate": goliothSettingUpdate.toJson(),
        "goliothSettingsStatus": goliothSettingsStatus.toJson(),
        "goliothSubscriptionItem": goliothSubscriptionItem.toJson(),
        "goliothTagUpdate": goliothTagUpdate.toJson(),
        "goliothTestIntegrationRequest": goliothTestIntegrationRequest.toJson(),
        "goliothTestIntegrationResponse": goliothTestIntegrationResponse.toJson(),
        "goliothUpdateAPIKeyResponse": goliothUpdateApiKeyResponse.toJson(),
        "goliothUpdateArtifactResponse": goliothUpdateArtifactResponse.toJson(),
        "goliothUpdateBlueprintResponse": goliothUpdateBlueprintResponse.toJson(),
        "goliothUpdateDeviceResponse": goliothUpdateDeviceResponse.toJson(),
        "goliothUpdateDeviceStateResponse": goliothUpdateDeviceStateResponse.toJson(),
        "goliothUpdateIntegrationResponse": goliothUpdateIntegrationResponse.toJson(),
        "goliothUpdateOrganizationResponse": goliothUpdateOrganizationResponse.toJson(),
        "goliothUpdatePolicyResponse": goliothUpdatePolicyResponse.toJson(),
        "goliothUpdateProjectResponse": goliothUpdateProjectResponse.toJson(),
        "goliothUpdateReleaseResponse": goliothUpdateReleaseResponse.toJson(),
        "goliothUpdateSettingResponse": goliothUpdateSettingResponse.toJson(),
        "goliothUpdateTagResponse": goliothUpdateTagResponse.toJson(),
        "goliothUser": goliothUser.toJson(),
        "protobufAny": protobufAny.toJson(),
        "protobufNullValue": protobufNullValue.toJson(),
        "rpcStatus": rpcStatus.toJson(),
    };
}

class ComgoliothTag {
    final GoliothArtifactUpdateType type;
    final ComgoliothTagProperties properties;

    ComgoliothTag({
        required this.type,
        required this.properties,
    });

    factory ComgoliothTag.fromJson(Map<String, dynamic> json) => ComgoliothTag(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: ComgoliothTagProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class ComgoliothTagProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate name;
    final CreatedAt createdAt;
    final CreatedAt updatedAt;

    ComgoliothTagProperties({
        required this.id,
        required this.name,
        required this.createdAt,
        required this.updatedAt,
    });

    factory ComgoliothTagProperties.fromJson(Map<String, dynamic> json) => ComgoliothTagProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
        updatedAt: CreatedAt.fromJson(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "createdAt": createdAt.toJson(),
        "updatedAt": updatedAt.toJson(),
    };
}

class CreatedAt {
    final CreatedAtType type;
    final Format format;

    CreatedAt({
        required this.type,
        required this.format,
    });

    factory CreatedAt.fromJson(Map<String, dynamic> json) => CreatedAt(
        type: createdAtTypeValues.map[json["type"]]!,
        format: formatValues.map[json["format"]]!,
    );

    Map<String, dynamic> toJson() => {
        "type": createdAtTypeValues.reverse[type],
        "format": formatValues.reverse[format],
    };
}

enum Format {
    BYTE,
    DATE_TIME,
    INT32,
    INT64,
    UINT64
}

final formatValues = EnumValues({
    "byte": Format.BYTE,
    "date-time": Format.DATE_TIME,
    "int32": Format.INT32,
    "int64": Format.INT64,
    "uint64": Format.UINT64
});

enum CreatedAtType {
    ARRAY,
    BOOLEAN,
    INTEGER,
    STRING
}

final createdAtTypeValues = EnumValues({
    "array": CreatedAtType.ARRAY,
    "boolean": CreatedAtType.BOOLEAN,
    "integer": CreatedAtType.INTEGER,
    "string": CreatedAtType.STRING
});

class GoliothArtifactUpdate {
    final GoliothArtifactUpdateType type;

    GoliothArtifactUpdate({
        required this.type,
    });

    factory GoliothArtifactUpdate.fromJson(Map<String, dynamic> json) => GoliothArtifactUpdate(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
    };
}

enum GoliothArtifactUpdateType {
    BOOLEAN,
    OBJECT,
    STRING
}

final goliothArtifactUpdateTypeValues = EnumValues({
    "boolean": GoliothArtifactUpdateType.BOOLEAN,
    "object": GoliothArtifactUpdateType.OBJECT,
    "string": GoliothArtifactUpdateType.STRING
});

class GoliothAccountQuota {
    final GoliothArtifactUpdateType type;
    final GoliothAccountQuotaProperties properties;

    GoliothAccountQuota({
        required this.type,
        required this.properties,
    });

    factory GoliothAccountQuota.fromJson(Map<String, dynamic> json) => GoliothAccountQuota(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothAccountQuotaProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothAccountQuotaProperties {
    final GoliothArtifactUpdate tier;
    final TypeClass account;
    final Organizations projects;
    final Organizations organizations;

    GoliothAccountQuotaProperties({
        required this.tier,
        required this.account,
        required this.projects,
        required this.organizations,
    });

    factory GoliothAccountQuotaProperties.fromJson(Map<String, dynamic> json) => GoliothAccountQuotaProperties(
        tier: GoliothArtifactUpdate.fromJson(json["tier"]),
        account: TypeClass.fromJson(json["account"]),
        projects: Organizations.fromJson(json["projects"]),
        organizations: Organizations.fromJson(json["organizations"]),
    );

    Map<String, dynamic> toJson() => {
        "tier": tier.toJson(),
        "account": account.toJson(),
        "projects": projects.toJson(),
        "organizations": organizations.toJson(),
    };
}

class TypeClass {
    final String ref;

    TypeClass({
        required this.ref,
    });

    factory TypeClass.fromJson(Map<String, dynamic> json) => TypeClass(
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "\u0024ref": ref,
    };
}

class Organizations {
    final GoliothArtifactUpdateType type;
    final TypeClass additionalProperties;

    Organizations({
        required this.type,
        required this.additionalProperties,
    });

    factory Organizations.fromJson(Map<String, dynamic> json) => Organizations(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        additionalProperties: TypeClass.fromJson(json["additionalProperties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "additionalProperties": additionalProperties.toJson(),
    };
}

class GoliothApiKey {
    final GoliothArtifactUpdateType type;
    final GoliothApiKeyProperties properties;

    GoliothApiKey({
        required this.type,
        required this.properties,
    });

    factory GoliothApiKey.fromJson(Map<String, dynamic> json) => GoliothApiKey(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothApiKeyProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothApiKeyProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate key;
    final CreatedAt createdAt;
    final TypeClass type;
    final GoliothArtifactUpdate secret;
    final GoliothArtifactUpdate policyId;
    final KeyTags roles;
    final KeyTags keyTags;

    GoliothApiKeyProperties({
        required this.id,
        required this.key,
        required this.createdAt,
        required this.type,
        required this.secret,
        required this.policyId,
        required this.roles,
        required this.keyTags,
    });

    factory GoliothApiKeyProperties.fromJson(Map<String, dynamic> json) => GoliothApiKeyProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        key: GoliothArtifactUpdate.fromJson(json["key"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
        type: TypeClass.fromJson(json["type"]),
        secret: GoliothArtifactUpdate.fromJson(json["secret"]),
        policyId: GoliothArtifactUpdate.fromJson(json["policyId"]),
        roles: KeyTags.fromJson(json["roles"]),
        keyTags: KeyTags.fromJson(json["keyTags"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "key": key.toJson(),
        "createdAt": createdAt.toJson(),
        "type": type.toJson(),
        "secret": secret.toJson(),
        "policyId": policyId.toJson(),
        "roles": roles.toJson(),
        "keyTags": keyTags.toJson(),
    };
}

class KeyTags {
    final CreatedAtType type;
    final GoliothArtifactUpdate items;

    KeyTags({
        required this.type,
        required this.items,
    });

    factory KeyTags.fromJson(Map<String, dynamic> json) => KeyTags(
        type: createdAtTypeValues.map[json["type"]]!,
        items: GoliothArtifactUpdate.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "type": createdAtTypeValues.reverse[type],
        "items": items.toJson(),
    };
}

class GoliothApiKeyType {
    final CreatedAtType type;
    final List<String> goliothApiKeyTypeEnum;
    final String goliothApiKeyTypeDefault;
    final String? description;

    GoliothApiKeyType({
        required this.type,
        required this.goliothApiKeyTypeEnum,
        required this.goliothApiKeyTypeDefault,
        this.description,
    });

    factory GoliothApiKeyType.fromJson(Map<String, dynamic> json) => GoliothApiKeyType(
        type: createdAtTypeValues.map[json["type"]]!,
        goliothApiKeyTypeEnum: List<String>.from(json["enum"].map((x) => x)),
        goliothApiKeyTypeDefault: json["default"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "type": createdAtTypeValues.reverse[type],
        "enum": List<dynamic>.from(goliothApiKeyTypeEnum.map((x) => x)),
        "default": goliothApiKeyTypeDefault,
        "description": description,
    };
}

class GoliothApiKeyUpdate {
    final GoliothArtifactUpdateType type;
    final GoliothApiKeyUpdateProperties properties;

    GoliothApiKeyUpdate({
        required this.type,
        required this.properties,
    });

    factory GoliothApiKeyUpdate.fromJson(Map<String, dynamic> json) => GoliothApiKeyUpdate(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothApiKeyUpdateProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothApiKeyUpdateProperties {
    final TypeClass type;
    final KeyTags keyTags;

    GoliothApiKeyUpdateProperties({
        required this.type,
        required this.keyTags,
    });

    factory GoliothApiKeyUpdateProperties.fromJson(Map<String, dynamic> json) => GoliothApiKeyUpdateProperties(
        type: TypeClass.fromJson(json["type"]),
        keyTags: KeyTags.fromJson(json["keyTags"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type.toJson(),
        "keyTags": keyTags.toJson(),
    };
}

class GoliothArtifact {
    final GoliothArtifactUpdateType type;
    final GoliothArtifactProperties properties;

    GoliothArtifact({
        required this.type,
        required this.properties,
    });

    factory GoliothArtifact.fromJson(Map<String, dynamic> json) => GoliothArtifact(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothArtifactProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothArtifactProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate version;
    final GoliothArtifactUpdate package;
    final GoliothArtifactUpdate blueprintId;
    final CreatedAt createdAt;
    final CreatedAt updatedAt;
    final GoliothArtifactUpdate binaryInfo;
    final CreatedAt size;

    GoliothArtifactProperties({
        required this.id,
        required this.version,
        required this.package,
        required this.blueprintId,
        required this.createdAt,
        required this.updatedAt,
        required this.binaryInfo,
        required this.size,
    });

    factory GoliothArtifactProperties.fromJson(Map<String, dynamic> json) => GoliothArtifactProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        version: GoliothArtifactUpdate.fromJson(json["version"]),
        package: GoliothArtifactUpdate.fromJson(json["package"]),
        blueprintId: GoliothArtifactUpdate.fromJson(json["blueprintId"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
        updatedAt: CreatedAt.fromJson(json["updatedAt"]),
        binaryInfo: GoliothArtifactUpdate.fromJson(json["binaryInfo"]),
        size: CreatedAt.fromJson(json["size"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "version": version.toJson(),
        "package": package.toJson(),
        "blueprintId": blueprintId.toJson(),
        "createdAt": createdAt.toJson(),
        "updatedAt": updatedAt.toJson(),
        "binaryInfo": binaryInfo.toJson(),
        "size": size.toJson(),
    };
}

class GoliothBlueprint {
    final GoliothArtifactUpdateType type;
    final GoliothBlueprintProperties properties;

    GoliothBlueprint({
        required this.type,
        required this.properties,
    });

    factory GoliothBlueprint.fromJson(Map<String, dynamic> json) => GoliothBlueprint(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothBlueprintProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothBlueprintProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate boardId;
    final GoliothArtifactUpdate platform;
    final CreatedAt createdAt;
    final CreatedAt updatedAt;

    GoliothBlueprintProperties({
        required this.id,
        required this.name,
        required this.boardId,
        required this.platform,
        required this.createdAt,
        required this.updatedAt,
    });

    factory GoliothBlueprintProperties.fromJson(Map<String, dynamic> json) => GoliothBlueprintProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        boardId: GoliothArtifactUpdate.fromJson(json["boardId"]),
        platform: GoliothArtifactUpdate.fromJson(json["platform"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
        updatedAt: CreatedAt.fromJson(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "boardId": boardId.toJson(),
        "platform": platform.toJson(),
        "createdAt": createdAt.toJson(),
        "updatedAt": updatedAt.toJson(),
    };
}

class GoliothBlueprintUpdateClass {
    final GoliothArtifactUpdateType type;
    final GoliothBlueprintUpdateProperties properties;

    GoliothBlueprintUpdateClass({
        required this.type,
        required this.properties,
    });

    factory GoliothBlueprintUpdateClass.fromJson(Map<String, dynamic> json) => GoliothBlueprintUpdateClass(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothBlueprintUpdateProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothBlueprintUpdateProperties {
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate boardId;
    final GoliothArtifactUpdate platform;
    final GoliothArtifactUpdate? projectId;

    GoliothBlueprintUpdateProperties({
        required this.name,
        required this.boardId,
        required this.platform,
        this.projectId,
    });

    factory GoliothBlueprintUpdateProperties.fromJson(Map<String, dynamic> json) => GoliothBlueprintUpdateProperties(
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        boardId: GoliothArtifactUpdate.fromJson(json["boardId"]),
        platform: GoliothArtifactUpdate.fromJson(json["platform"]),
        projectId: json["projectId"] == null ? null : GoliothArtifactUpdate.fromJson(json["projectId"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "boardId": boardId.toJson(),
        "platform": platform.toJson(),
        "projectId": projectId?.toJson(),
    };
}

class GoliothBoard {
    final GoliothArtifactUpdateType type;
    final GoliothBoardProperties properties;

    GoliothBoard({
        required this.type,
        required this.properties,
    });

    factory GoliothBoard.fromJson(Map<String, dynamic> json) => GoliothBoard(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothBoardProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothBoardProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate arch;
    final KeyTags platforms;

    GoliothBoardProperties({
        required this.id,
        required this.name,
        required this.arch,
        required this.platforms,
    });

    factory GoliothBoardProperties.fromJson(Map<String, dynamic> json) => GoliothBoardProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        arch: GoliothArtifactUpdate.fromJson(json["arch"]),
        platforms: KeyTags.fromJson(json["platforms"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "arch": arch.toJson(),
        "platforms": platforms.toJson(),
    };
}

class GoliothCertificate {
    final GoliothArtifactUpdateType type;
    final GoliothCertificateProperties properties;

    GoliothCertificate({
        required this.type,
        required this.properties,
    });

    factory GoliothCertificate.fromJson(Map<String, dynamic> json) => GoliothCertificate(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCertificateProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCertificateProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate projectId;
    final GoliothArtifactUpdate enabled;
    final GoliothArtifactUpdate certType;
    final TypeClass certificateContent;
    final CreatedAt createdAt;

    GoliothCertificateProperties({
        required this.id,
        required this.projectId,
        required this.enabled,
        required this.certType,
        required this.certificateContent,
        required this.createdAt,
    });

    factory GoliothCertificateProperties.fromJson(Map<String, dynamic> json) => GoliothCertificateProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        enabled: GoliothArtifactUpdate.fromJson(json["enabled"]),
        certType: GoliothArtifactUpdate.fromJson(json["certType"]),
        certificateContent: TypeClass.fromJson(json["certificateContent"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "projectId": projectId.toJson(),
        "enabled": enabled.toJson(),
        "certType": certType.toJson(),
        "certificateContent": certificateContent.toJson(),
        "createdAt": createdAt.toJson(),
    };
}

class GoliothCertificateContent {
    final GoliothArtifactUpdateType type;
    final GoliothCertificateContentProperties properties;

    GoliothCertificateContent({
        required this.type,
        required this.properties,
    });

    factory GoliothCertificateContent.fromJson(Map<String, dynamic> json) => GoliothCertificateContent(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCertificateContentProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCertificateContentProperties {
    final CreatedAt signature;
    final GoliothArtifactUpdate signatureAlgorithm;
    final GoliothArtifactUpdate publicKeyAlgorithm;
    final CreatedAt publicKey;
    final CreatedAt version;
    final GoliothArtifactUpdate serialNumber;
    final GoliothArtifactUpdate issuer;
    final GoliothArtifactUpdate subject;
    final CreatedAt notBefore;
    final CreatedAt notAfter;
    final KeyTags keyUsages;

    GoliothCertificateContentProperties({
        required this.signature,
        required this.signatureAlgorithm,
        required this.publicKeyAlgorithm,
        required this.publicKey,
        required this.version,
        required this.serialNumber,
        required this.issuer,
        required this.subject,
        required this.notBefore,
        required this.notAfter,
        required this.keyUsages,
    });

    factory GoliothCertificateContentProperties.fromJson(Map<String, dynamic> json) => GoliothCertificateContentProperties(
        signature: CreatedAt.fromJson(json["signature"]),
        signatureAlgorithm: GoliothArtifactUpdate.fromJson(json["signatureAlgorithm"]),
        publicKeyAlgorithm: GoliothArtifactUpdate.fromJson(json["publicKeyAlgorithm"]),
        publicKey: CreatedAt.fromJson(json["publicKey"]),
        version: CreatedAt.fromJson(json["version"]),
        serialNumber: GoliothArtifactUpdate.fromJson(json["serialNumber"]),
        issuer: GoliothArtifactUpdate.fromJson(json["issuer"]),
        subject: GoliothArtifactUpdate.fromJson(json["subject"]),
        notBefore: CreatedAt.fromJson(json["notBefore"]),
        notAfter: CreatedAt.fromJson(json["notAfter"]),
        keyUsages: KeyTags.fromJson(json["keyUsages"]),
    );

    Map<String, dynamic> toJson() => {
        "signature": signature.toJson(),
        "signatureAlgorithm": signatureAlgorithm.toJson(),
        "publicKeyAlgorithm": publicKeyAlgorithm.toJson(),
        "publicKey": publicKey.toJson(),
        "version": version.toJson(),
        "serialNumber": serialNumber.toJson(),
        "issuer": issuer.toJson(),
        "subject": subject.toJson(),
        "notBefore": notBefore.toJson(),
        "notAfter": notAfter.toJson(),
        "keyUsages": keyUsages.toJson(),
    };
}

class GoliothConditionalMap {
    final GoliothArtifactUpdateType type;
    final GoliothConditionalMapProperties properties;

    GoliothConditionalMap({
        required this.type,
        required this.properties,
    });

    factory GoliothConditionalMap.fromJson(Map<String, dynamic> json) => GoliothConditionalMap(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothConditionalMapProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothConditionalMapProperties {
    final KeyTags tags;

    GoliothConditionalMapProperties({
        required this.tags,
    });

    factory GoliothConditionalMapProperties.fromJson(Map<String, dynamic> json) => GoliothConditionalMapProperties(
        tags: KeyTags.fromJson(json["tags"]),
    );

    Map<String, dynamic> toJson() => {
        "tags": tags.toJson(),
    };
}

class GoliothCreateApiKeyRequest {
    final GoliothArtifactUpdateType type;
    final GoliothCreateApiKeyRequestProperties properties;

    GoliothCreateApiKeyRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateApiKeyRequest.fromJson(Map<String, dynamic> json) => GoliothCreateApiKeyRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateApiKeyRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateApiKeyRequestProperties {
    final GoliothArtifactUpdate projectId;
    final TypeClass type;
    final KeyTags keyTags;

    GoliothCreateApiKeyRequestProperties({
        required this.projectId,
        required this.type,
        required this.keyTags,
    });

    factory GoliothCreateApiKeyRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateApiKeyRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        type: TypeClass.fromJson(json["type"]),
        keyTags: KeyTags.fromJson(json["keyTags"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "type": type.toJson(),
        "keyTags": keyTags.toJson(),
    };
}

class GoliothCreateApiKeyResponseClass {
    final GoliothArtifactUpdateType type;
    final GoliothCreateApiKeyResponseProperties properties;

    GoliothCreateApiKeyResponseClass({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateApiKeyResponseClass.fromJson(Map<String, dynamic> json) => GoliothCreateApiKeyResponseClass(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateApiKeyResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateApiKeyResponseProperties {
    final TypeClass data;

    GoliothCreateApiKeyResponseProperties({
        required this.data,
    });

    factory GoliothCreateApiKeyResponseProperties.fromJson(Map<String, dynamic> json) => GoliothCreateApiKeyResponseProperties(
        data: TypeClass.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class GoliothCreateArtifactRequest {
    final GoliothArtifactUpdateType type;
    final GoliothCreateArtifactRequestProperties properties;

    GoliothCreateArtifactRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateArtifactRequest.fromJson(Map<String, dynamic> json) => GoliothCreateArtifactRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateArtifactRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateArtifactRequestProperties {
    final GoliothArtifactUpdate projectId;
    final CreatedAt content;
    final GoliothArtifactUpdate version;
    final GoliothArtifactUpdate blueprintId;
    final GoliothArtifactUpdate package;

    GoliothCreateArtifactRequestProperties({
        required this.projectId,
        required this.content,
        required this.version,
        required this.blueprintId,
        required this.package,
    });

    factory GoliothCreateArtifactRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateArtifactRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        content: CreatedAt.fromJson(json["content"]),
        version: GoliothArtifactUpdate.fromJson(json["version"]),
        blueprintId: GoliothArtifactUpdate.fromJson(json["blueprintId"]),
        package: GoliothArtifactUpdate.fromJson(json["package"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "content": content.toJson(),
        "version": version.toJson(),
        "blueprintId": blueprintId.toJson(),
        "package": package.toJson(),
    };
}

class GoliothCreateCertificateRequest {
    final GoliothArtifactUpdateType type;
    final GoliothCreateCertificateRequestProperties properties;

    GoliothCreateCertificateRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateCertificateRequest.fromJson(Map<String, dynamic> json) => GoliothCreateCertificateRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateCertificateRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateCertificateRequestProperties {
    final GoliothArtifactUpdate projectId;
    final CreatedAt certFile;
    final GoliothArtifactUpdate certType;

    GoliothCreateCertificateRequestProperties({
        required this.projectId,
        required this.certFile,
        required this.certType,
    });

    factory GoliothCreateCertificateRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateCertificateRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        certFile: CreatedAt.fromJson(json["certFile"]),
        certType: GoliothArtifactUpdate.fromJson(json["certType"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "certFile": certFile.toJson(),
        "certType": certType.toJson(),
    };
}

class GoliothCreateCheckoutSessionRequest {
    final GoliothArtifactUpdateType type;
    final GoliothCreateCheckoutSessionRequestProperties properties;

    GoliothCreateCheckoutSessionRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateCheckoutSessionRequest.fromJson(Map<String, dynamic> json) => GoliothCreateCheckoutSessionRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateCheckoutSessionRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateCheckoutSessionRequestProperties {
    final GoliothArtifactUpdate organizationId;
    final Items items;
    final GoliothArtifactUpdate callbackPath;

    GoliothCreateCheckoutSessionRequestProperties({
        required this.organizationId,
        required this.items,
        required this.callbackPath,
    });

    factory GoliothCreateCheckoutSessionRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateCheckoutSessionRequestProperties(
        organizationId: GoliothArtifactUpdate.fromJson(json["organizationId"]),
        items: Items.fromJson(json["items"]),
        callbackPath: GoliothArtifactUpdate.fromJson(json["callbackPath"]),
    );

    Map<String, dynamic> toJson() => {
        "organizationId": organizationId.toJson(),
        "items": items.toJson(),
        "callbackPath": callbackPath.toJson(),
    };
}

class Items {
    final CreatedAtType type;
    final TypeClass items;

    Items({
        required this.type,
        required this.items,
    });

    factory Items.fromJson(Map<String, dynamic> json) => Items(
        type: createdAtTypeValues.map[json["type"]]!,
        items: TypeClass.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "type": createdAtTypeValues.reverse[type],
        "items": items.toJson(),
    };
}

class GoliothCreateCResponse {
    final GoliothArtifactUpdateType type;
    final GoliothCreateCheckoutSessionResponseProperties properties;

    GoliothCreateCResponse({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateCResponse.fromJson(Map<String, dynamic> json) => GoliothCreateCResponse(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateCheckoutSessionResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateCheckoutSessionResponseProperties {
    final GoliothArtifactUpdate url;

    GoliothCreateCheckoutSessionResponseProperties({
        required this.url,
    });

    factory GoliothCreateCheckoutSessionResponseProperties.fromJson(Map<String, dynamic> json) => GoliothCreateCheckoutSessionResponseProperties(
        url: GoliothArtifactUpdate.fromJson(json["url"]),
    );

    Map<String, dynamic> toJson() => {
        "url": url.toJson(),
    };
}

class GoliothCreateCredentialRequest {
    final GoliothArtifactUpdateType type;
    final GoliothCreateCredentialRequestProperties properties;

    GoliothCreateCredentialRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateCredentialRequest.fromJson(Map<String, dynamic> json) => GoliothCreateCredentialRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateCredentialRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateCredentialRequestProperties {
    final GoliothArtifactUpdate projectId;
    final GoliothArtifactUpdate deviceId;
    final TypeClass type;
    final GoliothArtifactUpdate identity;
    final GoliothArtifactUpdate preSharedKey;

    GoliothCreateCredentialRequestProperties({
        required this.projectId,
        required this.deviceId,
        required this.type,
        required this.identity,
        required this.preSharedKey,
    });

    factory GoliothCreateCredentialRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateCredentialRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        deviceId: GoliothArtifactUpdate.fromJson(json["deviceId"]),
        type: TypeClass.fromJson(json["type"]),
        identity: GoliothArtifactUpdate.fromJson(json["identity"]),
        preSharedKey: GoliothArtifactUpdate.fromJson(json["preSharedKey"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "deviceId": deviceId.toJson(),
        "type": type.toJson(),
        "identity": identity.toJson(),
        "preSharedKey": preSharedKey.toJson(),
    };
}

class GoliothCreateCustomerPortalRequest {
    final GoliothArtifactUpdateType type;
    final GoliothCreateCustomerPortalRequestProperties properties;

    GoliothCreateCustomerPortalRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateCustomerPortalRequest.fromJson(Map<String, dynamic> json) => GoliothCreateCustomerPortalRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateCustomerPortalRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateCustomerPortalRequestProperties {
    final GoliothArtifactUpdate organizationId;
    final GoliothArtifactUpdate callbackPath;

    GoliothCreateCustomerPortalRequestProperties({
        required this.organizationId,
        required this.callbackPath,
    });

    factory GoliothCreateCustomerPortalRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateCustomerPortalRequestProperties(
        organizationId: GoliothArtifactUpdate.fromJson(json["organizationId"]),
        callbackPath: GoliothArtifactUpdate.fromJson(json["callbackPath"]),
    );

    Map<String, dynamic> toJson() => {
        "organizationId": organizationId.toJson(),
        "callbackPath": callbackPath.toJson(),
    };
}

class GoliothCreateDeviceRequest {
    final GoliothArtifactUpdateType type;
    final GoliothCreateDeviceRequestProperties properties;

    GoliothCreateDeviceRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateDeviceRequest.fromJson(Map<String, dynamic> json) => GoliothCreateDeviceRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateDeviceRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateDeviceRequestProperties {
    final GoliothArtifactUpdate projectId;
    final GoliothArtifactUpdate name;
    final KeyTags hardwareIds;
    final KeyTags tagIds;
    final GoliothArtifactUpdate blueprintId;

    GoliothCreateDeviceRequestProperties({
        required this.projectId,
        required this.name,
        required this.hardwareIds,
        required this.tagIds,
        required this.blueprintId,
    });

    factory GoliothCreateDeviceRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateDeviceRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        hardwareIds: KeyTags.fromJson(json["hardwareIds"]),
        tagIds: KeyTags.fromJson(json["tagIds"]),
        blueprintId: GoliothArtifactUpdate.fromJson(json["blueprintId"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "name": name.toJson(),
        "hardwareIds": hardwareIds.toJson(),
        "tagIds": tagIds.toJson(),
        "blueprintId": blueprintId.toJson(),
    };
}

class GoliothCreateIntegrationRequest {
    final GoliothArtifactUpdateType type;
    final GoliothCreateIntegrationRequestProperties properties;

    GoliothCreateIntegrationRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateIntegrationRequest.fromJson(Map<String, dynamic> json) => GoliothCreateIntegrationRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateIntegrationRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateIntegrationRequestProperties {
    final GoliothArtifactUpdate projectId;
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate type;
    final GoliothArtifactUpdate configuration;
    final GoliothArtifactUpdate enabled;
    final Items eventTypes;

    GoliothCreateIntegrationRequestProperties({
        required this.projectId,
        required this.name,
        required this.type,
        required this.configuration,
        required this.enabled,
        required this.eventTypes,
    });

    factory GoliothCreateIntegrationRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateIntegrationRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        type: GoliothArtifactUpdate.fromJson(json["type"]),
        configuration: GoliothArtifactUpdate.fromJson(json["configuration"]),
        enabled: GoliothArtifactUpdate.fromJson(json["enabled"]),
        eventTypes: Items.fromJson(json["eventTypes"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "name": name.toJson(),
        "type": type.toJson(),
        "configuration": configuration.toJson(),
        "enabled": enabled.toJson(),
        "eventTypes": eventTypes.toJson(),
    };
}

class GoliothCreateOrganizationRequestClass {
    final GoliothArtifactUpdateType type;
    final GoliothCreateOrganizationRequestProperties properties;

    GoliothCreateOrganizationRequestClass({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateOrganizationRequestClass.fromJson(Map<String, dynamic> json) => GoliothCreateOrganizationRequestClass(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateOrganizationRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateOrganizationRequestProperties {
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate website;

    GoliothCreateOrganizationRequestProperties({
        required this.name,
        required this.website,
    });

    factory GoliothCreateOrganizationRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateOrganizationRequestProperties(
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        website: GoliothArtifactUpdate.fromJson(json["website"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "website": website.toJson(),
    };
}

class GoliothCreateProjectRequest {
    final GoliothArtifactUpdateType type;
    final GoliothCreateProjectRequestProperties properties;

    GoliothCreateProjectRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateProjectRequest.fromJson(Map<String, dynamic> json) => GoliothCreateProjectRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateProjectRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateProjectRequestProperties {
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate organizationId;

    GoliothCreateProjectRequestProperties({
        required this.name,
        required this.organizationId,
    });

    factory GoliothCreateProjectRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateProjectRequestProperties(
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        organizationId: GoliothArtifactUpdate.fromJson(json["organizationId"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "organizationId": organizationId.toJson(),
    };
}

class GoliothCreateReleaseRequest {
    final GoliothArtifactUpdateType type;
    final GoliothCreateReleaseRequestProperties properties;

    GoliothCreateReleaseRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateReleaseRequest.fromJson(Map<String, dynamic> json) => GoliothCreateReleaseRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateReleaseRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateReleaseRequestProperties {
    final GoliothArtifactUpdate projectId;
    final KeyTags releaseTags;
    final KeyTags deviceTagIds;
    final KeyTags artifactIds;
    final GoliothArtifactUpdate rollout;

    GoliothCreateReleaseRequestProperties({
        required this.projectId,
        required this.releaseTags,
        required this.deviceTagIds,
        required this.artifactIds,
        required this.rollout,
    });

    factory GoliothCreateReleaseRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateReleaseRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        releaseTags: KeyTags.fromJson(json["releaseTags"]),
        deviceTagIds: KeyTags.fromJson(json["deviceTagIds"]),
        artifactIds: KeyTags.fromJson(json["artifactIds"]),
        rollout: GoliothArtifactUpdate.fromJson(json["rollout"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "releaseTags": releaseTags.toJson(),
        "deviceTagIds": deviceTagIds.toJson(),
        "artifactIds": artifactIds.toJson(),
        "rollout": rollout.toJson(),
    };
}

class GoliothCreateSettingRequest {
    final GoliothArtifactUpdateType type;
    final GoliothCreateSettingRequestProperties properties;

    GoliothCreateSettingRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateSettingRequest.fromJson(Map<String, dynamic> json) => GoliothCreateSettingRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateSettingRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateSettingRequestProperties {
    final GoliothArtifactUpdate projectId;
    final GoliothArtifactUpdate key;
    final GoliothArtifactUpdate dataType;
    final GoliothArtifactUpdate value;
    final GoliothArtifactUpdate blueprintId;
    final GoliothArtifactUpdate deviceId;

    GoliothCreateSettingRequestProperties({
        required this.projectId,
        required this.key,
        required this.dataType,
        required this.value,
        required this.blueprintId,
        required this.deviceId,
    });

    factory GoliothCreateSettingRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateSettingRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        key: GoliothArtifactUpdate.fromJson(json["key"]),
        dataType: GoliothArtifactUpdate.fromJson(json["dataType"]),
        value: GoliothArtifactUpdate.fromJson(json["value"]),
        blueprintId: GoliothArtifactUpdate.fromJson(json["blueprintId"]),
        deviceId: GoliothArtifactUpdate.fromJson(json["deviceId"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "key": key.toJson(),
        "dataType": dataType.toJson(),
        "value": value.toJson(),
        "blueprintId": blueprintId.toJson(),
        "deviceId": deviceId.toJson(),
    };
}

class GoliothCreateTagRequest {
    final GoliothArtifactUpdateType type;
    final GoliothCreateTagRequestProperties properties;

    GoliothCreateTagRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothCreateTagRequest.fromJson(Map<String, dynamic> json) => GoliothCreateTagRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCreateTagRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCreateTagRequestProperties {
    final GoliothArtifactUpdate projectId;
    final GoliothArtifactUpdate name;

    GoliothCreateTagRequestProperties({
        required this.projectId,
        required this.name,
    });

    factory GoliothCreateTagRequestProperties.fromJson(Map<String, dynamic> json) => GoliothCreateTagRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "name": name.toJson(),
    };
}

class GoliothCredential {
    final GoliothArtifactUpdateType type;
    final GoliothCredentialProperties properties;

    GoliothCredential({
        required this.type,
        required this.properties,
    });

    factory GoliothCredential.fromJson(Map<String, dynamic> json) => GoliothCredential(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothCredentialProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothCredentialProperties {
    final GoliothArtifactUpdate id;
    final TypeClass type;
    final GoliothArtifactUpdate identity;
    final CreatedAt createdAt;
    final GoliothArtifactUpdate preSharedKey;

    GoliothCredentialProperties({
        required this.id,
        required this.type,
        required this.identity,
        required this.createdAt,
        required this.preSharedKey,
    });

    factory GoliothCredentialProperties.fromJson(Map<String, dynamic> json) => GoliothCredentialProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        type: TypeClass.fromJson(json["type"]),
        identity: GoliothArtifactUpdate.fromJson(json["identity"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
        preSharedKey: GoliothArtifactUpdate.fromJson(json["preSharedKey"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "type": type.toJson(),
        "identity": identity.toJson(),
        "createdAt": createdAt.toJson(),
        "preSharedKey": preSharedKey.toJson(),
    };
}

class GoliothDevice {
    final GoliothArtifactUpdateType type;
    final GoliothDeviceProperties properties;

    GoliothDevice({
        required this.type,
        required this.properties,
    });

    factory GoliothDevice.fromJson(Map<String, dynamic> json) => GoliothDevice(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothDeviceProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothDeviceProperties {
    final GoliothArtifactUpdate id;
    final KeyTags hardwareIds;
    final GoliothArtifactUpdate name;
    final CreatedAt createdAt;
    final CreatedAt updatedAt;
    final KeyTags tagIds;
    final GoliothArtifactUpdate blueprintId;
    final GoliothArtifactUpdate data;
    final CreatedAt lastReport;
    final GoliothArtifactUpdate status;
    final TypeClass metadata;
    final GoliothArtifactUpdate enabled;

    GoliothDeviceProperties({
        required this.id,
        required this.hardwareIds,
        required this.name,
        required this.createdAt,
        required this.updatedAt,
        required this.tagIds,
        required this.blueprintId,
        required this.data,
        required this.lastReport,
        required this.status,
        required this.metadata,
        required this.enabled,
    });

    factory GoliothDeviceProperties.fromJson(Map<String, dynamic> json) => GoliothDeviceProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        hardwareIds: KeyTags.fromJson(json["hardwareIds"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
        updatedAt: CreatedAt.fromJson(json["updatedAt"]),
        tagIds: KeyTags.fromJson(json["tagIds"]),
        blueprintId: GoliothArtifactUpdate.fromJson(json["blueprintId"]),
        data: GoliothArtifactUpdate.fromJson(json["data"]),
        lastReport: CreatedAt.fromJson(json["lastReport"]),
        status: GoliothArtifactUpdate.fromJson(json["status"]),
        metadata: TypeClass.fromJson(json["metadata"]),
        enabled: GoliothArtifactUpdate.fromJson(json["enabled"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "hardwareIds": hardwareIds.toJson(),
        "name": name.toJson(),
        "createdAt": createdAt.toJson(),
        "updatedAt": updatedAt.toJson(),
        "tagIds": tagIds.toJson(),
        "blueprintId": blueprintId.toJson(),
        "data": data.toJson(),
        "lastReport": lastReport.toJson(),
        "status": status.toJson(),
        "metadata": metadata.toJson(),
        "enabled": enabled.toJson(),
    };
}

class GoliothDeviceActivityLog {
    final GoliothArtifactUpdateType type;
    final GoliothDeviceActivityLogProperties properties;

    GoliothDeviceActivityLog({
        required this.type,
        required this.properties,
    });

    factory GoliothDeviceActivityLog.fromJson(Map<String, dynamic> json) => GoliothDeviceActivityLog(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothDeviceActivityLogProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothDeviceActivityLogProperties {
    final GoliothArtifactUpdate deviceId;
    final CreatedAt lastReport;
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate deviceName;
    final GoliothArtifactUpdate status;
    final CreatedAt lastSeenOnline;
    final CreatedAt lastSeenOffline;

    GoliothDeviceActivityLogProperties({
        required this.deviceId,
        required this.lastReport,
        required this.id,
        required this.deviceName,
        required this.status,
        required this.lastSeenOnline,
        required this.lastSeenOffline,
    });

    factory GoliothDeviceActivityLogProperties.fromJson(Map<String, dynamic> json) => GoliothDeviceActivityLogProperties(
        deviceId: GoliothArtifactUpdate.fromJson(json["deviceId"]),
        lastReport: CreatedAt.fromJson(json["lastReport"]),
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        deviceName: GoliothArtifactUpdate.fromJson(json["deviceName"]),
        status: GoliothArtifactUpdate.fromJson(json["status"]),
        lastSeenOnline: CreatedAt.fromJson(json["lastSeenOnline"]),
        lastSeenOffline: CreatedAt.fromJson(json["lastSeenOffline"]),
    );

    Map<String, dynamic> toJson() => {
        "deviceId": deviceId.toJson(),
        "lastReport": lastReport.toJson(),
        "id": id.toJson(),
        "deviceName": deviceName.toJson(),
        "status": status.toJson(),
        "lastSeenOnline": lastSeenOnline.toJson(),
        "lastSeenOffline": lastSeenOffline.toJson(),
    };
}

class GoliothDeviceLogEntry {
    final GoliothArtifactUpdateType type;
    final Example example;
    final GoliothDeviceLogEntryProperties properties;
    final String description;

    GoliothDeviceLogEntry({
        required this.type,
        required this.example,
        required this.properties,
        required this.description,
    });

    factory GoliothDeviceLogEntry.fromJson(Map<String, dynamic> json) => GoliothDeviceLogEntry(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        example: Example.fromJson(json["example"]),
        properties: GoliothDeviceLogEntryProperties.fromJson(json["properties"]),
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "example": example.toJson(),
        "properties": properties.toJson(),
        "description": description,
    };
}

class Example {
    final String deviceId;
    final int level;
    final String message;
    final Metadata metadata;
    final String module;
    final String projectId;
    final Timestamp timestamp;

    Example({
        required this.deviceId,
        required this.level,
        required this.message,
        required this.metadata,
        required this.module,
        required this.projectId,
        required this.timestamp,
    });

    factory Example.fromJson(Map<String, dynamic> json) => Example(
        deviceId: json["device_id"],
        level: json["level"],
        message: json["message"],
        metadata: Metadata.fromJson(json["metadata"]),
        module: json["module"],
        projectId: json["project_id"],
        timestamp: Timestamp.fromJson(json["timestamp"]),
    );

    Map<String, dynamic> toJson() => {
        "device_id": deviceId,
        "level": level,
        "message": message,
        "metadata": metadata.toJson(),
        "module": module,
        "project_id": projectId,
        "timestamp": timestamp.toJson(),
    };
}

class Metadata {
    Metadata();

    factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
    );

    Map<String, dynamic> toJson() => {
    };
}

class Timestamp {
    final int nanos;
    final int seconds;

    Timestamp({
        required this.nanos,
        required this.seconds,
    });

    factory Timestamp.fromJson(Map<String, dynamic> json) => Timestamp(
        nanos: json["nanos"],
        seconds: json["seconds"],
    );

    Map<String, dynamic> toJson() => {
        "nanos": nanos,
        "seconds": seconds,
    };
}

class GoliothDeviceLogEntryProperties {
    final CreatedAt timestamp;
    final TypeClass type;
    final TypeClass level;
    final GoliothArtifactUpdate module;
    final GoliothArtifactUpdate moduleId;
    final GoliothArtifactUpdate message;
    final GoliothArtifactUpdate metadata;
    final GoliothArtifactUpdate deviceId;

    GoliothDeviceLogEntryProperties({
        required this.timestamp,
        required this.type,
        required this.level,
        required this.module,
        required this.moduleId,
        required this.message,
        required this.metadata,
        required this.deviceId,
    });

    factory GoliothDeviceLogEntryProperties.fromJson(Map<String, dynamic> json) => GoliothDeviceLogEntryProperties(
        timestamp: CreatedAt.fromJson(json["timestamp"]),
        type: TypeClass.fromJson(json["type"]),
        level: TypeClass.fromJson(json["level"]),
        module: GoliothArtifactUpdate.fromJson(json["module"]),
        moduleId: GoliothArtifactUpdate.fromJson(json["moduleId"]),
        message: GoliothArtifactUpdate.fromJson(json["message"]),
        metadata: GoliothArtifactUpdate.fromJson(json["metadata"]),
        deviceId: GoliothArtifactUpdate.fromJson(json["deviceId"]),
    );

    Map<String, dynamic> toJson() => {
        "timestamp": timestamp.toJson(),
        "type": type.toJson(),
        "level": level.toJson(),
        "module": module.toJson(),
        "moduleId": moduleId.toJson(),
        "message": message.toJson(),
        "metadata": metadata.toJson(),
        "deviceId": deviceId.toJson(),
    };
}

class GoliothDeviceMetadata {
    final GoliothArtifactUpdateType type;
    final GoliothDeviceMetadataProperties properties;

    GoliothDeviceMetadata({
        required this.type,
        required this.properties,
    });

    factory GoliothDeviceMetadata.fromJson(Map<String, dynamic> json) => GoliothDeviceMetadata(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothDeviceMetadataProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothDeviceMetadataProperties {
    final GoliothArtifactUpdate update;
    final GoliothArtifactUpdate status;
    final CreatedAt lastReport;
    final CreatedAt lastSeenOnline;
    final CreatedAt lastSeenOffline;
    final TypeClass lastSettingsStatus;

    GoliothDeviceMetadataProperties({
        required this.update,
        required this.status,
        required this.lastReport,
        required this.lastSeenOnline,
        required this.lastSeenOffline,
        required this.lastSettingsStatus,
    });

    factory GoliothDeviceMetadataProperties.fromJson(Map<String, dynamic> json) => GoliothDeviceMetadataProperties(
        update: GoliothArtifactUpdate.fromJson(json["update"]),
        status: GoliothArtifactUpdate.fromJson(json["status"]),
        lastReport: CreatedAt.fromJson(json["lastReport"]),
        lastSeenOnline: CreatedAt.fromJson(json["lastSeenOnline"]),
        lastSeenOffline: CreatedAt.fromJson(json["lastSeenOffline"]),
        lastSettingsStatus: TypeClass.fromJson(json["lastSettingsStatus"]),
    );

    Map<String, dynamic> toJson() => {
        "update": update.toJson(),
        "status": status.toJson(),
        "lastReport": lastReport.toJson(),
        "lastSeenOnline": lastSeenOnline.toJson(),
        "lastSeenOffline": lastSeenOffline.toJson(),
        "lastSettingsStatus": lastSettingsStatus.toJson(),
    };
}

class GoliothDeviceStreamQuery {
    final GoliothArtifactUpdateType type;
    final GoliothDeviceStreamQueryProperties properties;

    GoliothDeviceStreamQuery({
        required this.type,
        required this.properties,
    });

    factory GoliothDeviceStreamQuery.fromJson(Map<String, dynamic> json) => GoliothDeviceStreamQuery(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothDeviceStreamQueryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothDeviceStreamQueryProperties {
    final Items fields;
    final Items filters;
    final GoliothArtifactUpdate timeBucket;

    GoliothDeviceStreamQueryProperties({
        required this.fields,
        required this.filters,
        required this.timeBucket,
    });

    factory GoliothDeviceStreamQueryProperties.fromJson(Map<String, dynamic> json) => GoliothDeviceStreamQueryProperties(
        fields: Items.fromJson(json["fields"]),
        filters: Items.fromJson(json["filters"]),
        timeBucket: GoliothArtifactUpdate.fromJson(json["timeBucket"]),
    );

    Map<String, dynamic> toJson() => {
        "fields": fields.toJson(),
        "filters": filters.toJson(),
        "timeBucket": timeBucket.toJson(),
    };
}

class GoliothDeviceUpdate {
    final GoliothArtifactUpdateType type;
    final GoliothDeviceUpdateProperties properties;

    GoliothDeviceUpdate({
        required this.type,
        required this.properties,
    });

    factory GoliothDeviceUpdate.fromJson(Map<String, dynamic> json) => GoliothDeviceUpdate(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothDeviceUpdateProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothDeviceUpdateProperties {
    final GoliothArtifactUpdate name;
    final KeyTags addHardwareId;
    final KeyTags removeHardwareId;
    final KeyTags hardwareIds;
    final KeyTags addTagId;
    final KeyTags removeTagId;
    final GoliothArtifactUpdate blueprintId;
    final KeyTags tagIds;
    final GoliothArtifactUpdate enabled;

    GoliothDeviceUpdateProperties({
        required this.name,
        required this.addHardwareId,
        required this.removeHardwareId,
        required this.hardwareIds,
        required this.addTagId,
        required this.removeTagId,
        required this.blueprintId,
        required this.tagIds,
        required this.enabled,
    });

    factory GoliothDeviceUpdateProperties.fromJson(Map<String, dynamic> json) => GoliothDeviceUpdateProperties(
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        addHardwareId: KeyTags.fromJson(json["addHardwareId"]),
        removeHardwareId: KeyTags.fromJson(json["removeHardwareId"]),
        hardwareIds: KeyTags.fromJson(json["hardwareIds"]),
        addTagId: KeyTags.fromJson(json["addTagId"]),
        removeTagId: KeyTags.fromJson(json["removeTagId"]),
        blueprintId: GoliothArtifactUpdate.fromJson(json["blueprintId"]),
        tagIds: KeyTags.fromJson(json["tagIds"]),
        enabled: GoliothArtifactUpdate.fromJson(json["enabled"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "addHardwareId": addHardwareId.toJson(),
        "removeHardwareId": removeHardwareId.toJson(),
        "hardwareIds": hardwareIds.toJson(),
        "addTagId": addTagId.toJson(),
        "removeTagId": removeTagId.toJson(),
        "blueprintId": blueprintId.toJson(),
        "tagIds": tagIds.toJson(),
        "enabled": enabled.toJson(),
    };
}

class GoliothEventType {
    final GoliothArtifactUpdateType type;
    final GoliothEventTypeProperties properties;

    GoliothEventType({
        required this.type,
        required this.properties,
    });

    factory GoliothEventType.fromJson(Map<String, dynamic> json) => GoliothEventType(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothEventTypeProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothEventTypeProperties {
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate type;
    final GoliothArtifactUpdate subject;

    GoliothEventTypeProperties({
        required this.name,
        required this.type,
        required this.subject,
    });

    factory GoliothEventTypeProperties.fromJson(Map<String, dynamic> json) => GoliothEventTypeProperties(
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        type: GoliothArtifactUpdate.fromJson(json["type"]),
        subject: GoliothArtifactUpdate.fromJson(json["subject"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "type": type.toJson(),
        "subject": subject.toJson(),
    };
}

class GoliothFirmwareLogEntry {
    final GoliothArtifactUpdateType type;
    final GoliothFirmwareLogEntryProperties properties;

    GoliothFirmwareLogEntry({
        required this.type,
        required this.properties,
    });

    factory GoliothFirmwareLogEntry.fromJson(Map<String, dynamic> json) => GoliothFirmwareLogEntry(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothFirmwareLogEntryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothFirmwareLogEntryProperties {
    final CreatedAt time;
    final GoliothArtifactUpdate version;
    final GoliothArtifactUpdate target;
    final GoliothArtifactUpdate stateCode;
    final GoliothArtifactUpdate state;
    final GoliothArtifactUpdate reasonCode;
    final GoliothArtifactUpdate reason;
    final GoliothArtifactUpdate deviceId;
    final GoliothArtifactUpdate package;

    GoliothFirmwareLogEntryProperties({
        required this.time,
        required this.version,
        required this.target,
        required this.stateCode,
        required this.state,
        required this.reasonCode,
        required this.reason,
        required this.deviceId,
        required this.package,
    });

    factory GoliothFirmwareLogEntryProperties.fromJson(Map<String, dynamic> json) => GoliothFirmwareLogEntryProperties(
        time: CreatedAt.fromJson(json["time"]),
        version: GoliothArtifactUpdate.fromJson(json["version"]),
        target: GoliothArtifactUpdate.fromJson(json["target"]),
        stateCode: GoliothArtifactUpdate.fromJson(json["stateCode"]),
        state: GoliothArtifactUpdate.fromJson(json["state"]),
        reasonCode: GoliothArtifactUpdate.fromJson(json["reasonCode"]),
        reason: GoliothArtifactUpdate.fromJson(json["reason"]),
        deviceId: GoliothArtifactUpdate.fromJson(json["deviceId"]),
        package: GoliothArtifactUpdate.fromJson(json["package"]),
    );

    Map<String, dynamic> toJson() => {
        "time": time.toJson(),
        "version": version.toJson(),
        "target": target.toJson(),
        "stateCode": stateCode.toJson(),
        "state": state.toJson(),
        "reasonCode": reasonCode.toJson(),
        "reason": reason.toJson(),
        "deviceId": deviceId.toJson(),
        "package": package.toJson(),
    };
}

class GoliothGetAvailablePlansResponseClass {
    final GoliothArtifactUpdateType type;
    final GoliothGetAvailablePlansResponseProperties properties;

    GoliothGetAvailablePlansResponseClass({
        required this.type,
        required this.properties,
    });

    factory GoliothGetAvailablePlansResponseClass.fromJson(Map<String, dynamic> json) => GoliothGetAvailablePlansResponseClass(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothGetAvailablePlansResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothGetAvailablePlansResponseProperties {
    final Items list;

    GoliothGetAvailablePlansResponseProperties({
        required this.list,
    });

    factory GoliothGetAvailablePlansResponseProperties.fromJson(Map<String, dynamic> json) => GoliothGetAvailablePlansResponseProperties(
        list: Items.fromJson(json["list"]),
    );

    Map<String, dynamic> toJson() => {
        "list": list.toJson(),
    };
}

class GoliothDeviceStateResponse {
    final GoliothArtifactUpdateType type;
    final GoliothGetDeviceStateResponseProperties properties;

    GoliothDeviceStateResponse({
        required this.type,
        required this.properties,
    });

    factory GoliothDeviceStateResponse.fromJson(Map<String, dynamic> json) => GoliothDeviceStateResponse(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothGetDeviceStateResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothGetDeviceStateResponseProperties {
    final GoliothArtifactUpdate data;

    GoliothGetDeviceStateResponseProperties({
        required this.data,
    });

    factory GoliothGetDeviceStateResponseProperties.fromJson(Map<String, dynamic> json) => GoliothGetDeviceStateResponseProperties(
        data: GoliothArtifactUpdate.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class GoliothGetDeviceStreamRequest {
    final GoliothArtifactUpdateType type;
    final GoliothGetDeviceStreamRequestProperties properties;

    GoliothGetDeviceStreamRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothGetDeviceStreamRequest.fromJson(Map<String, dynamic> json) => GoliothGetDeviceStreamRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothGetDeviceStreamRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothGetDeviceStreamRequestProperties {
    final GoliothArtifactUpdate projectId;
    final GoliothArtifactUpdate deviceId;
    final CreatedAt start;
    final CreatedAt end;
    final GoliothArtifactUpdate interval;
    final GoliothArtifactUpdate encodedQuery;
    final TypeClass query;
    final CreatedAt page;
    final CreatedAt perPage;

    GoliothGetDeviceStreamRequestProperties({
        required this.projectId,
        required this.deviceId,
        required this.start,
        required this.end,
        required this.interval,
        required this.encodedQuery,
        required this.query,
        required this.page,
        required this.perPage,
    });

    factory GoliothGetDeviceStreamRequestProperties.fromJson(Map<String, dynamic> json) => GoliothGetDeviceStreamRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        deviceId: GoliothArtifactUpdate.fromJson(json["deviceId"]),
        start: CreatedAt.fromJson(json["start"]),
        end: CreatedAt.fromJson(json["end"]),
        interval: GoliothArtifactUpdate.fromJson(json["interval"]),
        encodedQuery: GoliothArtifactUpdate.fromJson(json["encodedQuery"]),
        query: TypeClass.fromJson(json["query"]),
        page: CreatedAt.fromJson(json["page"]),
        perPage: CreatedAt.fromJson(json["perPage"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "deviceId": deviceId.toJson(),
        "start": start.toJson(),
        "end": end.toJson(),
        "interval": interval.toJson(),
        "encodedQuery": encodedQuery.toJson(),
        "query": query.toJson(),
        "page": page.toJson(),
        "perPage": perPage.toJson(),
    };
}

class GoliothGetStreamResponse {
    final GoliothArtifactUpdateType type;
    final GoliothGetDeviceStreamResponseProperties properties;

    GoliothGetStreamResponse({
        required this.type,
        required this.properties,
    });

    factory GoliothGetStreamResponse.fromJson(Map<String, dynamic> json) => GoliothGetStreamResponse(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothGetDeviceStreamResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothGetDeviceStreamResponseProperties {
    final KeyTags list;
    final CreatedAt page;
    final CreatedAt perPage;
    final CreatedAt total;

    GoliothGetDeviceStreamResponseProperties({
        required this.list,
        required this.page,
        required this.perPage,
        required this.total,
    });

    factory GoliothGetDeviceStreamResponseProperties.fromJson(Map<String, dynamic> json) => GoliothGetDeviceStreamResponseProperties(
        list: KeyTags.fromJson(json["list"]),
        page: CreatedAt.fromJson(json["page"]),
        perPage: CreatedAt.fromJson(json["perPage"]),
        total: CreatedAt.fromJson(json["total"]),
    );

    Map<String, dynamic> toJson() => {
        "list": list.toJson(),
        "page": page.toJson(),
        "perPage": perPage.toJson(),
        "total": total.toJson(),
    };
}

class GoliothGetLatestDeviceActivityLogsResponseClass {
    final GoliothArtifactUpdateType type;
    final GoliothGetLatestDeviceActivityLogsResponseProperties properties;

    GoliothGetLatestDeviceActivityLogsResponseClass({
        required this.type,
        required this.properties,
    });

    factory GoliothGetLatestDeviceActivityLogsResponseClass.fromJson(Map<String, dynamic> json) => GoliothGetLatestDeviceActivityLogsResponseClass(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothGetLatestDeviceActivityLogsResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothGetLatestDeviceActivityLogsResponseProperties {
    final Items list;
    final CreatedAt page;
    final CreatedAt perPage;
    final CreatedAt total;

    GoliothGetLatestDeviceActivityLogsResponseProperties({
        required this.list,
        required this.page,
        required this.perPage,
        required this.total,
    });

    factory GoliothGetLatestDeviceActivityLogsResponseProperties.fromJson(Map<String, dynamic> json) => GoliothGetLatestDeviceActivityLogsResponseProperties(
        list: Items.fromJson(json["list"]),
        page: CreatedAt.fromJson(json["page"]),
        perPage: CreatedAt.fromJson(json["perPage"]),
        total: CreatedAt.fromJson(json["total"]),
    );

    Map<String, dynamic> toJson() => {
        "list": list.toJson(),
        "page": page.toJson(),
        "perPage": perPage.toJson(),
        "total": total.toJson(),
    };
}

class GoliothGetProjectStreamRequest {
    final GoliothArtifactUpdateType type;
    final GoliothGetProjectStreamRequestProperties properties;

    GoliothGetProjectStreamRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothGetProjectStreamRequest.fromJson(Map<String, dynamic> json) => GoliothGetProjectStreamRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothGetProjectStreamRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothGetProjectStreamRequestProperties {
    final GoliothArtifactUpdate projectId;
    final CreatedAt start;
    final CreatedAt end;
    final GoliothArtifactUpdate interval;
    final GoliothArtifactUpdate encodedQuery;
    final TypeClass query;
    final KeyTags deviceId;
    final CreatedAt page;
    final CreatedAt perPage;
    final KeyTags tags;

    GoliothGetProjectStreamRequestProperties({
        required this.projectId,
        required this.start,
        required this.end,
        required this.interval,
        required this.encodedQuery,
        required this.query,
        required this.deviceId,
        required this.page,
        required this.perPage,
        required this.tags,
    });

    factory GoliothGetProjectStreamRequestProperties.fromJson(Map<String, dynamic> json) => GoliothGetProjectStreamRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        start: CreatedAt.fromJson(json["start"]),
        end: CreatedAt.fromJson(json["end"]),
        interval: GoliothArtifactUpdate.fromJson(json["interval"]),
        encodedQuery: GoliothArtifactUpdate.fromJson(json["encodedQuery"]),
        query: TypeClass.fromJson(json["query"]),
        deviceId: KeyTags.fromJson(json["deviceId"]),
        page: CreatedAt.fromJson(json["page"]),
        perPage: CreatedAt.fromJson(json["perPage"]),
        tags: KeyTags.fromJson(json["tags"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "start": start.toJson(),
        "end": end.toJson(),
        "interval": interval.toJson(),
        "encodedQuery": encodedQuery.toJson(),
        "query": query.toJson(),
        "deviceId": deviceId.toJson(),
        "page": page.toJson(),
        "perPage": perPage.toJson(),
        "tags": tags.toJson(),
    };
}

class GoliothGetSettingResponseClass {
    final GoliothArtifactUpdateType type;
    final GoliothGetSettingResponseProperties properties;

    GoliothGetSettingResponseClass({
        required this.type,
        required this.properties,
    });

    factory GoliothGetSettingResponseClass.fromJson(Map<String, dynamic> json) => GoliothGetSettingResponseClass(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothGetSettingResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothGetSettingResponseProperties {
    final Items list;
    final CreatedAt total;

    GoliothGetSettingResponseProperties({
        required this.list,
        required this.total,
    });

    factory GoliothGetSettingResponseProperties.fromJson(Map<String, dynamic> json) => GoliothGetSettingResponseProperties(
        list: Items.fromJson(json["list"]),
        total: CreatedAt.fromJson(json["total"]),
    );

    Map<String, dynamic> toJson() => {
        "list": list.toJson(),
        "total": total.toJson(),
    };
}

class GoliothIntegration {
    final GoliothArtifactUpdateType type;
    final GoliothIntegrationProperties properties;

    GoliothIntegration({
        required this.type,
        required this.properties,
    });

    factory GoliothIntegration.fromJson(Map<String, dynamic> json) => GoliothIntegration(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothIntegrationProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothIntegrationProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate type;
    final CreatedAt createdAt;
    final CreatedAt updatedAt;
    final GoliothArtifactUpdate configuration;
    final GoliothArtifactUpdate enabled;
    final Items eventTypes;

    GoliothIntegrationProperties({
        required this.id,
        required this.name,
        required this.type,
        required this.createdAt,
        required this.updatedAt,
        required this.configuration,
        required this.enabled,
        required this.eventTypes,
    });

    factory GoliothIntegrationProperties.fromJson(Map<String, dynamic> json) => GoliothIntegrationProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        type: GoliothArtifactUpdate.fromJson(json["type"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
        updatedAt: CreatedAt.fromJson(json["updatedAt"]),
        configuration: GoliothArtifactUpdate.fromJson(json["configuration"]),
        enabled: GoliothArtifactUpdate.fromJson(json["enabled"]),
        eventTypes: Items.fromJson(json["eventTypes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "type": type.toJson(),
        "createdAt": createdAt.toJson(),
        "updatedAt": updatedAt.toJson(),
        "configuration": configuration.toJson(),
        "enabled": enabled.toJson(),
        "eventTypes": eventTypes.toJson(),
    };
}

class GoliothIntegrationType {
    final GoliothArtifactUpdateType type;
    final GoliothIntegrationTypeProperties properties;

    GoliothIntegrationType({
        required this.type,
        required this.properties,
    });

    factory GoliothIntegrationType.fromJson(Map<String, dynamic> json) => GoliothIntegrationType(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothIntegrationTypeProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothIntegrationTypeProperties {
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate type;
    final GoliothArtifactUpdate description;
    final Items attributes;

    GoliothIntegrationTypeProperties({
        required this.name,
        required this.type,
        required this.description,
        required this.attributes,
    });

    factory GoliothIntegrationTypeProperties.fromJson(Map<String, dynamic> json) => GoliothIntegrationTypeProperties(
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        type: GoliothArtifactUpdate.fromJson(json["type"]),
        description: GoliothArtifactUpdate.fromJson(json["description"]),
        attributes: Items.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "type": type.toJson(),
        "description": description.toJson(),
        "attributes": attributes.toJson(),
    };
}

class GoliothIntegrationTypeAttribute {
    final GoliothArtifactUpdateType type;
    final GoliothIntegrationTypeAttributeProperties properties;

    GoliothIntegrationTypeAttribute({
        required this.type,
        required this.properties,
    });

    factory GoliothIntegrationTypeAttribute.fromJson(Map<String, dynamic> json) => GoliothIntegrationTypeAttribute(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothIntegrationTypeAttributeProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothIntegrationTypeAttributeProperties {
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate description;
    final GoliothArtifactUpdate type;
    final GoliothArtifactUpdate required;
    final GoliothArtifactUpdate displayName;

    GoliothIntegrationTypeAttributeProperties({
        required this.name,
        required this.description,
        required this.type,
        required this.required,
        required this.displayName,
    });

    factory GoliothIntegrationTypeAttributeProperties.fromJson(Map<String, dynamic> json) => GoliothIntegrationTypeAttributeProperties(
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        description: GoliothArtifactUpdate.fromJson(json["description"]),
        type: GoliothArtifactUpdate.fromJson(json["type"]),
        required: GoliothArtifactUpdate.fromJson(json["required"]),
        displayName: GoliothArtifactUpdate.fromJson(json["displayName"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "description": description.toJson(),
        "type": type.toJson(),
        "required": required.toJson(),
        "displayName": displayName.toJson(),
    };
}

class GoliothIntegrationUpdate {
    final GoliothArtifactUpdateType type;
    final GoliothIntegrationUpdateProperties properties;

    GoliothIntegrationUpdate({
        required this.type,
        required this.properties,
    });

    factory GoliothIntegrationUpdate.fromJson(Map<String, dynamic> json) => GoliothIntegrationUpdate(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothIntegrationUpdateProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothIntegrationUpdateProperties {
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate enabled;
    final GoliothArtifactUpdate configuration;
    final Items eventTypes;

    GoliothIntegrationUpdateProperties({
        required this.name,
        required this.enabled,
        required this.configuration,
        required this.eventTypes,
    });

    factory GoliothIntegrationUpdateProperties.fromJson(Map<String, dynamic> json) => GoliothIntegrationUpdateProperties(
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        enabled: GoliothArtifactUpdate.fromJson(json["enabled"]),
        configuration: GoliothArtifactUpdate.fromJson(json["configuration"]),
        eventTypes: Items.fromJson(json["eventTypes"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "enabled": enabled.toJson(),
        "configuration": configuration.toJson(),
        "eventTypes": eventTypes.toJson(),
    };
}

class GoliothInviteUserRequest {
    final GoliothArtifactUpdateType type;
    final GoliothInviteUserRequestProperties properties;

    GoliothInviteUserRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothInviteUserRequest.fromJson(Map<String, dynamic> json) => GoliothInviteUserRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothInviteUserRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothInviteUserRequestProperties {
    final GoliothArtifactUpdate projectId;
    final GoliothArtifactUpdate email;

    GoliothInviteUserRequestProperties({
        required this.projectId,
        required this.email,
    });

    factory GoliothInviteUserRequestProperties.fromJson(Map<String, dynamic> json) => GoliothInviteUserRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        email: GoliothArtifactUpdate.fromJson(json["email"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "email": email.toJson(),
    };
}

class GoliothOrganization {
    final GoliothArtifactUpdateType type;
    final GoliothOrganizationProperties properties;

    GoliothOrganization({
        required this.type,
        required this.properties,
    });

    factory GoliothOrganization.fromJson(Map<String, dynamic> json) => GoliothOrganization(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothOrganizationProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothOrganizationProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate name;
    final CreatedAt createdAt;
    final CreatedAt updatedAt;
    final KeyTags roles;
    final GoliothArtifactUpdate tier;
    final GoliothArtifactUpdate paymentStatus;
    final GoliothArtifactUpdate website;

    GoliothOrganizationProperties({
        required this.id,
        required this.name,
        required this.createdAt,
        required this.updatedAt,
        required this.roles,
        required this.tier,
        required this.paymentStatus,
        required this.website,
    });

    factory GoliothOrganizationProperties.fromJson(Map<String, dynamic> json) => GoliothOrganizationProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
        updatedAt: CreatedAt.fromJson(json["updatedAt"]),
        roles: KeyTags.fromJson(json["roles"]),
        tier: GoliothArtifactUpdate.fromJson(json["tier"]),
        paymentStatus: GoliothArtifactUpdate.fromJson(json["paymentStatus"]),
        website: GoliothArtifactUpdate.fromJson(json["website"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "createdAt": createdAt.toJson(),
        "updatedAt": updatedAt.toJson(),
        "roles": roles.toJson(),
        "tier": tier.toJson(),
        "paymentStatus": paymentStatus.toJson(),
        "website": website.toJson(),
    };
}

class GoliothPermission {
    final GoliothArtifactUpdateType type;
    final GoliothPermissionProperties properties;

    GoliothPermission({
        required this.type,
        required this.properties,
    });

    factory GoliothPermission.fromJson(Map<String, dynamic> json) => GoliothPermission(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothPermissionProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothPermissionProperties {
    final GoliothArtifactUpdate resource;
    final GoliothArtifactUpdate action;

    GoliothPermissionProperties({
        required this.resource,
        required this.action,
    });

    factory GoliothPermissionProperties.fromJson(Map<String, dynamic> json) => GoliothPermissionProperties(
        resource: GoliothArtifactUpdate.fromJson(json["resource"]),
        action: GoliothArtifactUpdate.fromJson(json["action"]),
    );

    Map<String, dynamic> toJson() => {
        "resource": resource.toJson(),
        "action": action.toJson(),
    };
}

class GoliothPlan {
    final GoliothArtifactUpdateType type;
    final GoliothPlanProperties properties;

    GoliothPlan({
        required this.type,
        required this.properties,
    });

    factory GoliothPlan.fromJson(Map<String, dynamic> json) => GoliothPlan(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothPlanProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothPlanProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate description;
    final CreatedAt price;
    final GoliothArtifactUpdate currency;
    final GoliothArtifactUpdate interval;
    final GoliothArtifactUpdate imageUrl;
    final GoliothArtifactUpdate group;
    final GoliothArtifactUpdate metadata;

    GoliothPlanProperties({
        required this.id,
        required this.name,
        required this.description,
        required this.price,
        required this.currency,
        required this.interval,
        required this.imageUrl,
        required this.group,
        required this.metadata,
    });

    factory GoliothPlanProperties.fromJson(Map<String, dynamic> json) => GoliothPlanProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        description: GoliothArtifactUpdate.fromJson(json["description"]),
        price: CreatedAt.fromJson(json["price"]),
        currency: GoliothArtifactUpdate.fromJson(json["currency"]),
        interval: GoliothArtifactUpdate.fromJson(json["interval"]),
        imageUrl: GoliothArtifactUpdate.fromJson(json["imageUrl"]),
        group: GoliothArtifactUpdate.fromJson(json["group"]),
        metadata: GoliothArtifactUpdate.fromJson(json["metadata"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "description": description.toJson(),
        "price": price.toJson(),
        "currency": currency.toJson(),
        "interval": interval.toJson(),
        "imageUrl": imageUrl.toJson(),
        "group": group.toJson(),
        "metadata": metadata.toJson(),
    };
}

class GoliothPolicy {
    final GoliothArtifactUpdateType type;
    final GoliothPolicyProperties properties;

    GoliothPolicy({
        required this.type,
        required this.properties,
    });

    factory GoliothPolicy.fromJson(Map<String, dynamic> json) => GoliothPolicy(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothPolicyProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothPolicyProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate userId;
    final KeyTags roles;
    final GoliothArtifactUpdate resourceType;
    final GoliothArtifactUpdate resourceId;
    final TypeClass conditionals;
    final CreatedAt createdAt;
    final CreatedAt updatedAt;

    GoliothPolicyProperties({
        required this.id,
        required this.userId,
        required this.roles,
        required this.resourceType,
        required this.resourceId,
        required this.conditionals,
        required this.createdAt,
        required this.updatedAt,
    });

    factory GoliothPolicyProperties.fromJson(Map<String, dynamic> json) => GoliothPolicyProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        userId: GoliothArtifactUpdate.fromJson(json["userId"]),
        roles: KeyTags.fromJson(json["roles"]),
        resourceType: GoliothArtifactUpdate.fromJson(json["resourceType"]),
        resourceId: GoliothArtifactUpdate.fromJson(json["resourceId"]),
        conditionals: TypeClass.fromJson(json["conditionals"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
        updatedAt: CreatedAt.fromJson(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "userId": userId.toJson(),
        "roles": roles.toJson(),
        "resourceType": resourceType.toJson(),
        "resourceId": resourceId.toJson(),
        "conditionals": conditionals.toJson(),
        "createdAt": createdAt.toJson(),
        "updatedAt": updatedAt.toJson(),
    };
}

class GoliothPolicyUpdate {
    final GoliothArtifactUpdateType type;
    final GoliothPolicyUpdateProperties properties;

    GoliothPolicyUpdate({
        required this.type,
        required this.properties,
    });

    factory GoliothPolicyUpdate.fromJson(Map<String, dynamic> json) => GoliothPolicyUpdate(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothPolicyUpdateProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothPolicyUpdateProperties {
    final KeyTags addRoles;
    final KeyTags removeRoles;
    final KeyTags addTags;
    final KeyTags removeTags;
    final KeyTags roles;
    final KeyTags tagIds;

    GoliothPolicyUpdateProperties({
        required this.addRoles,
        required this.removeRoles,
        required this.addTags,
        required this.removeTags,
        required this.roles,
        required this.tagIds,
    });

    factory GoliothPolicyUpdateProperties.fromJson(Map<String, dynamic> json) => GoliothPolicyUpdateProperties(
        addRoles: KeyTags.fromJson(json["addRoles"]),
        removeRoles: KeyTags.fromJson(json["removeRoles"]),
        addTags: KeyTags.fromJson(json["addTags"]),
        removeTags: KeyTags.fromJson(json["removeTags"]),
        roles: KeyTags.fromJson(json["roles"]),
        tagIds: KeyTags.fromJson(json["tagIds"]),
    );

    Map<String, dynamic> toJson() => {
        "addRoles": addRoles.toJson(),
        "removeRoles": removeRoles.toJson(),
        "addTags": addTags.toJson(),
        "removeTags": removeTags.toJson(),
        "roles": roles.toJson(),
        "tagIds": tagIds.toJson(),
    };
}

class GoliothProject {
    final GoliothArtifactUpdateType type;
    final GoliothProjectProperties properties;

    GoliothProject({
        required this.type,
        required this.properties,
    });

    factory GoliothProject.fromJson(Map<String, dynamic> json) => GoliothProject(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothProjectProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothProjectProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate name;
    final CreatedAt createdAt;
    final CreatedAt updatedAt;
    final KeyTags roles;
    final GoliothArtifactUpdate organizationId;

    GoliothProjectProperties({
        required this.id,
        required this.name,
        required this.createdAt,
        required this.updatedAt,
        required this.roles,
        required this.organizationId,
    });

    factory GoliothProjectProperties.fromJson(Map<String, dynamic> json) => GoliothProjectProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
        updatedAt: CreatedAt.fromJson(json["updatedAt"]),
        roles: KeyTags.fromJson(json["roles"]),
        organizationId: GoliothArtifactUpdate.fromJson(json["organizationId"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "createdAt": createdAt.toJson(),
        "updatedAt": updatedAt.toJson(),
        "roles": roles.toJson(),
        "organizationId": organizationId.toJson(),
    };
}

class GoliothUpdate {
    final GoliothArtifactUpdateType type;
    final GoliothProjectUpdateProperties properties;

    GoliothUpdate({
        required this.type,
        required this.properties,
    });

    factory GoliothUpdate.fromJson(Map<String, dynamic> json) => GoliothUpdate(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothProjectUpdateProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothProjectUpdateProperties {
    final GoliothArtifactUpdate name;

    GoliothProjectUpdateProperties({
        required this.name,
    });

    factory GoliothProjectUpdateProperties.fromJson(Map<String, dynamic> json) => GoliothProjectUpdateProperties(
        name: GoliothArtifactUpdate.fromJson(json["name"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
    };
}

class GoliothProvisionData {
    final GoliothArtifactUpdateType type;
    final GoliothProvisionDataProperties properties;

    GoliothProvisionData({
        required this.type,
        required this.properties,
    });

    factory GoliothProvisionData.fromJson(Map<String, dynamic> json) => GoliothProvisionData(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothProvisionDataProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothProvisionDataProperties {
    final GoliothArtifactUpdate deviceId;

    GoliothProvisionDataProperties({
        required this.deviceId,
    });

    factory GoliothProvisionDataProperties.fromJson(Map<String, dynamic> json) => GoliothProvisionDataProperties(
        deviceId: GoliothArtifactUpdate.fromJson(json["deviceId"]),
    );

    Map<String, dynamic> toJson() => {
        "deviceId": deviceId.toJson(),
    };
}

class GoliothProvisionDeviceRequest {
    final GoliothArtifactUpdateType type;
    final GoliothProvisionDeviceRequestProperties properties;

    GoliothProvisionDeviceRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothProvisionDeviceRequest.fromJson(Map<String, dynamic> json) => GoliothProvisionDeviceRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothProvisionDeviceRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothProvisionDeviceRequestProperties {
    final GoliothArtifactUpdate deviceId;
    final KeyTags hardwareIds;
    final GoliothArtifactUpdate projectId;
    final GoliothArtifactUpdate name;
    final TypeClass type;
    final GoliothArtifactUpdate identity;
    final GoliothArtifactUpdate preSharedKey;
    final KeyTags tagIds;
    final GoliothArtifactUpdate blueprintId;

    GoliothProvisionDeviceRequestProperties({
        required this.deviceId,
        required this.hardwareIds,
        required this.projectId,
        required this.name,
        required this.type,
        required this.identity,
        required this.preSharedKey,
        required this.tagIds,
        required this.blueprintId,
    });

    factory GoliothProvisionDeviceRequestProperties.fromJson(Map<String, dynamic> json) => GoliothProvisionDeviceRequestProperties(
        deviceId: GoliothArtifactUpdate.fromJson(json["deviceId"]),
        hardwareIds: KeyTags.fromJson(json["hardwareIds"]),
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        type: TypeClass.fromJson(json["type"]),
        identity: GoliothArtifactUpdate.fromJson(json["identity"]),
        preSharedKey: GoliothArtifactUpdate.fromJson(json["preSharedKey"]),
        tagIds: KeyTags.fromJson(json["tagIds"]),
        blueprintId: GoliothArtifactUpdate.fromJson(json["blueprintId"]),
    );

    Map<String, dynamic> toJson() => {
        "deviceId": deviceId.toJson(),
        "hardwareIds": hardwareIds.toJson(),
        "projectId": projectId.toJson(),
        "name": name.toJson(),
        "type": type.toJson(),
        "identity": identity.toJson(),
        "preSharedKey": preSharedKey.toJson(),
        "tagIds": tagIds.toJson(),
        "blueprintId": blueprintId.toJson(),
    };
}

class GoliothQueryField {
    final GoliothArtifactUpdateType type;
    final GoliothQueryFieldProperties properties;

    GoliothQueryField({
        required this.type,
        required this.properties,
    });

    factory GoliothQueryField.fromJson(Map<String, dynamic> json) => GoliothQueryField(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothQueryFieldProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothQueryFieldProperties {
    final GoliothArtifactUpdate path;
    final GoliothArtifactUpdate type;
    final GoliothArtifactUpdate alias;
    final GoliothArtifactUpdate agg;

    GoliothQueryFieldProperties({
        required this.path,
        required this.type,
        required this.alias,
        required this.agg,
    });

    factory GoliothQueryFieldProperties.fromJson(Map<String, dynamic> json) => GoliothQueryFieldProperties(
        path: GoliothArtifactUpdate.fromJson(json["path"]),
        type: GoliothArtifactUpdate.fromJson(json["type"]),
        alias: GoliothArtifactUpdate.fromJson(json["alias"]),
        agg: GoliothArtifactUpdate.fromJson(json["agg"]),
    );

    Map<String, dynamic> toJson() => {
        "path": path.toJson(),
        "type": type.toJson(),
        "alias": alias.toJson(),
        "agg": agg.toJson(),
    };
}

class GoliothQueryFilter {
    final GoliothArtifactUpdateType type;
    final GoliothQueryFilterProperties properties;

    GoliothQueryFilter({
        required this.type,
        required this.properties,
    });

    factory GoliothQueryFilter.fromJson(Map<String, dynamic> json) => GoliothQueryFilter(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothQueryFilterProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothQueryFilterProperties {
    final GoliothArtifactUpdate path;
    final GoliothArtifactUpdate op;
    final GoliothArtifactUpdate value;
    final Items filters;

    GoliothQueryFilterProperties({
        required this.path,
        required this.op,
        required this.value,
        required this.filters,
    });

    factory GoliothQueryFilterProperties.fromJson(Map<String, dynamic> json) => GoliothQueryFilterProperties(
        path: GoliothArtifactUpdate.fromJson(json["path"]),
        op: GoliothArtifactUpdate.fromJson(json["op"]),
        value: GoliothArtifactUpdate.fromJson(json["value"]),
        filters: Items.fromJson(json["filters"]),
    );

    Map<String, dynamic> toJson() => {
        "path": path.toJson(),
        "op": op.toJson(),
        "value": value.toJson(),
        "filters": filters.toJson(),
    };
}

class GoliothQuota {
    final GoliothArtifactUpdateType type;
    final GoliothQuotaProperties properties;

    GoliothQuota({
        required this.type,
        required this.properties,
    });

    factory GoliothQuota.fromJson(Map<String, dynamic> json) => GoliothQuota(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothQuotaProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothQuotaProperties {
    final CreatedAt current;
    final CreatedAt max;

    GoliothQuotaProperties({
        required this.current,
        required this.max,
    });

    factory GoliothQuotaProperties.fromJson(Map<String, dynamic> json) => GoliothQuotaProperties(
        current: CreatedAt.fromJson(json["current"]),
        max: CreatedAt.fromJson(json["max"]),
    );

    Map<String, dynamic> toJson() => {
        "current": current.toJson(),
        "max": max.toJson(),
    };
}

class GoliothQuotaPerType {
    final GoliothArtifactUpdateType type;
    final GoliothQuotaPerTypeProperties properties;

    GoliothQuotaPerType({
        required this.type,
        required this.properties,
    });

    factory GoliothQuotaPerType.fromJson(Map<String, dynamic> json) => GoliothQuotaPerType(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothQuotaPerTypeProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothQuotaPerTypeProperties {
    final Organizations quotas;

    GoliothQuotaPerTypeProperties({
        required this.quotas,
    });

    factory GoliothQuotaPerTypeProperties.fromJson(Map<String, dynamic> json) => GoliothQuotaPerTypeProperties(
        quotas: Organizations.fromJson(json["quotas"]),
    );

    Map<String, dynamic> toJson() => {
        "quotas": quotas.toJson(),
    };
}

class GoliothRelease {
    final GoliothArtifactUpdateType type;
    final GoliothReleaseProperties properties;

    GoliothRelease({
        required this.type,
        required this.properties,
    });

    factory GoliothRelease.fromJson(Map<String, dynamic> json) => GoliothRelease(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothReleaseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothReleaseProperties {
    final GoliothArtifactUpdate id;
    final CreatedAt createdAt;
    final CreatedAt updatedAt;
    final KeyTags releaseTags;
    final KeyTags deviceTagIds;
    final GoliothArtifactUpdate suitManifest;
    final KeyTags artifactIds;
    final GoliothArtifactUpdate rollout;
    final CreatedAt sequenceNumber;
    final GoliothArtifactUpdate blueprintId;

    GoliothReleaseProperties({
        required this.id,
        required this.createdAt,
        required this.updatedAt,
        required this.releaseTags,
        required this.deviceTagIds,
        required this.suitManifest,
        required this.artifactIds,
        required this.rollout,
        required this.sequenceNumber,
        required this.blueprintId,
    });

    factory GoliothReleaseProperties.fromJson(Map<String, dynamic> json) => GoliothReleaseProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
        updatedAt: CreatedAt.fromJson(json["updatedAt"]),
        releaseTags: KeyTags.fromJson(json["releaseTags"]),
        deviceTagIds: KeyTags.fromJson(json["deviceTagIds"]),
        suitManifest: GoliothArtifactUpdate.fromJson(json["suitManifest"]),
        artifactIds: KeyTags.fromJson(json["artifactIds"]),
        rollout: GoliothArtifactUpdate.fromJson(json["rollout"]),
        sequenceNumber: CreatedAt.fromJson(json["sequenceNumber"]),
        blueprintId: GoliothArtifactUpdate.fromJson(json["blueprintId"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "createdAt": createdAt.toJson(),
        "updatedAt": updatedAt.toJson(),
        "releaseTags": releaseTags.toJson(),
        "deviceTagIds": deviceTagIds.toJson(),
        "suitManifest": suitManifest.toJson(),
        "artifactIds": artifactIds.toJson(),
        "rollout": rollout.toJson(),
        "sequenceNumber": sequenceNumber.toJson(),
        "blueprintId": blueprintId.toJson(),
    };
}

class GoliothReleaseUpdate {
    final GoliothArtifactUpdateType type;
    final GoliothReleaseUpdateProperties properties;

    GoliothReleaseUpdate({
        required this.type,
        required this.properties,
    });

    factory GoliothReleaseUpdate.fromJson(Map<String, dynamic> json) => GoliothReleaseUpdate(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothReleaseUpdateProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothReleaseUpdateProperties {
    final KeyTags addDeviceTagId;
    final KeyTags removeDeviceTagId;
    final KeyTags deviceTagIds;
    final GoliothArtifactUpdate rollout;
    final KeyTags addReleaseTag;
    final KeyTags removeReleaseTag;
    final KeyTags releaseTags;

    GoliothReleaseUpdateProperties({
        required this.addDeviceTagId,
        required this.removeDeviceTagId,
        required this.deviceTagIds,
        required this.rollout,
        required this.addReleaseTag,
        required this.removeReleaseTag,
        required this.releaseTags,
    });

    factory GoliothReleaseUpdateProperties.fromJson(Map<String, dynamic> json) => GoliothReleaseUpdateProperties(
        addDeviceTagId: KeyTags.fromJson(json["addDeviceTagId"]),
        removeDeviceTagId: KeyTags.fromJson(json["removeDeviceTagId"]),
        deviceTagIds: KeyTags.fromJson(json["deviceTagIds"]),
        rollout: GoliothArtifactUpdate.fromJson(json["rollout"]),
        addReleaseTag: KeyTags.fromJson(json["addReleaseTag"]),
        removeReleaseTag: KeyTags.fromJson(json["removeReleaseTag"]),
        releaseTags: KeyTags.fromJson(json["releaseTags"]),
    );

    Map<String, dynamic> toJson() => {
        "addDeviceTagId": addDeviceTagId.toJson(),
        "removeDeviceTagId": removeDeviceTagId.toJson(),
        "deviceTagIds": deviceTagIds.toJson(),
        "rollout": rollout.toJson(),
        "addReleaseTag": addReleaseTag.toJson(),
        "removeReleaseTag": removeReleaseTag.toJson(),
        "releaseTags": releaseTags.toJson(),
    };
}

class GoliothRemoteProcedureCallRequest {
    final GoliothArtifactUpdateType type;
    final GoliothRemoteProcedureCallRequestProperties properties;

    GoliothRemoteProcedureCallRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothRemoteProcedureCallRequest.fromJson(Map<String, dynamic> json) => GoliothRemoteProcedureCallRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothRemoteProcedureCallRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothRemoteProcedureCallRequestProperties {
    final GoliothArtifactUpdate projectId;
    final GoliothArtifactUpdate deviceId;
    final GoliothArtifactUpdate method;
    final KeyTags params;
    final CreatedAt timeout;

    GoliothRemoteProcedureCallRequestProperties({
        required this.projectId,
        required this.deviceId,
        required this.method,
        required this.params,
        required this.timeout,
    });

    factory GoliothRemoteProcedureCallRequestProperties.fromJson(Map<String, dynamic> json) => GoliothRemoteProcedureCallRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        deviceId: GoliothArtifactUpdate.fromJson(json["deviceId"]),
        method: GoliothArtifactUpdate.fromJson(json["method"]),
        params: KeyTags.fromJson(json["params"]),
        timeout: CreatedAt.fromJson(json["timeout"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "deviceId": deviceId.toJson(),
        "method": method.toJson(),
        "params": params.toJson(),
        "timeout": timeout.toJson(),
    };
}

class GoliothRemoteProcedureCallResponse {
    final GoliothArtifactUpdateType type;
    final GoliothRemoteProcedureCallResponseProperties properties;

    GoliothRemoteProcedureCallResponse({
        required this.type,
        required this.properties,
    });

    factory GoliothRemoteProcedureCallResponse.fromJson(Map<String, dynamic> json) => GoliothRemoteProcedureCallResponse(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothRemoteProcedureCallResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothRemoteProcedureCallResponseProperties {
    final CreatedAt statusCode;
    final GoliothArtifactUpdate detail;

    GoliothRemoteProcedureCallResponseProperties({
        required this.statusCode,
        required this.detail,
    });

    factory GoliothRemoteProcedureCallResponseProperties.fromJson(Map<String, dynamic> json) => GoliothRemoteProcedureCallResponseProperties(
        statusCode: CreatedAt.fromJson(json["statusCode"]),
        detail: GoliothArtifactUpdate.fromJson(json["detail"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode.toJson(),
        "detail": detail.toJson(),
    };
}

class GoliothRole {
    final GoliothArtifactUpdateType type;
    final GoliothRoleProperties properties;

    GoliothRole({
        required this.type,
        required this.properties,
    });

    factory GoliothRole.fromJson(Map<String, dynamic> json) => GoliothRole(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothRoleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothRoleProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate type;
    final KeyTags children;
    final Items permissions;

    GoliothRoleProperties({
        required this.id,
        required this.name,
        required this.type,
        required this.children,
        required this.permissions,
    });

    factory GoliothRoleProperties.fromJson(Map<String, dynamic> json) => GoliothRoleProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        type: GoliothArtifactUpdate.fromJson(json["type"]),
        children: KeyTags.fromJson(json["children"]),
        permissions: Items.fromJson(json["permissions"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "type": type.toJson(),
        "children": children.toJson(),
        "permissions": permissions.toJson(),
    };
}

class GoliothSetting {
    final GoliothArtifactUpdateType type;
    final GoliothSettingProperties properties;

    GoliothSetting({
        required this.type,
        required this.properties,
    });

    factory GoliothSetting.fromJson(Map<String, dynamic> json) => GoliothSetting(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothSettingProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothSettingProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate key;
    final GoliothArtifactUpdate value;
    final GoliothArtifactUpdate dataType;
    final GoliothArtifactUpdate projectId;
    final GoliothArtifactUpdate blueprintId;
    final GoliothArtifactUpdate deviceId;
    final CreatedAt createdAt;
    final CreatedAt updatedAt;

    GoliothSettingProperties({
        required this.id,
        required this.key,
        required this.value,
        required this.dataType,
        required this.projectId,
        required this.blueprintId,
        required this.deviceId,
        required this.createdAt,
        required this.updatedAt,
    });

    factory GoliothSettingProperties.fromJson(Map<String, dynamic> json) => GoliothSettingProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        key: GoliothArtifactUpdate.fromJson(json["key"]),
        value: GoliothArtifactUpdate.fromJson(json["value"]),
        dataType: GoliothArtifactUpdate.fromJson(json["dataType"]),
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        blueprintId: GoliothArtifactUpdate.fromJson(json["blueprintId"]),
        deviceId: GoliothArtifactUpdate.fromJson(json["deviceId"]),
        createdAt: CreatedAt.fromJson(json["createdAt"]),
        updatedAt: CreatedAt.fromJson(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "key": key.toJson(),
        "value": value.toJson(),
        "dataType": dataType.toJson(),
        "projectId": projectId.toJson(),
        "blueprintId": blueprintId.toJson(),
        "deviceId": deviceId.toJson(),
        "createdAt": createdAt.toJson(),
        "updatedAt": updatedAt.toJson(),
    };
}

class GoliothSettingDataType {
    final GoliothArtifactUpdateType type;
    final GoliothSettingDataTypeProperties properties;

    GoliothSettingDataType({
        required this.type,
        required this.properties,
    });

    factory GoliothSettingDataType.fromJson(Map<String, dynamic> json) => GoliothSettingDataType(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothSettingDataTypeProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothSettingDataTypeProperties {
    final GoliothArtifactUpdate type;

    GoliothSettingDataTypeProperties({
        required this.type,
    });

    factory GoliothSettingDataTypeProperties.fromJson(Map<String, dynamic> json) => GoliothSettingDataTypeProperties(
        type: GoliothArtifactUpdate.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type.toJson(),
    };
}

class GoliothSettingError {
    final GoliothArtifactUpdateType type;
    final GoliothSettingErrorProperties properties;

    GoliothSettingError({
        required this.type,
        required this.properties,
    });

    factory GoliothSettingError.fromJson(Map<String, dynamic> json) => GoliothSettingError(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothSettingErrorProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothSettingErrorProperties {
    final GoliothArtifactUpdate key;
    final CreatedAt code;
    final GoliothArtifactUpdate codeDescription;
    final GoliothArtifactUpdate deviceDetails;

    GoliothSettingErrorProperties({
        required this.key,
        required this.code,
        required this.codeDescription,
        required this.deviceDetails,
    });

    factory GoliothSettingErrorProperties.fromJson(Map<String, dynamic> json) => GoliothSettingErrorProperties(
        key: GoliothArtifactUpdate.fromJson(json["key"]),
        code: CreatedAt.fromJson(json["code"]),
        codeDescription: GoliothArtifactUpdate.fromJson(json["codeDescription"]),
        deviceDetails: GoliothArtifactUpdate.fromJson(json["deviceDetails"]),
    );

    Map<String, dynamic> toJson() => {
        "key": key.toJson(),
        "code": code.toJson(),
        "codeDescription": codeDescription.toJson(),
        "deviceDetails": deviceDetails.toJson(),
    };
}

class GoliothSettingUpdate {
    final GoliothArtifactUpdateType type;
    final GoliothSettingUpdateProperties properties;

    GoliothSettingUpdate({
        required this.type,
        required this.properties,
    });

    factory GoliothSettingUpdate.fromJson(Map<String, dynamic> json) => GoliothSettingUpdate(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothSettingUpdateProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothSettingUpdateProperties {
    final GoliothArtifactUpdate value;

    GoliothSettingUpdateProperties({
        required this.value,
    });

    factory GoliothSettingUpdateProperties.fromJson(Map<String, dynamic> json) => GoliothSettingUpdateProperties(
        value: GoliothArtifactUpdate.fromJson(json["value"]),
    );

    Map<String, dynamic> toJson() => {
        "value": value.toJson(),
    };
}

class GoliothSettingsStatus {
    final GoliothArtifactUpdateType type;
    final GoliothSettingsStatusProperties properties;

    GoliothSettingsStatus({
        required this.type,
        required this.properties,
    });

    factory GoliothSettingsStatus.fromJson(Map<String, dynamic> json) => GoliothSettingsStatus(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothSettingsStatusProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothSettingsStatusProperties {
    final CreatedAt syncTime;
    final GoliothArtifactUpdate reportedVersion;
    final GoliothArtifactUpdate status;
    final GoliothArtifactUpdate statusDetail;
    final Items errors;

    GoliothSettingsStatusProperties({
        required this.syncTime,
        required this.reportedVersion,
        required this.status,
        required this.statusDetail,
        required this.errors,
    });

    factory GoliothSettingsStatusProperties.fromJson(Map<String, dynamic> json) => GoliothSettingsStatusProperties(
        syncTime: CreatedAt.fromJson(json["syncTime"]),
        reportedVersion: GoliothArtifactUpdate.fromJson(json["reportedVersion"]),
        status: GoliothArtifactUpdate.fromJson(json["status"]),
        statusDetail: GoliothArtifactUpdate.fromJson(json["statusDetail"]),
        errors: Items.fromJson(json["errors"]),
    );

    Map<String, dynamic> toJson() => {
        "syncTime": syncTime.toJson(),
        "reportedVersion": reportedVersion.toJson(),
        "status": status.toJson(),
        "statusDetail": statusDetail.toJson(),
        "errors": errors.toJson(),
    };
}

class GoliothSubscriptionItem {
    final GoliothArtifactUpdateType type;
    final GoliothSubscriptionItemProperties properties;

    GoliothSubscriptionItem({
        required this.type,
        required this.properties,
    });

    factory GoliothSubscriptionItem.fromJson(Map<String, dynamic> json) => GoliothSubscriptionItem(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothSubscriptionItemProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothSubscriptionItemProperties {
    final GoliothArtifactUpdate lookupKey;
    final CreatedAt quantity;

    GoliothSubscriptionItemProperties({
        required this.lookupKey,
        required this.quantity,
    });

    factory GoliothSubscriptionItemProperties.fromJson(Map<String, dynamic> json) => GoliothSubscriptionItemProperties(
        lookupKey: GoliothArtifactUpdate.fromJson(json["lookupKey"]),
        quantity: CreatedAt.fromJson(json["quantity"]),
    );

    Map<String, dynamic> toJson() => {
        "lookupKey": lookupKey.toJson(),
        "quantity": quantity.toJson(),
    };
}

class GoliothTestIntegrationRequest {
    final GoliothArtifactUpdateType type;
    final GoliothTestIntegrationRequestProperties properties;

    GoliothTestIntegrationRequest({
        required this.type,
        required this.properties,
    });

    factory GoliothTestIntegrationRequest.fromJson(Map<String, dynamic> json) => GoliothTestIntegrationRequest(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothTestIntegrationRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothTestIntegrationRequestProperties {
    final GoliothArtifactUpdate projectId;
    final GoliothArtifactUpdate integrationId;
    final GoliothArtifactUpdate data;

    GoliothTestIntegrationRequestProperties({
        required this.projectId,
        required this.integrationId,
        required this.data,
    });

    factory GoliothTestIntegrationRequestProperties.fromJson(Map<String, dynamic> json) => GoliothTestIntegrationRequestProperties(
        projectId: GoliothArtifactUpdate.fromJson(json["projectId"]),
        integrationId: GoliothArtifactUpdate.fromJson(json["integrationId"]),
        data: GoliothArtifactUpdate.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "projectId": projectId.toJson(),
        "integrationId": integrationId.toJson(),
        "data": data.toJson(),
    };
}

class GoliothTestIntegrationResponse {
    final GoliothArtifactUpdateType type;
    final GoliothTestIntegrationResponseProperties properties;

    GoliothTestIntegrationResponse({
        required this.type,
        required this.properties,
    });

    factory GoliothTestIntegrationResponse.fromJson(Map<String, dynamic> json) => GoliothTestIntegrationResponse(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothTestIntegrationResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothTestIntegrationResponseProperties {
    final GoliothArtifactUpdate result;

    GoliothTestIntegrationResponseProperties({
        required this.result,
    });

    factory GoliothTestIntegrationResponseProperties.fromJson(Map<String, dynamic> json) => GoliothTestIntegrationResponseProperties(
        result: GoliothArtifactUpdate.fromJson(json["result"]),
    );

    Map<String, dynamic> toJson() => {
        "result": result.toJson(),
    };
}

class GoliothUser {
    final GoliothArtifactUpdateType type;
    final GoliothUserProperties properties;

    GoliothUser({
        required this.type,
        required this.properties,
    });

    factory GoliothUser.fromJson(Map<String, dynamic> json) => GoliothUser(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: GoliothUserProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class GoliothUserProperties {
    final GoliothArtifactUpdate id;
    final GoliothArtifactUpdate name;
    final GoliothArtifactUpdate email;
    final GoliothArtifactUpdate profileUrl;
    final GoliothArtifactUpdate emailVerified;
    final GoliothArtifactUpdate policyId;
    final KeyTags roles;

    GoliothUserProperties({
        required this.id,
        required this.name,
        required this.email,
        required this.profileUrl,
        required this.emailVerified,
        required this.policyId,
        required this.roles,
    });

    factory GoliothUserProperties.fromJson(Map<String, dynamic> json) => GoliothUserProperties(
        id: GoliothArtifactUpdate.fromJson(json["id"]),
        name: GoliothArtifactUpdate.fromJson(json["name"]),
        email: GoliothArtifactUpdate.fromJson(json["email"]),
        profileUrl: GoliothArtifactUpdate.fromJson(json["profileUrl"]),
        emailVerified: GoliothArtifactUpdate.fromJson(json["emailVerified"]),
        policyId: GoliothArtifactUpdate.fromJson(json["policyId"]),
        roles: KeyTags.fromJson(json["roles"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "email": email.toJson(),
        "profileUrl": profileUrl.toJson(),
        "emailVerified": emailVerified.toJson(),
        "policyId": policyId.toJson(),
        "roles": roles.toJson(),
    };
}

class ProtobufAny {
    final GoliothArtifactUpdateType type;
    final ProtobufAnyProperties properties;

    ProtobufAny({
        required this.type,
        required this.properties,
    });

    factory ProtobufAny.fromJson(Map<String, dynamic> json) => ProtobufAny(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: ProtobufAnyProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class ProtobufAnyProperties {
    final GoliothArtifactUpdate typeUrl;
    final CreatedAt value;

    ProtobufAnyProperties({
        required this.typeUrl,
        required this.value,
    });

    factory ProtobufAnyProperties.fromJson(Map<String, dynamic> json) => ProtobufAnyProperties(
        typeUrl: GoliothArtifactUpdate.fromJson(json["typeUrl"]),
        value: CreatedAt.fromJson(json["value"]),
    );

    Map<String, dynamic> toJson() => {
        "typeUrl": typeUrl.toJson(),
        "value": value.toJson(),
    };
}

class RpcStatus {
    final GoliothArtifactUpdateType type;
    final RpcStatusProperties properties;

    RpcStatus({
        required this.type,
        required this.properties,
    });

    factory RpcStatus.fromJson(Map<String, dynamic> json) => RpcStatus(
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        properties: RpcStatusProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class RpcStatusProperties {
    final CreatedAt code;
    final GoliothArtifactUpdate message;
    final Items details;

    RpcStatusProperties({
        required this.code,
        required this.message,
        required this.details,
    });

    factory RpcStatusProperties.fromJson(Map<String, dynamic> json) => RpcStatusProperties(
        code: CreatedAt.fromJson(json["code"]),
        message: GoliothArtifactUpdate.fromJson(json["message"]),
        details: Items.fromJson(json["details"]),
    );

    Map<String, dynamic> toJson() => {
        "code": code.toJson(),
        "message": message.toJson(),
        "details": details.toJson(),
    };
}

class ExternalDocs {
    final String description;
    final String url;

    ExternalDocs({
        required this.description,
        required this.url,
    });

    factory ExternalDocs.fromJson(Map<String, dynamic> json) => ExternalDocs(
        description: json["description"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "url": url,
    };
}

class Info {
    final String title;
    final String version;

    Info({
        required this.title,
        required this.version,
    });

    factory Info.fromJson(Map<String, dynamic> json) => Info(
        title: json["title"],
        version: json["version"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "version": version,
    };
}

class Paths {
    final V1ArtifactsClass v1Artifacts;
    final V1BillingPlansClass v1BillingPlans;
    final V1ArtifactsClass v1BillingWebhook;
    final V1BillingPlansClass v1Boards;
    final V1BillingPlansClass v1BoardsId;
    final V1BillingPlansClass v1EventTypes;
    final V1BillingPlansClass v1IntegrationTypes;
    final V1OrganizationsClass v1Organizations;
    final V1Id v1OrganizationsOrganizationId;
    final V1ArtifactsClass v1OrganizationsOrganizationIdCheckoutSessions;
    final V1ArtifactsClass v1OrganizationsOrganizationIdCustomerPortalSessions;
    final V1OrganizationsClass v1Projects;
    final V1Id v1ProjectsProjectId;
    final V1OrganizationsClass v1ProjectsProjectIdApikeys;
    final V1ProjectsProjectIdApikeysApikeyId v1ProjectsProjectIdApikeysApikeyId;
    final V1BillingPlansClass v1ProjectsProjectIdArtifacts;
    final V1Id v1ProjectsProjectIdArtifactsArtifactId;
    final V1OrganizationsClass v1ProjectsProjectIdBlueprints;
    final V1Id v1ProjectsProjectIdBlueprintsBlueprintId;
    final V1OrganizationsClass v1ProjectsProjectIdCertificates;
    final V1ProjectsProjectIdCertificatesCertificateId v1ProjectsProjectIdCertificatesCertificateId;
    final V1ArtifactsClass v1ProjectsProjectIdCredentials;
    final V1ProjectsProjectIdIdCredentialsCredentialId v1ProjectsProjectIdCredentialsCredentialId;
    final V1BillingPlansClass v1ProjectsProjectIdDeviceActivityLogs;
    final V1OrganizationsClass v1ProjectsProjectIdDevices;
    final V1Id v1ProjectsProjectIdDevicesDeviceId;
    final V1OrganizationsClass v1ProjectsProjectIdDevicesDeviceIdCredentials;
    final V1ProjectsProjectIdIdCredentialsCredentialId v1ProjectsProjectIdDevicesDeviceIdCredentialsCredentialId;
    final V1ProjectsProjectIdDevicesDataPath v1ProjectsProjectIdDevicesDeviceIdDataPath;
    final V1ArtifactsClass v1ProjectsProjectIdDevicesDeviceIdProvisioning;
    final V1ArtifactsClass v1ProjectsProjectIdDevicesDeviceIdRpc;
    final V1BillingPlansClass v1ProjectsProjectIdDevicesDeviceIdSettings;
    final V1OrganizationsClass v1ProjectsProjectIdDevicesDeviceIdStream;
    final V1BillingPlansClass v1ProjectsProjectIdDevicesDeviceIdStreamLatestPath;
    final V1ProjectsProjectIdDevicesDataPath v1ProjectsProjectIdDevicesByTagTagDataPath;
    final V1BillingPlansClass v1ProjectsProjectIdFirmwareLogs;
    final V1OrganizationsClass v1ProjectsProjectIdIntegrations;
    final V1ArtifactsClass v1ProjectsProjectIdIntegrationsValidate;
    final V1Id v1ProjectsProjectIdIntegrationsIntegrationId;
    final V1ArtifactsClass v1ProjectsProjectIdIntegrationsIntegrationIdTest;
    final V1BillingPlansClass v1ProjectsProjectIdLogs;
    final V1ProjectsProjectIdMoveOrganizationId v1ProjectsProjectIdMoveOrganizationId;
    final V1BillingPlansClass v1ProjectsProjectIdPermissions;
    final V1BillingPlansClass v1ProjectsProjectIdPolicies;
    final V1Id v1ProjectsProjectIdPoliciesPolicyId;
    final V1ArtifactsClass v1ProjectsProjectIdProvisioning;
    final V1OrganizationsClass v1ProjectsProjectIdReleases;
    final V1Id v1ProjectsProjectIdReleasesReleaseId;
    final V1OrganizationsClass v1ProjectsProjectIdSettings;
    final V1Id v1ProjectsProjectIdSettingsSettingId;
    final V1OrganizationsClass v1ProjectsProjectIdStream;
    final V1OrganizationsClass v1ProjectsProjectIdTags;
    final V1Id v1ProjectsProjectIdTagsTagId;
    final V1BillingPlansClass v1ProjectsProjectIdUsers;
    final V1ArtifactsClass v1ProjectsProjectIdUsersInvitation;
    final V1BillingPlansClass v1Quotas;
    final V1BillingPlansClass v1Roles;
    final V1BillingPlansClass v1SettingsDataTypes;

    Paths({
        required this.v1Artifacts,
        required this.v1BillingPlans,
        required this.v1BillingWebhook,
        required this.v1Boards,
        required this.v1BoardsId,
        required this.v1EventTypes,
        required this.v1IntegrationTypes,
        required this.v1Organizations,
        required this.v1OrganizationsOrganizationId,
        required this.v1OrganizationsOrganizationIdCheckoutSessions,
        required this.v1OrganizationsOrganizationIdCustomerPortalSessions,
        required this.v1Projects,
        required this.v1ProjectsProjectId,
        required this.v1ProjectsProjectIdApikeys,
        required this.v1ProjectsProjectIdApikeysApikeyId,
        required this.v1ProjectsProjectIdArtifacts,
        required this.v1ProjectsProjectIdArtifactsArtifactId,
        required this.v1ProjectsProjectIdBlueprints,
        required this.v1ProjectsProjectIdBlueprintsBlueprintId,
        required this.v1ProjectsProjectIdCertificates,
        required this.v1ProjectsProjectIdCertificatesCertificateId,
        required this.v1ProjectsProjectIdCredentials,
        required this.v1ProjectsProjectIdCredentialsCredentialId,
        required this.v1ProjectsProjectIdDeviceActivityLogs,
        required this.v1ProjectsProjectIdDevices,
        required this.v1ProjectsProjectIdDevicesDeviceId,
        required this.v1ProjectsProjectIdDevicesDeviceIdCredentials,
        required this.v1ProjectsProjectIdDevicesDeviceIdCredentialsCredentialId,
        required this.v1ProjectsProjectIdDevicesDeviceIdDataPath,
        required this.v1ProjectsProjectIdDevicesDeviceIdProvisioning,
        required this.v1ProjectsProjectIdDevicesDeviceIdRpc,
        required this.v1ProjectsProjectIdDevicesDeviceIdSettings,
        required this.v1ProjectsProjectIdDevicesDeviceIdStream,
        required this.v1ProjectsProjectIdDevicesDeviceIdStreamLatestPath,
        required this.v1ProjectsProjectIdDevicesByTagTagDataPath,
        required this.v1ProjectsProjectIdFirmwareLogs,
        required this.v1ProjectsProjectIdIntegrations,
        required this.v1ProjectsProjectIdIntegrationsValidate,
        required this.v1ProjectsProjectIdIntegrationsIntegrationId,
        required this.v1ProjectsProjectIdIntegrationsIntegrationIdTest,
        required this.v1ProjectsProjectIdLogs,
        required this.v1ProjectsProjectIdMoveOrganizationId,
        required this.v1ProjectsProjectIdPermissions,
        required this.v1ProjectsProjectIdPolicies,
        required this.v1ProjectsProjectIdPoliciesPolicyId,
        required this.v1ProjectsProjectIdProvisioning,
        required this.v1ProjectsProjectIdReleases,
        required this.v1ProjectsProjectIdReleasesReleaseId,
        required this.v1ProjectsProjectIdSettings,
        required this.v1ProjectsProjectIdSettingsSettingId,
        required this.v1ProjectsProjectIdStream,
        required this.v1ProjectsProjectIdTags,
        required this.v1ProjectsProjectIdTagsTagId,
        required this.v1ProjectsProjectIdUsers,
        required this.v1ProjectsProjectIdUsersInvitation,
        required this.v1Quotas,
        required this.v1Roles,
        required this.v1SettingsDataTypes,
    });

    factory Paths.fromJson(Map<String, dynamic> json) => Paths(
        v1Artifacts: V1ArtifactsClass.fromJson(json["/v1/artifacts"]),
        v1BillingPlans: V1BillingPlansClass.fromJson(json["/v1/billing/plans"]),
        v1BillingWebhook: V1ArtifactsClass.fromJson(json["/v1/billing/webhook"]),
        v1Boards: V1BillingPlansClass.fromJson(json["/v1/boards"]),
        v1BoardsId: V1BillingPlansClass.fromJson(json["/v1/boards/{id}"]),
        v1EventTypes: V1BillingPlansClass.fromJson(json["/v1/event-types"]),
        v1IntegrationTypes: V1BillingPlansClass.fromJson(json["/v1/integration-types"]),
        v1Organizations: V1OrganizationsClass.fromJson(json["/v1/organizations"]),
        v1OrganizationsOrganizationId: V1Id.fromJson(json["/v1/organizations/{organizationId}"]),
        v1OrganizationsOrganizationIdCheckoutSessions: V1ArtifactsClass.fromJson(json["/v1/organizations/{organizationId}/checkout_sessions"]),
        v1OrganizationsOrganizationIdCustomerPortalSessions: V1ArtifactsClass.fromJson(json["/v1/organizations/{organizationId}/customer_portal_sessions"]),
        v1Projects: V1OrganizationsClass.fromJson(json["/v1/projects"]),
        v1ProjectsProjectId: V1Id.fromJson(json["/v1/projects/{projectId}"]),
        v1ProjectsProjectIdApikeys: V1OrganizationsClass.fromJson(json["/v1/projects/{projectId}/apikeys"]),
        v1ProjectsProjectIdApikeysApikeyId: V1ProjectsProjectIdApikeysApikeyId.fromJson(json["/v1/projects/{projectId}/apikeys/{apikeyId}"]),
        v1ProjectsProjectIdArtifacts: V1BillingPlansClass.fromJson(json["/v1/projects/{projectId}/artifacts"]),
        v1ProjectsProjectIdArtifactsArtifactId: V1Id.fromJson(json["/v1/projects/{projectId}/artifacts/{artifactId}"]),
        v1ProjectsProjectIdBlueprints: V1OrganizationsClass.fromJson(json["/v1/projects/{projectId}/blueprints"]),
        v1ProjectsProjectIdBlueprintsBlueprintId: V1Id.fromJson(json["/v1/projects/{projectId}/blueprints/{blueprintId}"]),
        v1ProjectsProjectIdCertificates: V1OrganizationsClass.fromJson(json["/v1/projects/{projectId}/certificates"]),
        v1ProjectsProjectIdCertificatesCertificateId: V1ProjectsProjectIdCertificatesCertificateId.fromJson(json["/v1/projects/{projectId}/certificates/{certificateId}"]),
        v1ProjectsProjectIdCredentials: V1ArtifactsClass.fromJson(json["/v1/projects/{projectId}/credentials"]),
        v1ProjectsProjectIdCredentialsCredentialId: V1ProjectsProjectIdIdCredentialsCredentialId.fromJson(json["/v1/projects/{projectId}/credentials/{credentialId}"]),
        v1ProjectsProjectIdDeviceActivityLogs: V1BillingPlansClass.fromJson(json["/v1/projects/{projectId}/device-activity-logs"]),
        v1ProjectsProjectIdDevices: V1OrganizationsClass.fromJson(json["/v1/projects/{projectId}/devices"]),
        v1ProjectsProjectIdDevicesDeviceId: V1Id.fromJson(json["/v1/projects/{projectId}/devices/{deviceId}"]),
        v1ProjectsProjectIdDevicesDeviceIdCredentials: V1OrganizationsClass.fromJson(json["/v1/projects/{projectId}/devices/{deviceId}/credentials"]),
        v1ProjectsProjectIdDevicesDeviceIdCredentialsCredentialId: V1ProjectsProjectIdIdCredentialsCredentialId.fromJson(json["/v1/projects/{projectId}/devices/{deviceId}/credentials/{credentialId}"]),
        v1ProjectsProjectIdDevicesDeviceIdDataPath: V1ProjectsProjectIdDevicesDataPath.fromJson(json["/v1/projects/{projectId}/devices/{deviceId}/data/{path}"]),
        v1ProjectsProjectIdDevicesDeviceIdProvisioning: V1ArtifactsClass.fromJson(json["/v1/projects/{projectId}/devices/{deviceId}/provisioning"]),
        v1ProjectsProjectIdDevicesDeviceIdRpc: V1ArtifactsClass.fromJson(json["/v1/projects/{projectId}/devices/{deviceId}/rpc"]),
        v1ProjectsProjectIdDevicesDeviceIdSettings: V1BillingPlansClass.fromJson(json["/v1/projects/{projectId}/devices/{deviceId}/settings"]),
        v1ProjectsProjectIdDevicesDeviceIdStream: V1OrganizationsClass.fromJson(json["/v1/projects/{projectId}/devices/{deviceId}/stream"]),
        v1ProjectsProjectIdDevicesDeviceIdStreamLatestPath: V1BillingPlansClass.fromJson(json["/v1/projects/{projectId}/devices/{deviceId}/stream/latest/{path}"]),
        v1ProjectsProjectIdDevicesByTagTagDataPath: V1ProjectsProjectIdDevicesDataPath.fromJson(json["/v1/projects/{projectId}/devicesByTag/{tag}/data/{path}"]),
        v1ProjectsProjectIdFirmwareLogs: V1BillingPlansClass.fromJson(json["/v1/projects/{projectId}/firmware/logs"]),
        v1ProjectsProjectIdIntegrations: V1OrganizationsClass.fromJson(json["/v1/projects/{projectId}/integrations"]),
        v1ProjectsProjectIdIntegrationsValidate: V1ArtifactsClass.fromJson(json["/v1/projects/{projectId}/integrations/validate"]),
        v1ProjectsProjectIdIntegrationsIntegrationId: V1Id.fromJson(json["/v1/projects/{projectId}/integrations/{integrationId}"]),
        v1ProjectsProjectIdIntegrationsIntegrationIdTest: V1ArtifactsClass.fromJson(json["/v1/projects/{projectId}/integrations/{integrationId}/test"]),
        v1ProjectsProjectIdLogs: V1BillingPlansClass.fromJson(json["/v1/projects/{projectId}/logs"]),
        v1ProjectsProjectIdMoveOrganizationId: V1ProjectsProjectIdMoveOrganizationId.fromJson(json["/v1/projects/{projectId}/move/{organizationId}"]),
        v1ProjectsProjectIdPermissions: V1BillingPlansClass.fromJson(json["/v1/projects/{projectId}/permissions"]),
        v1ProjectsProjectIdPolicies: V1BillingPlansClass.fromJson(json["/v1/projects/{projectId}/policies"]),
        v1ProjectsProjectIdPoliciesPolicyId: V1Id.fromJson(json["/v1/projects/{projectId}/policies/{policyId}"]),
        v1ProjectsProjectIdProvisioning: V1ArtifactsClass.fromJson(json["/v1/projects/{projectId}/provisioning"]),
        v1ProjectsProjectIdReleases: V1OrganizationsClass.fromJson(json["/v1/projects/{projectId}/releases"]),
        v1ProjectsProjectIdReleasesReleaseId: V1Id.fromJson(json["/v1/projects/{projectId}/releases/{releaseId}"]),
        v1ProjectsProjectIdSettings: V1OrganizationsClass.fromJson(json["/v1/projects/{projectId}/settings"]),
        v1ProjectsProjectIdSettingsSettingId: V1Id.fromJson(json["/v1/projects/{projectId}/settings/{settingId}"]),
        v1ProjectsProjectIdStream: V1OrganizationsClass.fromJson(json["/v1/projects/{projectId}/stream"]),
        v1ProjectsProjectIdTags: V1OrganizationsClass.fromJson(json["/v1/projects/{projectId}/tags"]),
        v1ProjectsProjectIdTagsTagId: V1Id.fromJson(json["/v1/projects/{projectId}/tags/{tagId}"]),
        v1ProjectsProjectIdUsers: V1BillingPlansClass.fromJson(json["/v1/projects/{projectId}/users"]),
        v1ProjectsProjectIdUsersInvitation: V1ArtifactsClass.fromJson(json["/v1/projects/{projectId}/users/invitation"]),
        v1Quotas: V1BillingPlansClass.fromJson(json["/v1/quotas"]),
        v1Roles: V1BillingPlansClass.fromJson(json["/v1/roles"]),
        v1SettingsDataTypes: V1BillingPlansClass.fromJson(json["/v1/settings-data-types"]),
    );

    Map<String, dynamic> toJson() => {
        "/v1/artifacts": v1Artifacts.toJson(),
        "/v1/billing/plans": v1BillingPlans.toJson(),
        "/v1/billing/webhook": v1BillingWebhook.toJson(),
        "/v1/boards": v1Boards.toJson(),
        "/v1/boards/{id}": v1BoardsId.toJson(),
        "/v1/event-types": v1EventTypes.toJson(),
        "/v1/integration-types": v1IntegrationTypes.toJson(),
        "/v1/organizations": v1Organizations.toJson(),
        "/v1/organizations/{organizationId}": v1OrganizationsOrganizationId.toJson(),
        "/v1/organizations/{organizationId}/checkout_sessions": v1OrganizationsOrganizationIdCheckoutSessions.toJson(),
        "/v1/organizations/{organizationId}/customer_portal_sessions": v1OrganizationsOrganizationIdCustomerPortalSessions.toJson(),
        "/v1/projects": v1Projects.toJson(),
        "/v1/projects/{projectId}": v1ProjectsProjectId.toJson(),
        "/v1/projects/{projectId}/apikeys": v1ProjectsProjectIdApikeys.toJson(),
        "/v1/projects/{projectId}/apikeys/{apikeyId}": v1ProjectsProjectIdApikeysApikeyId.toJson(),
        "/v1/projects/{projectId}/artifacts": v1ProjectsProjectIdArtifacts.toJson(),
        "/v1/projects/{projectId}/artifacts/{artifactId}": v1ProjectsProjectIdArtifactsArtifactId.toJson(),
        "/v1/projects/{projectId}/blueprints": v1ProjectsProjectIdBlueprints.toJson(),
        "/v1/projects/{projectId}/blueprints/{blueprintId}": v1ProjectsProjectIdBlueprintsBlueprintId.toJson(),
        "/v1/projects/{projectId}/certificates": v1ProjectsProjectIdCertificates.toJson(),
        "/v1/projects/{projectId}/certificates/{certificateId}": v1ProjectsProjectIdCertificatesCertificateId.toJson(),
        "/v1/projects/{projectId}/credentials": v1ProjectsProjectIdCredentials.toJson(),
        "/v1/projects/{projectId}/credentials/{credentialId}": v1ProjectsProjectIdCredentialsCredentialId.toJson(),
        "/v1/projects/{projectId}/device-activity-logs": v1ProjectsProjectIdDeviceActivityLogs.toJson(),
        "/v1/projects/{projectId}/devices": v1ProjectsProjectIdDevices.toJson(),
        "/v1/projects/{projectId}/devices/{deviceId}": v1ProjectsProjectIdDevicesDeviceId.toJson(),
        "/v1/projects/{projectId}/devices/{deviceId}/credentials": v1ProjectsProjectIdDevicesDeviceIdCredentials.toJson(),
        "/v1/projects/{projectId}/devices/{deviceId}/credentials/{credentialId}": v1ProjectsProjectIdDevicesDeviceIdCredentialsCredentialId.toJson(),
        "/v1/projects/{projectId}/devices/{deviceId}/data/{path}": v1ProjectsProjectIdDevicesDeviceIdDataPath.toJson(),
        "/v1/projects/{projectId}/devices/{deviceId}/provisioning": v1ProjectsProjectIdDevicesDeviceIdProvisioning.toJson(),
        "/v1/projects/{projectId}/devices/{deviceId}/rpc": v1ProjectsProjectIdDevicesDeviceIdRpc.toJson(),
        "/v1/projects/{projectId}/devices/{deviceId}/settings": v1ProjectsProjectIdDevicesDeviceIdSettings.toJson(),
        "/v1/projects/{projectId}/devices/{deviceId}/stream": v1ProjectsProjectIdDevicesDeviceIdStream.toJson(),
        "/v1/projects/{projectId}/devices/{deviceId}/stream/latest/{path}": v1ProjectsProjectIdDevicesDeviceIdStreamLatestPath.toJson(),
        "/v1/projects/{projectId}/devicesByTag/{tag}/data/{path}": v1ProjectsProjectIdDevicesByTagTagDataPath.toJson(),
        "/v1/projects/{projectId}/firmware/logs": v1ProjectsProjectIdFirmwareLogs.toJson(),
        "/v1/projects/{projectId}/integrations": v1ProjectsProjectIdIntegrations.toJson(),
        "/v1/projects/{projectId}/integrations/validate": v1ProjectsProjectIdIntegrationsValidate.toJson(),
        "/v1/projects/{projectId}/integrations/{integrationId}": v1ProjectsProjectIdIntegrationsIntegrationId.toJson(),
        "/v1/projects/{projectId}/integrations/{integrationId}/test": v1ProjectsProjectIdIntegrationsIntegrationIdTest.toJson(),
        "/v1/projects/{projectId}/logs": v1ProjectsProjectIdLogs.toJson(),
        "/v1/projects/{projectId}/move/{organizationId}": v1ProjectsProjectIdMoveOrganizationId.toJson(),
        "/v1/projects/{projectId}/permissions": v1ProjectsProjectIdPermissions.toJson(),
        "/v1/projects/{projectId}/policies": v1ProjectsProjectIdPolicies.toJson(),
        "/v1/projects/{projectId}/policies/{policyId}": v1ProjectsProjectIdPoliciesPolicyId.toJson(),
        "/v1/projects/{projectId}/provisioning": v1ProjectsProjectIdProvisioning.toJson(),
        "/v1/projects/{projectId}/releases": v1ProjectsProjectIdReleases.toJson(),
        "/v1/projects/{projectId}/releases/{releaseId}": v1ProjectsProjectIdReleasesReleaseId.toJson(),
        "/v1/projects/{projectId}/settings": v1ProjectsProjectIdSettings.toJson(),
        "/v1/projects/{projectId}/settings/{settingId}": v1ProjectsProjectIdSettingsSettingId.toJson(),
        "/v1/projects/{projectId}/stream": v1ProjectsProjectIdStream.toJson(),
        "/v1/projects/{projectId}/tags": v1ProjectsProjectIdTags.toJson(),
        "/v1/projects/{projectId}/tags/{tagId}": v1ProjectsProjectIdTagsTagId.toJson(),
        "/v1/projects/{projectId}/users": v1ProjectsProjectIdUsers.toJson(),
        "/v1/projects/{projectId}/users/invitation": v1ProjectsProjectIdUsersInvitation.toJson(),
        "/v1/quotas": v1Quotas.toJson(),
        "/v1/roles": v1Roles.toJson(),
        "/v1/settings-data-types": v1SettingsDataTypes.toJson(),
    };
}

class V1ArtifactsClass {
    final Post post;

    V1ArtifactsClass({
        required this.post,
    });

    factory V1ArtifactsClass.fromJson(Map<String, dynamic> json) => V1ArtifactsClass(
        post: Post.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
    };
}

class Post {
    final String operationId;
    final Responses responses;
    final List<Parameter>? parameters;
    final List<String> tags;

    Post({
        required this.operationId,
        required this.responses,
        this.parameters,
        required this.tags,
    });

    factory Post.fromJson(Map<String, dynamic> json) => Post(
        operationId: json["operationId"],
        responses: Responses.fromJson(json["responses"]),
        parameters: json["parameters"] == null ? [] : List<Parameter>.from(json["parameters"]!.map((x) => Parameter.fromJson(x))),
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "operationId": operationId,
        "responses": responses.toJson(),
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}

class Parameter {
    final String name;
    final String? description;
    final In parameterIn;
    final bool required;
    final Schema? schema;
    final CreatedAtType? type;
    final Format? format;
    final GoliothArtifactUpdate? items;
    final CollectionFormat? collectionFormat;
    final List<String>? parameterEnum;
    final String? parameterDefault;

    Parameter({
        required this.name,
        this.description,
        required this.parameterIn,
        required this.required,
        this.schema,
        this.type,
        this.format,
        this.items,
        this.collectionFormat,
        this.parameterEnum,
        this.parameterDefault,
    });

    factory Parameter.fromJson(Map<String, dynamic> json) => Parameter(
        name: json["name"],
        description: json["description"],
        parameterIn: inValues.map[json["in"]]!,
        required: json["required"],
        schema: json["schema"] == null ? null : Schema.fromJson(json["schema"]),
        type: createdAtTypeValues.map[json["type"]]!,
        format: formatValues.map[json["format"]]!,
        items: json["items"] == null ? null : GoliothArtifactUpdate.fromJson(json["items"]),
        collectionFormat: collectionFormatValues.map[json["collectionFormat"]]!,
        parameterEnum: json["enum"] == null ? [] : List<String>.from(json["enum"]!.map((x) => x)),
        parameterDefault: json["default"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "in": inValues.reverse[parameterIn],
        "required": required,
        "schema": schema?.toJson(),
        "type": createdAtTypeValues.reverse[type],
        "format": formatValues.reverse[format],
        "items": items?.toJson(),
        "collectionFormat": collectionFormatValues.reverse[collectionFormat],
        "enum": parameterEnum == null ? [] : List<dynamic>.from(parameterEnum!.map((x) => x)),
        "default": parameterDefault,
    };
}

enum CollectionFormat {
    MULTI
}

final collectionFormatValues = EnumValues({
    "multi": CollectionFormat.MULTI
});

enum In {
    BODY,
    HEADER,
    PATH,
    QUERY
}

final inValues = EnumValues({
    "body": In.BODY,
    "header": In.HEADER,
    "path": In.PATH,
    "query": In.QUERY
});

class Schema {
    final String? ref;
    final GoliothArtifactUpdateType? type;
    final Format? format;

    Schema({
        this.ref,
        this.type,
        this.format,
    });

    factory Schema.fromJson(Map<String, dynamic> json) => Schema(
        ref: json["\u0024ref"],
        type: goliothArtifactUpdateTypeValues.map[json["type"]]!,
        format: formatValues.map[json["format"]]!,
    );

    Map<String, dynamic> toJson() => {
        "\u0024ref": ref,
        "type": goliothArtifactUpdateTypeValues.reverse[type],
        "format": formatValues.reverse[format],
    };
}

class Responses {
    final The200 the200;
    final The200 responsesDefault;

    Responses({
        required this.the200,
        required this.responsesDefault,
    });

    factory Responses.fromJson(Map<String, dynamic> json) => Responses(
        the200: The200.fromJson(json["200"]),
        responsesDefault: The200.fromJson(json["default"]),
    );

    Map<String, dynamic> toJson() => {
        "200": the200.toJson(),
        "default": responsesDefault.toJson(),
    };
}

class The200 {
    final Description description;
    final TypeClass schema;

    The200({
        required this.description,
        required this.schema,
    });

    factory The200.fromJson(Map<String, dynamic> json) => The200(
        description: descriptionValues.map[json["description"]]!,
        schema: TypeClass.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "description": descriptionValues.reverse[description],
        "schema": schema.toJson(),
    };
}

enum Description {
    AN_UNEXPECTED_ERROR_RESPONSE,
    A_SUCCESSFUL_RESPONSE
}

final descriptionValues = EnumValues({
    "An unexpected error response.": Description.AN_UNEXPECTED_ERROR_RESPONSE,
    "A successful response.": Description.A_SUCCESSFUL_RESPONSE
});

class V1BillingPlansClass {
    final Post v1Get;

    V1BillingPlansClass({
        required this.v1Get,
    });

    factory V1BillingPlansClass.fromJson(Map<String, dynamic> json) => V1BillingPlansClass(
        v1Get: Post.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": v1Get.toJson(),
    };
}

class V1OrganizationsClass {
    final Post v1Get;
    final Post post;

    V1OrganizationsClass({
        required this.v1Get,
        required this.post,
    });

    factory V1OrganizationsClass.fromJson(Map<String, dynamic> json) => V1OrganizationsClass(
        v1Get: Post.fromJson(json["get"]),
        post: Post.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "get": v1Get.toJson(),
        "post": post.toJson(),
    };
}

class V1Id {
    final Post? v1IdGet;
    final Post put;
    final Post patch;
    final Post? delete;

    V1Id({
        this.v1IdGet,
        required this.put,
        required this.patch,
        this.delete,
    });

    factory V1Id.fromJson(Map<String, dynamic> json) => V1Id(
        v1IdGet: json["get"] == null ? null : Post.fromJson(json["get"]),
        put: Post.fromJson(json["put"]),
        patch: Post.fromJson(json["patch"]),
        delete: json["delete"] == null ? null : Post.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "get": v1IdGet?.toJson(),
        "put": put.toJson(),
        "patch": patch.toJson(),
        "delete": delete?.toJson(),
    };
}

class V1ProjectsProjectIdApikeysApikeyId {
    final Post delete;
    final Post patch;

    V1ProjectsProjectIdApikeysApikeyId({
        required this.delete,
        required this.patch,
    });

    factory V1ProjectsProjectIdApikeysApikeyId.fromJson(Map<String, dynamic> json) => V1ProjectsProjectIdApikeysApikeyId(
        delete: Post.fromJson(json["delete"]),
        patch: Post.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "delete": delete.toJson(),
        "patch": patch.toJson(),
    };
}

class V1ProjectsProjectIdCertificatesCertificateId {
    final Post v1ProjectsProjectIdCertificatesCertificateIdGet;
    final Post delete;

    V1ProjectsProjectIdCertificatesCertificateId({
        required this.v1ProjectsProjectIdCertificatesCertificateIdGet,
        required this.delete,
    });

    factory V1ProjectsProjectIdCertificatesCertificateId.fromJson(Map<String, dynamic> json) => V1ProjectsProjectIdCertificatesCertificateId(
        v1ProjectsProjectIdCertificatesCertificateIdGet: Post.fromJson(json["get"]),
        delete: Post.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "get": v1ProjectsProjectIdCertificatesCertificateIdGet.toJson(),
        "delete": delete.toJson(),
    };
}

class V1ProjectsProjectIdIdCredentialsCredentialId {
    final Post delete;

    V1ProjectsProjectIdIdCredentialsCredentialId({
        required this.delete,
    });

    factory V1ProjectsProjectIdIdCredentialsCredentialId.fromJson(Map<String, dynamic> json) => V1ProjectsProjectIdIdCredentialsCredentialId(
        delete: Post.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "delete": delete.toJson(),
    };
}

class V1ProjectsProjectIdDevicesDataPath {
    final Post? v1ProjectsProjectIdDevicesDataPathGet;
    final Post delete;
    final Post post;
    final Post put;
    final Post patch;

    V1ProjectsProjectIdDevicesDataPath({
        this.v1ProjectsProjectIdDevicesDataPathGet,
        required this.delete,
        required this.post,
        required this.put,
        required this.patch,
    });

    factory V1ProjectsProjectIdDevicesDataPath.fromJson(Map<String, dynamic> json) => V1ProjectsProjectIdDevicesDataPath(
        v1ProjectsProjectIdDevicesDataPathGet: json["get"] == null ? null : Post.fromJson(json["get"]),
        delete: Post.fromJson(json["delete"]),
        post: Post.fromJson(json["post"]),
        put: Post.fromJson(json["put"]),
        patch: Post.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "get": v1ProjectsProjectIdDevicesDataPathGet?.toJson(),
        "delete": delete.toJson(),
        "post": post.toJson(),
        "put": put.toJson(),
        "patch": patch.toJson(),
    };
}

class V1ProjectsProjectIdMoveOrganizationId {
    final Post put;
    final Post patch;

    V1ProjectsProjectIdMoveOrganizationId({
        required this.put,
        required this.patch,
    });

    factory V1ProjectsProjectIdMoveOrganizationId.fromJson(Map<String, dynamic> json) => V1ProjectsProjectIdMoveOrganizationId(
        put: Post.fromJson(json["put"]),
        patch: Post.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "put": put.toJson(),
        "patch": patch.toJson(),
    };
}

class Security {
    final List<dynamic> apiKey;
    final List<dynamic> bearer;

    Security({
        required this.apiKey,
        required this.bearer,
    });

    factory Security.fromJson(Map<String, dynamic> json) => Security(
        apiKey: List<dynamic>.from(json["API Key"].map((x) => x)),
        bearer: List<dynamic>.from(json["Bearer"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "API Key": List<dynamic>.from(apiKey.map((x) => x)),
        "Bearer": List<dynamic>.from(bearer.map((x) => x)),
    };
}

class SecurityDefinitions {
    final ApiKey apiKey;
    final ApiKey bearer;

    SecurityDefinitions({
        required this.apiKey,
        required this.bearer,
    });

    factory SecurityDefinitions.fromJson(Map<String, dynamic> json) => SecurityDefinitions(
        apiKey: ApiKey.fromJson(json["API Key"]),
        bearer: ApiKey.fromJson(json["Bearer"]),
    );

    Map<String, dynamic> toJson() => {
        "API Key": apiKey.toJson(),
        "Bearer": bearer.toJson(),
    };
}

class ApiKey {
    final String name;
    final In apiKeyIn;
    final bool? required;
    final Schema? schema;
    final ApiKeyType? type;
    final Format? format;

    ApiKey({
        required this.name,
        required this.apiKeyIn,
        this.required,
        this.schema,
        this.type,
        this.format,
    });

    factory ApiKey.fromJson(Map<String, dynamic> json) => ApiKey(
        name: json["name"],
        apiKeyIn: inValues.map[json["in"]]!,
        required: json["required"],
        schema: json["schema"] == null ? null : Schema.fromJson(json["schema"]),
        type: apiKeyTypeValues.map[json["type"]]!,
        format: formatValues.map[json["format"]]!,
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "in": inValues.reverse[apiKeyIn],
        "required": required,
        "schema": schema?.toJson(),
        "type": apiKeyTypeValues.reverse[type],
        "format": formatValues.reverse[format],
    };
}

enum ApiKeyType {
    API_KEY,
    INTEGER,
    STRING
}

final apiKeyTypeValues = EnumValues({
    "apiKey": ApiKeyType.API_KEY,
    "integer": ApiKeyType.INTEGER,
    "string": ApiKeyType.STRING
});

class Tag {
    final String name;

    Tag({
        required this.name,
    });

    factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
