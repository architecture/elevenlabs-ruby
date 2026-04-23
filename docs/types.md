# ElevenLabs Ruby SDK — Type Reference

Auto-generated from `lib/elevenlabs/types.json` by `scripts/render_types_doc.py`. Describes the nested Hash shapes expected by operation parameters the gem otherwise treats as opaque (`workflow`, `conversation_config`, `platform_settings`, etc.).

Source: `tmp-elevenlabs-python` @ `67367aa86a27cd1ed4da1fe4a27e3a3349fe7146` · 1458 types (887 models, 73 unions, 293 variant classes, 205 enums).

## Contents

- [Unions](#unions)
- [Models](#models)
- [Variant classes](#variant-classes)
- [Enums](#enums)

## Unions

### AgentWorkflowRequestModelNodesValue

Discriminated union on `type`. Variants:

- [AgentWorkflowRequestModelNodesValue_End](#agentworkflowrequestmodelnodesvalue_end)
- [AgentWorkflowRequestModelNodesValue_OverrideAgent](#agentworkflowrequestmodelnodesvalue_overrideagent)
- [AgentWorkflowRequestModelNodesValue_PhoneNumber](#agentworkflowrequestmodelnodesvalue_phonenumber)
- [AgentWorkflowRequestModelNodesValue_StandaloneAgent](#agentworkflowrequestmodelnodesvalue_standaloneagent)
- [AgentWorkflowRequestModelNodesValue_Start](#agentworkflowrequestmodelnodesvalue_start)
- [AgentWorkflowRequestModelNodesValue_Tool](#agentworkflowrequestmodelnodesvalue_tool)

### AgentWorkflowResponseModelNodesValue

Discriminated union on `type`. Variants:

- [AgentWorkflowResponseModelNodesValue_End](#agentworkflowresponsemodelnodesvalue_end)
- [AgentWorkflowResponseModelNodesValue_OverrideAgent](#agentworkflowresponsemodelnodesvalue_overrideagent)
- [AgentWorkflowResponseModelNodesValue_PhoneNumber](#agentworkflowresponsemodelnodesvalue_phonenumber)
- [AgentWorkflowResponseModelNodesValue_StandaloneAgent](#agentworkflowresponsemodelnodesvalue_standaloneagent)
- [AgentWorkflowResponseModelNodesValue_Start](#agentworkflowresponsemodelnodesvalue_start)
- [AgentWorkflowResponseModelNodesValue_Tool](#agentworkflowresponsemodelnodesvalue_tool)

### ApiIntegrationWebhookOverridesSchemaOverridesValue

Discriminated union on `source`. Variants:

- [ApiIntegrationWebhookOverridesSchemaOverridesValue_Constant](#apiintegrationwebhookoverridesschemaoverridesvalue_constant)
- [ApiIntegrationWebhookOverridesSchemaOverridesValue_DynamicVariable](#apiintegrationwebhookoverridesschemaoverridesvalue_dynamicvariable)
- [ApiIntegrationWebhookOverridesSchemaOverridesValue_Llm](#apiintegrationwebhookoverridesschemaoverridesvalue_llm)

### AstNodeInput

Discriminated union on `type`. Variants:

- [AstNodeInput_AddOperator](#astnodeinput_addoperator)
- [AstNodeInput_AndOperator](#astnodeinput_andoperator)
- [AstNodeInput_BooleanLiteral](#astnodeinput_booleanliteral)
- [AstNodeInput_ConditionalOperator](#astnodeinput_conditionaloperator)
- [AstNodeInput_DivOperator](#astnodeinput_divoperator)
- [AstNodeInput_DynamicVariable](#astnodeinput_dynamicvariable)
- [AstNodeInput_EqOperator](#astnodeinput_eqoperator)
- [AstNodeInput_GtOperator](#astnodeinput_gtoperator)
- [AstNodeInput_GteOperator](#astnodeinput_gteoperator)
- [AstNodeInput_Llm](#astnodeinput_llm)
- [AstNodeInput_LtOperator](#astnodeinput_ltoperator)
- [AstNodeInput_LteOperator](#astnodeinput_lteoperator)
- [AstNodeInput_MulOperator](#astnodeinput_muloperator)
- [AstNodeInput_NeqOperator](#astnodeinput_neqoperator)
- [AstNodeInput_NullLiteral](#astnodeinput_nullliteral)
- [AstNodeInput_NumberLiteral](#astnodeinput_numberliteral)
- [AstNodeInput_OrOperator](#astnodeinput_oroperator)
- [AstNodeInput_StringLiteral](#astnodeinput_stringliteral)
- [AstNodeInput_SubOperator](#astnodeinput_suboperator)

### AstNodeOutput

Discriminated union on `type`. Variants:

- [AstNodeOutput_AddOperator](#astnodeoutput_addoperator)
- [AstNodeOutput_AndOperator](#astnodeoutput_andoperator)
- [AstNodeOutput_BooleanLiteral](#astnodeoutput_booleanliteral)
- [AstNodeOutput_ConditionalOperator](#astnodeoutput_conditionaloperator)
- [AstNodeOutput_DivOperator](#astnodeoutput_divoperator)
- [AstNodeOutput_DynamicVariable](#astnodeoutput_dynamicvariable)
- [AstNodeOutput_EqOperator](#astnodeoutput_eqoperator)
- [AstNodeOutput_GtOperator](#astnodeoutput_gtoperator)
- [AstNodeOutput_GteOperator](#astnodeoutput_gteoperator)
- [AstNodeOutput_Llm](#astnodeoutput_llm)
- [AstNodeOutput_LtOperator](#astnodeoutput_ltoperator)
- [AstNodeOutput_LteOperator](#astnodeoutput_lteoperator)
- [AstNodeOutput_MulOperator](#astnodeoutput_muloperator)
- [AstNodeOutput_NeqOperator](#astnodeoutput_neqoperator)
- [AstNodeOutput_NullLiteral](#astnodeoutput_nullliteral)
- [AstNodeOutput_NumberLiteral](#astnodeoutput_numberliteral)
- [AstNodeOutput_OrOperator](#astnodeoutput_oroperator)
- [AstNodeOutput_StringLiteral](#astnodeoutput_stringliteral)
- [AstNodeOutput_SubOperator](#astnodeoutput_suboperator)

### AuthConnectionDependenciesMcpServersItem

Discriminated union on `type`. Variants:

- [AuthConnectionDependenciesMcpServersItem_Available](#authconnectiondependenciesmcpserversitem_available)
- [AuthConnectionDependenciesMcpServersItem_Unknown](#authconnectiondependenciesmcpserversitem_unknown)

### AuthConnectionDependenciesToolsItem

Discriminated union on `type`. Variants:

- [AuthConnectionDependenciesToolsItem_Available](#authconnectiondependenciestoolsitem_available)
- [AuthConnectionDependenciesToolsItem_Unknown](#authconnectiondependenciestoolsitem_unknown)

### ChapterContentBlockResponseModelNodesItem

Discriminated union on `type`. Variants:

- [ChapterContentBlockResponseModelNodesItem_TtsNode](#chaptercontentblockresponsemodelnodesitem_ttsnode)
- [ChapterContentBlockResponseModelNodesItem_Other](#chaptercontentblockresponsemodelnodesitem_other)

### ContentGuardrailInputTriggerAction

Discriminated union on `type`. Variants:

- [ContentGuardrailInputTriggerAction_EndCall](#contentguardrailinputtriggeraction_endcall)
- [ContentGuardrailInputTriggerAction_Retry](#contentguardrailinputtriggeraction_retry)

### ContentGuardrailOutputTriggerAction

Discriminated union on `type`. Variants:

- [ContentGuardrailOutputTriggerAction_EndCall](#contentguardrailoutputtriggeraction_endcall)
- [ContentGuardrailOutputTriggerAction_Retry](#contentguardrailoutputtriggeraction_retry)

### ConvAiStoredSecretDependenciesAgentsItem

Discriminated union on `type`. Variants:

- [ConvAiStoredSecretDependenciesAgentsItem_Available](#convaistoredsecretdependenciesagentsitem_available)
- [ConvAiStoredSecretDependenciesAgentsItem_Unknown](#convaistoredsecretdependenciesagentsitem_unknown)

### ConvAiStoredSecretDependenciesMcpServersItem

Discriminated union on `type`. Variants:

- [ConvAiStoredSecretDependenciesMcpServersItem_Available](#convaistoredsecretdependenciesmcpserversitem_available)
- [ConvAiStoredSecretDependenciesMcpServersItem_Unknown](#convaistoredsecretdependenciesmcpserversitem_unknown)

### ConvAiStoredSecretDependenciesToolsItem

Discriminated union on `type`. Variants:

- [ConvAiStoredSecretDependenciesToolsItem_Available](#convaistoredsecretdependenciestoolsitem_available)
- [ConvAiStoredSecretDependenciesToolsItem_Unknown](#convaistoredsecretdependenciestoolsitem_unknown)

### ConversationHistoryMetadataCommonModelPhoneCall

Discriminated union on `type`. Variants:

- [ConversationHistoryMetadataCommonModelPhoneCall_SipTrunking](#conversationhistorymetadatacommonmodelphonecall_siptrunking)
- [ConversationHistoryMetadataCommonModelPhoneCall_Twilio](#conversationhistorymetadatacommonmodelphonecall_twilio)

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult

Discriminated union on `result_type`. Variants:

- [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_EndCallSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult_endcallsuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_LanguageDetectionSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult_languagedetectionsuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_PlayDtmfError](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult_playdtmferror)
- [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_PlayDtmfSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult_playdtmfsuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_SkipTurnSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult_skipturnsuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_TestingToolResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult_testingtoolresult)
- [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_TransferToAgentError](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult_transfertoagenterror)
- [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_TransferToAgentSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult_transfertoagentsuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_TransferToNumberError](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult_transfertonumbererror)
- [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_TransferToNumberSipSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult_transfertonumbersipsuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_TransferToNumberTwilioSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult_transfertonumbertwiliosuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_VoicemailDetectionSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult_voicemaildetectionsuccess)

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult

Discriminated union on `result_type`. Variants:

- [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_EndCallSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult_endcallsuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_LanguageDetectionSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult_languagedetectionsuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_PlayDtmfError](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult_playdtmferror)
- [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_PlayDtmfSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult_playdtmfsuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_SkipTurnSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult_skipturnsuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_TestingToolResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult_testingtoolresult)
- [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_TransferToAgentError](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult_transfertoagenterror)
- [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_TransferToAgentSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult_transfertoagentsuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_TransferToNumberError](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult_transfertonumbererror)
- [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_TransferToNumberSipSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult_transfertonumbersipsuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_TransferToNumberTwilioSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult_transfertonumbertwiliosuccess)
- [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_VoicemailDetectionSuccess](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult_voicemaildetectionsuccess)

### ConversationHistoryTranscriptToolCallCommonModelInputToolDetails

Discriminated union on `type`. Variants:

- [ConversationHistoryTranscriptToolCallCommonModelInputToolDetails_ApiIntegrationWebhook](#conversationhistorytranscripttoolcallcommonmodelinputtooldetails_apiintegrationwebhook)
- [ConversationHistoryTranscriptToolCallCommonModelInputToolDetails_Client](#conversationhistorytranscripttoolcallcommonmodelinputtooldetails_client)
- [ConversationHistoryTranscriptToolCallCommonModelInputToolDetails_Mcp](#conversationhistorytranscripttoolcallcommonmodelinputtooldetails_mcp)
- [ConversationHistoryTranscriptToolCallCommonModelInputToolDetails_Webhook](#conversationhistorytranscripttoolcallcommonmodelinputtooldetails_webhook)

### ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails

Discriminated union on `type`. Variants:

- [ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails_ApiIntegrationWebhook](#conversationhistorytranscripttoolcallcommonmodeloutputtooldetails_apiintegrationwebhook)
- [ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails_Client](#conversationhistorytranscripttoolcallcommonmodeloutputtooldetails_client)
- [ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails_Mcp](#conversationhistorytranscripttoolcallcommonmodeloutputtooldetails_mcp)
- [ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails_Webhook](#conversationhistorytranscripttoolcallcommonmodeloutputtooldetails_webhook)

### CustomGuardrailConfigTriggerAction

Discriminated union on `type`. Variants:

- [CustomGuardrailConfigTriggerAction_EndCall](#customguardrailconfigtriggeraction_endcall)
- [CustomGuardrailConfigTriggerAction_Retry](#customguardrailconfigtriggeraction_retry)

### ExportOptions

Discriminated union on `format`. Variants:

- [ExportOptions_Docx](#exportoptions_docx)
- [ExportOptions_Html](#exportoptions_html)
- [ExportOptions_Pdf](#exportoptions_pdf)
- [ExportOptions_SegmentedJson](#exportoptions_segmentedjson)
- [ExportOptions_Srt](#exportoptions_srt)
- [ExportOptions_Txt](#exportoptions_txt)

### GetAgentResponseModelPhoneNumbersItem

Discriminated union on `provider`. Variants:

- [GetAgentResponseModelPhoneNumbersItem_SipTrunk](#getagentresponsemodelphonenumbersitem_siptrunk)
- [GetAgentResponseModelPhoneNumbersItem_Twilio](#getagentresponsemodelphonenumbersitem_twilio)

### GetConvAiDashboardSettingsResponseModelChartsItem

Discriminated union on `type`. Variants:

- [GetConvAiDashboardSettingsResponseModelChartsItem_CallSuccess](#getconvaidashboardsettingsresponsemodelchartsitem_callsuccess)
- [GetConvAiDashboardSettingsResponseModelChartsItem_Criteria](#getconvaidashboardsettingsresponsemodelchartsitem_criteria)
- [GetConvAiDashboardSettingsResponseModelChartsItem_DataCollection](#getconvaidashboardsettingsresponsemodelchartsitem_datacollection)

### GetKnowledgeBaseDependentAgentsResponseModelAgentsItem

Discriminated union on `type`. Variants:

- [GetKnowledgeBaseDependentAgentsResponseModelAgentsItem_Available](#getknowledgebasedependentagentsresponsemodelagentsitem_available)
- [GetKnowledgeBaseDependentAgentsResponseModelAgentsItem_Unknown](#getknowledgebasedependentagentsresponsemodelagentsitem_unknown)

### GetKnowledgeBaseListResponseModelDocumentsItem

Discriminated union on `type`. Variants:

- [GetKnowledgeBaseListResponseModelDocumentsItem_File](#getknowledgebaselistresponsemodeldocumentsitem_file)
- [GetKnowledgeBaseListResponseModelDocumentsItem_Folder](#getknowledgebaselistresponsemodeldocumentsitem_folder)
- [GetKnowledgeBaseListResponseModelDocumentsItem_Text](#getknowledgebaselistresponsemodeldocumentsitem_text)
- [GetKnowledgeBaseListResponseModelDocumentsItem_Url](#getknowledgebaselistresponsemodeldocumentsitem_url)

### GetKnowledgeBaseSummaryFileResponseModelDependentAgentsItem

Discriminated union on `type`. Variants:

- [GetKnowledgeBaseSummaryFileResponseModelDependentAgentsItem_Available](#getknowledgebasesummaryfileresponsemodeldependentagentsitem_available)
- [GetKnowledgeBaseSummaryFileResponseModelDependentAgentsItem_Unknown](#getknowledgebasesummaryfileresponsemodeldependentagentsitem_unknown)

### GetKnowledgeBaseSummaryFolderResponseModelDependentAgentsItem

Discriminated union on `type`. Variants:

- [GetKnowledgeBaseSummaryFolderResponseModelDependentAgentsItem_Available](#getknowledgebasesummaryfolderresponsemodeldependentagentsitem_available)
- [GetKnowledgeBaseSummaryFolderResponseModelDependentAgentsItem_Unknown](#getknowledgebasesummaryfolderresponsemodeldependentagentsitem_unknown)

### GetKnowledgeBaseSummaryTextResponseModelDependentAgentsItem

Discriminated union on `type`. Variants:

- [GetKnowledgeBaseSummaryTextResponseModelDependentAgentsItem_Available](#getknowledgebasesummarytextresponsemodeldependentagentsitem_available)
- [GetKnowledgeBaseSummaryTextResponseModelDependentAgentsItem_Unknown](#getknowledgebasesummarytextresponsemodeldependentagentsitem_unknown)

### GetKnowledgeBaseSummaryUrlResponseModelDependentAgentsItem

Discriminated union on `type`. Variants:

- [GetKnowledgeBaseSummaryUrlResponseModelDependentAgentsItem_Available](#getknowledgebasesummaryurlresponsemodeldependentagentsitem_available)
- [GetKnowledgeBaseSummaryUrlResponseModelDependentAgentsItem_Unknown](#getknowledgebasesummaryurlresponsemodeldependentagentsitem_unknown)

### GetPronunciationDictionaryWithRulesResponseModelRulesItem

Discriminated union on `type`. Variants:

- [GetPronunciationDictionaryWithRulesResponseModelRulesItem_Alias](#getpronunciationdictionarywithrulesresponsemodelrulesitem_alias)
- [GetPronunciationDictionaryWithRulesResponseModelRulesItem_Phoneme](#getpronunciationdictionarywithrulesresponsemodelrulesitem_phoneme)

### GetSecretDependenciesResponseModelDependenciesOneItem

Discriminated union on `type`. Variants:

- [GetSecretDependenciesResponseModelDependenciesOneItem_Available](#getsecretdependenciesresponsemodeldependenciesoneitem_available)
- [GetSecretDependenciesResponseModelDependenciesOneItem_Unknown](#getsecretdependenciesresponsemodeldependenciesoneitem_unknown)

### GetSecretDependenciesResponseModelDependenciesZeroItem

Discriminated union on `type`. Variants:

- [GetSecretDependenciesResponseModelDependenciesZeroItem_Available](#getsecretdependenciesresponsemodeldependencieszeroitem_available)
- [GetSecretDependenciesResponseModelDependenciesZeroItem_Unknown](#getsecretdependenciesresponsemodeldependencieszeroitem_unknown)

### GetToolDependentAgentsResponseModelAgentsItem

Discriminated union on `type`. Variants:

- [GetToolDependentAgentsResponseModelAgentsItem_Available](#gettooldependentagentsresponsemodelagentsitem_available)
- [GetToolDependentAgentsResponseModelAgentsItem_Unknown](#gettooldependentagentsresponsemodelagentsitem_unknown)

### KnowledgeBaseContentSearchResultDocument

Discriminated union on `type`. Variants:

- [KnowledgeBaseContentSearchResultDocument_File](#knowledgebasecontentsearchresultdocument_file)
- [KnowledgeBaseContentSearchResultDocument_Folder](#knowledgebasecontentsearchresultdocument_folder)
- [KnowledgeBaseContentSearchResultDocument_Text](#knowledgebasecontentsearchresultdocument_text)
- [KnowledgeBaseContentSearchResultDocument_Url](#knowledgebasecontentsearchresultdocument_url)

### KnowledgeBaseSummaryBatchSuccessfulResponseModelData

Discriminated union on `type`. Variants:

- [KnowledgeBaseSummaryBatchSuccessfulResponseModelData_File](#knowledgebasesummarybatchsuccessfulresponsemodeldata_file)
- [KnowledgeBaseSummaryBatchSuccessfulResponseModelData_Folder](#knowledgebasesummarybatchsuccessfulresponsemodeldata_folder)
- [KnowledgeBaseSummaryBatchSuccessfulResponseModelData_Text](#knowledgebasesummarybatchsuccessfulresponsemodeldata_text)
- [KnowledgeBaseSummaryBatchSuccessfulResponseModelData_Url](#knowledgebasesummarybatchsuccessfulresponsemodeldata_url)

### ListAuthConnectionsResponseAuthConnectionsItem

Discriminated union on `auth_type`. Variants:

- [ListAuthConnectionsResponseAuthConnectionsItem_ApiIntegrationOauth2AuthCode](#listauthconnectionsresponseauthconnectionsitem_apiintegrationoauth2authcode)
- [ListAuthConnectionsResponseAuthConnectionsItem_BasicAuth](#listauthconnectionsresponseauthconnectionsitem_basicauth)
- [ListAuthConnectionsResponseAuthConnectionsItem_BearerAuth](#listauthconnectionsresponseauthconnectionsitem_bearerauth)
- [ListAuthConnectionsResponseAuthConnectionsItem_CustomHeaderAuth](#listauthconnectionsresponseauthconnectionsitem_customheaderauth)
- [ListAuthConnectionsResponseAuthConnectionsItem_Mtls](#listauthconnectionsresponseauthconnectionsitem_mtls)
- [ListAuthConnectionsResponseAuthConnectionsItem_Oauth2ClientCredentials](#listauthconnectionsresponseauthconnectionsitem_oauth2clientcredentials)
- [ListAuthConnectionsResponseAuthConnectionsItem_Oauth2Jwt](#listauthconnectionsresponseauthconnectionsitem_oauth2jwt)
- [ListAuthConnectionsResponseAuthConnectionsItem_PrivateKeyJwt](#listauthconnectionsresponseauthconnectionsitem_privatekeyjwt)
- [ListAuthConnectionsResponseAuthConnectionsItem_WhatsappAuth](#listauthconnectionsresponseauthconnectionsitem_whatsappauth)

### McpServerResponseModelDependentAgentsItem

Discriminated union on `type`. Variants:

- [McpServerResponseModelDependentAgentsItem_Available](#mcpserverresponsemodeldependentagentsitem_available)
- [McpServerResponseModelDependentAgentsItem_Unknown](#mcpserverresponsemodeldependentagentsitem_unknown)

### McpToolConfigOverrideInputInputOverridesValue

Discriminated union on `source`. Variants:

- [McpToolConfigOverrideInputInputOverridesValue_Constant](#mcptoolconfigoverrideinputinputoverridesvalue_constant)
- [McpToolConfigOverrideInputInputOverridesValue_DynamicVariable](#mcptoolconfigoverrideinputinputoverridesvalue_dynamicvariable)
- [McpToolConfigOverrideInputInputOverridesValue_Llm](#mcptoolconfigoverrideinputinputoverridesvalue_llm)

### McpToolConfigOverrideOutputInputOverridesValue

Discriminated union on `source`. Variants:

- [McpToolConfigOverrideOutputInputOverridesValue_Constant](#mcptoolconfigoverrideoutputinputoverridesvalue_constant)
- [McpToolConfigOverrideOutputInputOverridesValue_DynamicVariable](#mcptoolconfigoverrideoutputinputoverridesvalue_dynamicvariable)
- [McpToolConfigOverrideOutputInputOverridesValue_Llm](#mcptoolconfigoverrideoutputinputoverridesvalue_llm)

### PhoneNumberTransferCustomSipHeadersItem

Discriminated union on `type`. Variants:

- [PhoneNumberTransferCustomSipHeadersItem_Dynamic](#phonenumbertransfercustomsipheadersitem_dynamic)
- [PhoneNumberTransferCustomSipHeadersItem_Static](#phonenumbertransfercustomsipheadersitem_static)

### PhoneNumberTransferPostDialDigits

Discriminated union on `type`. Variants:

- [PhoneNumberTransferPostDialDigits_Dynamic](#phonenumbertransferpostdialdigits_dynamic)
- [PhoneNumberTransferPostDialDigits_Static](#phonenumbertransferpostdialdigits_static)

### PhoneNumberTransferTransferDestination

Discriminated union on `type`. Variants:

- [PhoneNumberTransferTransferDestination_Phone](#phonenumbertransfertransferdestination_phone)
- [PhoneNumberTransferTransferDestination_PhoneDynamicVariable](#phonenumbertransfertransferdestination_phonedynamicvariable)
- [PhoneNumberTransferTransferDestination_SipUri](#phonenumbertransfertransferdestination_sipuri)
- [PhoneNumberTransferTransferDestination_SipUriDynamicVariable](#phonenumbertransfertransferdestination_sipuridynamicvariable)

### ProjectExtendedResponseModelAssetsItem

Discriminated union on `type`. Variants:

- [ProjectExtendedResponseModelAssetsItem_Video](#projectextendedresponsemodelassetsitem_video)
- [ProjectExtendedResponseModelAssetsItem_Audio](#projectextendedresponsemodelassetsitem_audio)
- [ProjectExtendedResponseModelAssetsItem_Image](#projectextendedresponsemodelassetsitem_image)

### ProjectExternalAudioResponseModelSourceContext

Discriminated union on `source_type`. Variants:

- [ProjectExternalAudioResponseModelSourceContext_MusicExploreSong](#projectexternalaudioresponsemodelsourcecontext_musicexploresong)
- [ProjectExternalAudioResponseModelSourceContext_Sfx](#projectexternalaudioresponsemodelsourcecontext_sfx)
- [ProjectExternalAudioResponseModelSourceContext_Song](#projectexternalaudioresponsemodelsourcecontext_song)

### PromptAgentApiModelInputBackupLlmConfig

Discriminated union on `preference`. Variants:

- [PromptAgentApiModelInputBackupLlmConfig_Default](#promptagentapimodelinputbackupllmconfig_default)
- [PromptAgentApiModelInputBackupLlmConfig_Disabled](#promptagentapimodelinputbackupllmconfig_disabled)
- [PromptAgentApiModelInputBackupLlmConfig_Override](#promptagentapimodelinputbackupllmconfig_override)

### PromptAgentApiModelInputToolsItem

Discriminated union on `type`. Variants:

- [PromptAgentApiModelInputToolsItem_ApiIntegrationWebhook](#promptagentapimodelinputtoolsitem_apiintegrationwebhook)
- [PromptAgentApiModelInputToolsItem_Client](#promptagentapimodelinputtoolsitem_client)
- [PromptAgentApiModelInputToolsItem_Mcp](#promptagentapimodelinputtoolsitem_mcp)
- [PromptAgentApiModelInputToolsItem_Smb](#promptagentapimodelinputtoolsitem_smb)
- [PromptAgentApiModelInputToolsItem_System](#promptagentapimodelinputtoolsitem_system)
- [PromptAgentApiModelInputToolsItem_Webhook](#promptagentapimodelinputtoolsitem_webhook)

### PromptAgentApiModelOutputBackupLlmConfig

Discriminated union on `preference`. Variants:

- [PromptAgentApiModelOutputBackupLlmConfig_Default](#promptagentapimodeloutputbackupllmconfig_default)
- [PromptAgentApiModelOutputBackupLlmConfig_Disabled](#promptagentapimodeloutputbackupllmconfig_disabled)
- [PromptAgentApiModelOutputBackupLlmConfig_Override](#promptagentapimodeloutputbackupllmconfig_override)

### PromptAgentApiModelOutputToolsItem

Discriminated union on `type`. Variants:

- [PromptAgentApiModelOutputToolsItem_ApiIntegrationWebhook](#promptagentapimodeloutputtoolsitem_apiintegrationwebhook)
- [PromptAgentApiModelOutputToolsItem_Client](#promptagentapimodeloutputtoolsitem_client)
- [PromptAgentApiModelOutputToolsItem_Mcp](#promptagentapimodeloutputtoolsitem_mcp)
- [PromptAgentApiModelOutputToolsItem_Smb](#promptagentapimodeloutputtoolsitem_smb)
- [PromptAgentApiModelOutputToolsItem_System](#promptagentapimodeloutputtoolsitem_system)
- [PromptAgentApiModelOutputToolsItem_Webhook](#promptagentapimodeloutputtoolsitem_webhook)

### PromptAgentApiModelWorkflowOverrideInputToolsItem

Discriminated union on `type`. Variants:

- [PromptAgentApiModelWorkflowOverrideInputToolsItem_ApiIntegrationWebhook](#promptagentapimodelworkflowoverrideinputtoolsitem_apiintegrationwebhook)
- [PromptAgentApiModelWorkflowOverrideInputToolsItem_Client](#promptagentapimodelworkflowoverrideinputtoolsitem_client)
- [PromptAgentApiModelWorkflowOverrideInputToolsItem_Mcp](#promptagentapimodelworkflowoverrideinputtoolsitem_mcp)
- [PromptAgentApiModelWorkflowOverrideInputToolsItem_Smb](#promptagentapimodelworkflowoverrideinputtoolsitem_smb)
- [PromptAgentApiModelWorkflowOverrideInputToolsItem_System](#promptagentapimodelworkflowoverrideinputtoolsitem_system)
- [PromptAgentApiModelWorkflowOverrideInputToolsItem_Webhook](#promptagentapimodelworkflowoverrideinputtoolsitem_webhook)

### PromptAgentApiModelWorkflowOverrideOutputToolsItem

Discriminated union on `type`. Variants:

- [PromptAgentApiModelWorkflowOverrideOutputToolsItem_ApiIntegrationWebhook](#promptagentapimodelworkflowoverrideoutputtoolsitem_apiintegrationwebhook)
- [PromptAgentApiModelWorkflowOverrideOutputToolsItem_Client](#promptagentapimodelworkflowoverrideoutputtoolsitem_client)
- [PromptAgentApiModelWorkflowOverrideOutputToolsItem_Mcp](#promptagentapimodelworkflowoverrideoutputtoolsitem_mcp)
- [PromptAgentApiModelWorkflowOverrideOutputToolsItem_Smb](#promptagentapimodelworkflowoverrideoutputtoolsitem_smb)
- [PromptAgentApiModelWorkflowOverrideOutputToolsItem_System](#promptagentapimodelworkflowoverrideoutputtoolsitem_system)
- [PromptAgentApiModelWorkflowOverrideOutputToolsItem_Webhook](#promptagentapimodelworkflowoverrideoutputtoolsitem_webhook)

### SystemToolConfigInputParams

Discriminated union on `system_tool_type`. Variants:

- [SystemToolConfigInputParams_EndCall](#systemtoolconfiginputparams_endcall)
- [SystemToolConfigInputParams_LanguageDetection](#systemtoolconfiginputparams_languagedetection)
- [SystemToolConfigInputParams_PlayKeypadTouchTone](#systemtoolconfiginputparams_playkeypadtouchtone)
- [SystemToolConfigInputParams_SkipTurn](#systemtoolconfiginputparams_skipturn)
- [SystemToolConfigInputParams_TransferToAgent](#systemtoolconfiginputparams_transfertoagent)
- [SystemToolConfigInputParams_TransferToNumber](#systemtoolconfiginputparams_transfertonumber)
- [SystemToolConfigInputParams_VoicemailDetection](#systemtoolconfiginputparams_voicemaildetection)

### SystemToolConfigOutputParams

Discriminated union on `system_tool_type`. Variants:

- [SystemToolConfigOutputParams_EndCall](#systemtoolconfigoutputparams_endcall)
- [SystemToolConfigOutputParams_LanguageDetection](#systemtoolconfigoutputparams_languagedetection)
- [SystemToolConfigOutputParams_PlayKeypadTouchTone](#systemtoolconfigoutputparams_playkeypadtouchtone)
- [SystemToolConfigOutputParams_SkipTurn](#systemtoolconfigoutputparams_skipturn)
- [SystemToolConfigOutputParams_TransferToAgent](#systemtoolconfigoutputparams_transfertoagent)
- [SystemToolConfigOutputParams_TransferToNumber](#systemtoolconfigoutputparams_transfertonumber)
- [SystemToolConfigOutputParams_VoicemailDetection](#systemtoolconfigoutputparams_voicemaildetection)

### ToolExecutionResponseModelToolCallDetails

Discriminated union on `type`. Variants:

- [ToolExecutionResponseModelToolCallDetails_ApiIntegrationWebhook](#toolexecutionresponsemodeltoolcalldetails_apiintegrationwebhook)
- [ToolExecutionResponseModelToolCallDetails_Client](#toolexecutionresponsemodeltoolcalldetails_client)
- [ToolExecutionResponseModelToolCallDetails_Mcp](#toolexecutionresponsemodeltoolcalldetails_mcp)
- [ToolExecutionResponseModelToolCallDetails_Webhook](#toolexecutionresponsemodeltoolcalldetails_webhook)

### ToolRequestModelToolConfig

Discriminated union on `type`. Variants:

- [ToolRequestModelToolConfig_Client](#toolrequestmodeltoolconfig_client)
- [ToolRequestModelToolConfig_Mcp](#toolrequestmodeltoolconfig_mcp)
- [ToolRequestModelToolConfig_System](#toolrequestmodeltoolconfig_system)
- [ToolRequestModelToolConfig_Webhook](#toolrequestmodeltoolconfig_webhook)

### ToolResponseModelToolConfig

Discriminated union on `type`. Variants:

- [ToolResponseModelToolConfig_Client](#toolresponsemodeltoolconfig_client)
- [ToolResponseModelToolConfig_Mcp](#toolresponsemodeltoolconfig_mcp)
- [ToolResponseModelToolConfig_System](#toolresponsemodeltoolconfig_system)
- [ToolResponseModelToolConfig_Webhook](#toolresponsemodeltoolconfig_webhook)

### TransferToAgentToolResultSuccessModelBranchInfo

Discriminated union on `branch_reason`. Variants:

- [TransferToAgentToolResultSuccessModelBranchInfo_DefaultingToMain](#transfertoagenttoolresultsuccessmodelbranchinfo_defaultingtomain)
- [TransferToAgentToolResultSuccessModelBranchInfo_TrafficSplit](#transfertoagenttoolresultsuccessmodelbranchinfo_trafficsplit)

### UnitTestRunResponseModelTestInfo

Discriminated union on `type`. Variants:

- [UnitTestRunResponseModelTestInfo_Llm](#unittestrunresponsemodeltestinfo_llm)
- [UnitTestRunResponseModelTestInfo_Simulation](#unittestrunresponsemodeltestinfo_simulation)
- [UnitTestRunResponseModelTestInfo_Tool](#unittestrunresponsemodeltestinfo_tool)

### UnitTestToolCallParameterEval

Discriminated union on `type`. Variants:

- [UnitTestToolCallParameterEval_Anything](#unittesttoolcallparametereval_anything)
- [UnitTestToolCallParameterEval_Exact](#unittesttoolcallparametereval_exact)
- [UnitTestToolCallParameterEval_Llm](#unittesttoolcallparametereval_llm)
- [UnitTestToolCallParameterEval_Regex](#unittesttoolcallparametereval_regex)

### WhatsAppTemplateHeaderComponentParamsParametersItem

Discriminated union on `type`. Variants:

- [WhatsAppTemplateHeaderComponentParamsParametersItem_Document](#whatsapptemplateheadercomponentparamsparametersitem_document)
- [WhatsAppTemplateHeaderComponentParamsParametersItem_Image](#whatsapptemplateheadercomponentparamsparametersitem_image)
- [WhatsAppTemplateHeaderComponentParamsParametersItem_Location](#whatsapptemplateheadercomponentparamsparametersitem_location)
- [WhatsAppTemplateHeaderComponentParamsParametersItem_Text](#whatsapptemplateheadercomponentparamsparametersitem_text)

### WidgetConfigInputAvatar

Discriminated union on `type`. Variants:

- [WidgetConfigInputAvatar_Orb](#widgetconfiginputavatar_orb)
- [WidgetConfigInputAvatar_Url](#widgetconfiginputavatar_url)
- [WidgetConfigInputAvatar_Image](#widgetconfiginputavatar_image)

### WidgetConfigOutputAvatar

Discriminated union on `type`. Variants:

- [WidgetConfigOutputAvatar_Orb](#widgetconfigoutputavatar_orb)
- [WidgetConfigOutputAvatar_Url](#widgetconfigoutputavatar_url)
- [WidgetConfigOutputAvatar_Image](#widgetconfigoutputavatar_image)

### WidgetConfigResponseModelAvatar

Discriminated union on `type`. Variants:

- [WidgetConfigResponseModelAvatar_Orb](#widgetconfigresponsemodelavatar_orb)
- [WidgetConfigResponseModelAvatar_Url](#widgetconfigresponsemodelavatar_url)
- [WidgetConfigResponseModelAvatar_Image](#widgetconfigresponsemodelavatar_image)

### WorkflowEdgeModelInputBackwardCondition

Discriminated union on `type`. Variants:

- [WorkflowEdgeModelInputBackwardCondition_Expression](#workflowedgemodelinputbackwardcondition_expression)
- [WorkflowEdgeModelInputBackwardCondition_Llm](#workflowedgemodelinputbackwardcondition_llm)
- [WorkflowEdgeModelInputBackwardCondition_Result](#workflowedgemodelinputbackwardcondition_result)
- [WorkflowEdgeModelInputBackwardCondition_Unconditional](#workflowedgemodelinputbackwardcondition_unconditional)

### WorkflowEdgeModelInputForwardCondition

Discriminated union on `type`. Variants:

- [WorkflowEdgeModelInputForwardCondition_Expression](#workflowedgemodelinputforwardcondition_expression)
- [WorkflowEdgeModelInputForwardCondition_Llm](#workflowedgemodelinputforwardcondition_llm)
- [WorkflowEdgeModelInputForwardCondition_Result](#workflowedgemodelinputforwardcondition_result)
- [WorkflowEdgeModelInputForwardCondition_Unconditional](#workflowedgemodelinputforwardcondition_unconditional)

### WorkflowEdgeModelOutputBackwardCondition

Discriminated union on `type`. Variants:

- [WorkflowEdgeModelOutputBackwardCondition_Expression](#workflowedgemodeloutputbackwardcondition_expression)
- [WorkflowEdgeModelOutputBackwardCondition_Llm](#workflowedgemodeloutputbackwardcondition_llm)
- [WorkflowEdgeModelOutputBackwardCondition_Result](#workflowedgemodeloutputbackwardcondition_result)
- [WorkflowEdgeModelOutputBackwardCondition_Unconditional](#workflowedgemodeloutputbackwardcondition_unconditional)

### WorkflowEdgeModelOutputForwardCondition

Discriminated union on `type`. Variants:

- [WorkflowEdgeModelOutputForwardCondition_Expression](#workflowedgemodeloutputforwardcondition_expression)
- [WorkflowEdgeModelOutputForwardCondition_Llm](#workflowedgemodeloutputforwardcondition_llm)
- [WorkflowEdgeModelOutputForwardCondition_Result](#workflowedgemodeloutputforwardcondition_result)
- [WorkflowEdgeModelOutputForwardCondition_Unconditional](#workflowedgemodeloutputforwardcondition_unconditional)

### WorkflowPhoneNumberNodeModelInputCustomSipHeadersItem

Discriminated union on `type`. Variants:

- [WorkflowPhoneNumberNodeModelInputCustomSipHeadersItem_Dynamic](#workflowphonenumbernodemodelinputcustomsipheadersitem_dynamic)
- [WorkflowPhoneNumberNodeModelInputCustomSipHeadersItem_Static](#workflowphonenumbernodemodelinputcustomsipheadersitem_static)

### WorkflowPhoneNumberNodeModelInputPostDialDigits

Discriminated union on `type`. Variants:

- [WorkflowPhoneNumberNodeModelInputPostDialDigits_Dynamic](#workflowphonenumbernodemodelinputpostdialdigits_dynamic)
- [WorkflowPhoneNumberNodeModelInputPostDialDigits_Static](#workflowphonenumbernodemodelinputpostdialdigits_static)

### WorkflowPhoneNumberNodeModelInputTransferDestination

Discriminated union on `type`. Variants:

- [WorkflowPhoneNumberNodeModelInputTransferDestination_Phone](#workflowphonenumbernodemodelinputtransferdestination_phone)
- [WorkflowPhoneNumberNodeModelInputTransferDestination_PhoneDynamicVariable](#workflowphonenumbernodemodelinputtransferdestination_phonedynamicvariable)
- [WorkflowPhoneNumberNodeModelInputTransferDestination_SipUri](#workflowphonenumbernodemodelinputtransferdestination_sipuri)
- [WorkflowPhoneNumberNodeModelInputTransferDestination_SipUriDynamicVariable](#workflowphonenumbernodemodelinputtransferdestination_sipuridynamicvariable)

### WorkflowPhoneNumberNodeModelOutputCustomSipHeadersItem

Discriminated union on `type`. Variants:

- [WorkflowPhoneNumberNodeModelOutputCustomSipHeadersItem_Dynamic](#workflowphonenumbernodemodeloutputcustomsipheadersitem_dynamic)
- [WorkflowPhoneNumberNodeModelOutputCustomSipHeadersItem_Static](#workflowphonenumbernodemodeloutputcustomsipheadersitem_static)

### WorkflowPhoneNumberNodeModelOutputPostDialDigits

Discriminated union on `type`. Variants:

- [WorkflowPhoneNumberNodeModelOutputPostDialDigits_Dynamic](#workflowphonenumbernodemodeloutputpostdialdigits_dynamic)
- [WorkflowPhoneNumberNodeModelOutputPostDialDigits_Static](#workflowphonenumbernodemodeloutputpostdialdigits_static)

### WorkflowPhoneNumberNodeModelOutputTransferDestination

Discriminated union on `type`. Variants:

- [WorkflowPhoneNumberNodeModelOutputTransferDestination_Phone](#workflowphonenumbernodemodeloutputtransferdestination_phone)
- [WorkflowPhoneNumberNodeModelOutputTransferDestination_PhoneDynamicVariable](#workflowphonenumbernodemodeloutputtransferdestination_phonedynamicvariable)
- [WorkflowPhoneNumberNodeModelOutputTransferDestination_SipUri](#workflowphonenumbernodemodeloutputtransferdestination_sipuri)
- [WorkflowPhoneNumberNodeModelOutputTransferDestination_SipUriDynamicVariable](#workflowphonenumbernodemodeloutputtransferdestination_sipuridynamicvariable)

### WorkflowToolResponseModelInputStepsItem

Discriminated union on `type`. Variants:

- [WorkflowToolResponseModelInputStepsItem_Edge](#workflowtoolresponsemodelinputstepsitem_edge)
- [WorkflowToolResponseModelInputStepsItem_MaxIterationsExceeded](#workflowtoolresponsemodelinputstepsitem_maxiterationsexceeded)
- [WorkflowToolResponseModelInputStepsItem_NestedTools](#workflowtoolresponsemodelinputstepsitem_nestedtools)

### WorkflowToolResponseModelOutputStepsItem

Discriminated union on `type`. Variants:

- [WorkflowToolResponseModelOutputStepsItem_Edge](#workflowtoolresponsemodeloutputstepsitem_edge)
- [WorkflowToolResponseModelOutputStepsItem_MaxIterationsExceeded](#workflowtoolresponsemodeloutputstepsitem_maxiterationsexceeded)
- [WorkflowToolResponseModelOutputStepsItem_NestedTools](#workflowtoolresponsemodeloutputstepsitem_nestedtools)

## Models

### AddChapterResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `chapter` | [ChapterWithContentResponseModel](#chapterwithcontentresponsemodel) | **yes** | **required** |  |

### AddKnowledgeBaseResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` | The folder path segments leading to this entity, from root to parent folder. |

### AddProjectResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `project` | [ProjectResponse](#projectresponse) | **yes** | **required** |  |

### AddPronunciationDictionaryResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** | The ID of the created pronunciation dictionary. |
| `name` | str | **yes** | **required** | The name of the created pronunciation dictionary. |
| `created_by` | str | **yes** | **required** | The user ID of the creator of the pronunciation dictionary. |
| `creation_time_unix` | int | **yes** | **required** | The creation time of the pronunciation dictionary in Unix timestamp. |
| `version_id` | str | **yes** | **required** | The ID of the created pronunciation dictionary version. |
| `version_rules_num` | int | **yes** | **required** | The number of rules in the version of the pronunciation dictionary. |
| `description` | Optional<str> | no | `nil` | The description of the pronunciation dictionary. |
| `permission_on_resource` | Optional<[AddPronunciationDictionaryResponseModelPermissionOnResource](#addpronunciationdictionaryresponsemodelpermissiononresource)> | no | `nil` | The permission on the resource of the pronunciation dictionary. |

### AddVoiceIvcResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voice_id` | str | **yes** | **required** | The ID of the newly created voice. |
| `requires_verification` | bool | **yes** | **required** | Whether the voice requires verification |

### AddVoiceResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voice_id` | str | **yes** | **required** | The ID of the voice. |

### AddWorkspaceGroupMemberResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the workspace group member addition request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### AddWorkspaceInviteResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the workspace invite request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### AdditionalFormatResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `requested_format` | str | **yes** | **required** | The requested format. |
| `file_extension` | str | **yes** | **required** | The file extension of the additional format. |
| `content_type` | str | **yes** | **required** | The content type of the additional format. |
| `is_base_64_encoded` | Annotated[bool, FieldMetadata(alias='is_base64_encoded')> | **yes** | **required** | Whether the content is base64 encoded. |
| `content` | str | **yes** | **required** | The content of the additional format. |

### AdhocAgentConfigOverrideForTestRequestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_config` | [ConversationalConfig](#conversationalconfig) | **yes** | **required** |  |
| `platform_settings` | [AgentPlatformSettingsRequestModel](#agentplatformsettingsrequestmodel) | **yes** | **required** |  |
| `workflow` | Optional<[AgentWorkflowRequestModel](#agentworkflowrequestmodel)> | no | `nil` |  |

### AgentBranchBasicInfo

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |

### AgentBranchResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `agent_id` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `created_at` | int | **yes** | **required** |  |
| `last_committed_at` | int | **yes** | **required** |  |
| `is_archived` | bool | **yes** | **required** |  |
| `protection_status` | Optional<[BranchProtectionStatus](#branchprotectionstatus)> | no | `nil` |  |
| `access_info` | Optional<[ResourceAccessInfo](#resourceaccessinfo)> | no | `nil` | Access information for the branch |
| `current_live_percentage` | Optional<float> | no | `nil` | Percentage of traffic live on the branch |
| `parent_branch` | Optional<[AgentBranchBasicInfo](#agentbranchbasicinfo)> | no | `nil` | Parent branch of the branch |
| `most_recent_versions` | Optional<Array<[AgentVersionMetadata](#agentversionmetadata)>> | no | `nil` | Most recent versions on the branch |

### AgentBranchSummary

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `agent_id` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `created_at` | int | **yes** | **required** |  |
| `last_committed_at` | int | **yes** | **required** |  |
| `is_archived` | bool | **yes** | **required** |  |
| `protection_status` | Optional<[BranchProtectionStatus](#branchprotectionstatus)> | no | `nil` |  |
| `access_info` | Optional<[ResourceAccessInfo](#resourceaccessinfo)> | no | `nil` | Access information for the branch |
| `current_live_percentage` | Optional<float> | no | `nil` | Percentage of traffic live on the branch |
| `parent_branch_id` | Optional<str> | no | `nil` | ID of the parent branch |
| `draft_exists` | Optional<bool> | no | `nil` | Whether a draft exists for the branch |

### AgentCallLimits

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_concurrency_limit` | Optional<int> | no | `nil` | The maximum number of concurrent conversations. -1 indicates that there is no maximum |
| `daily_limit` | Optional<int> | no | `nil` | The maximum number of conversations per day |
| `bursting_enabled` | Optional<bool> | no | `nil` | Whether to enable bursting. If true, exceeding workspace concurrency limit will be allowed up to 3 times the limit. Calls will be charged at double rate when exceeding the limit. |

### AgentConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `first_message` | Optional<str> | no | `nil` | If non-empty, the first message the agent will say. If empty, the agent waits for the user to start the discussion. |
| `language` | Optional<str> | no | `nil` | Language of the agent - used for ASR and TTS |
| `hinglish_mode` | Optional<bool> | no | `nil` | When enabled and language is Hindi, the agent will respond in Hinglish |
| `dynamic_variables` | Optional<[DynamicVariablesConfigOutput](#dynamicvariablesconfigoutput)> | no | `nil` | Configuration for dynamic variables |
| `disable_first_message_interruptions` | Optional<bool> | no | `nil` | If true, the user will not be able to interrupt the agent while the first message is being delivered. |
| `max_conversation_duration_message` | Optional<str> | no | `nil` | If non-empty, the message the agent will send when max conversation duration is reached. |
| `prompt` | Optional<[PromptAgentApiModelOutput](#promptagentapimodeloutput)> | no | `nil` | The prompt for the agent |

### AgentConfigApiModelWorkflowOverrideInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `first_message` | Optional<str> | no | `nil` | If non-empty, the first message the agent will say. If empty, the agent waits for the user to start the discussion. |
| `language` | Optional<str> | no | `nil` | Language of the agent - used for ASR and TTS |
| `hinglish_mode` | Optional<bool> | no | `nil` | When enabled and language is Hindi, the agent will respond in Hinglish |
| `dynamic_variables` | Optional<[DynamicVariablesConfigWorkflowOverrideInput](#dynamicvariablesconfigworkflowoverrideinput)> | no | `nil` | Configuration for dynamic variables |
| `disable_first_message_interruptions` | Optional<bool> | no | `nil` | If true, the user will not be able to interrupt the agent while the first message is being delivered. |
| `max_conversation_duration_message` | Optional<str> | no | `nil` | If non-empty, the message the agent will send when max conversation duration is reached. |
| `prompt` | Optional<[PromptAgentApiModelWorkflowOverrideInput](#promptagentapimodelworkflowoverrideinput)> | no | `nil` | The prompt for the agent |

### AgentConfigApiModelWorkflowOverrideOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `first_message` | Optional<str> | no | `nil` | If non-empty, the first message the agent will say. If empty, the agent waits for the user to start the discussion. |
| `language` | Optional<str> | no | `nil` | Language of the agent - used for ASR and TTS |
| `hinglish_mode` | Optional<bool> | no | `nil` | When enabled and language is Hindi, the agent will respond in Hinglish |
| `dynamic_variables` | Optional<[DynamicVariablesConfigWorkflowOverrideOutput](#dynamicvariablesconfigworkflowoverrideoutput)> | no | `nil` | Configuration for dynamic variables |
| `disable_first_message_interruptions` | Optional<bool> | no | `nil` | If true, the user will not be able to interrupt the agent while the first message is being delivered. |
| `max_conversation_duration_message` | Optional<str> | no | `nil` | If non-empty, the message the agent will send when max conversation duration is reached. |
| `prompt` | Optional<[PromptAgentApiModelWorkflowOverrideOutput](#promptagentapimodelworkflowoverrideoutput)> | no | `nil` | The prompt for the agent |

### AgentConfigOverrideConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `first_message` | Optional<bool> | no | `nil` | Whether to allow overriding the first_message field. |
| `language` | Optional<bool> | no | `nil` | Whether to allow overriding the language field. |
| `max_conversation_duration_message` | Optional<bool> | no | `nil` | Whether to allow overriding the max_conversation_duration_message field. |
| `prompt` | Optional<[PromptAgentApiModelOverrideConfig](#promptagentapimodeloverrideconfig)> | no | `nil` | Configures overrides for nested fields. |

### AgentConfigOverrideInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `first_message` | Optional<str> | no | `nil` | If non-empty, the first message the agent will say. If empty, the agent waits for the user to start the discussion. |
| `language` | Optional<str> | no | `nil` | Language of the agent - used for ASR and TTS |
| `max_conversation_duration_message` | Optional<str> | no | `nil` | If non-empty, the message the agent will send when max conversation duration is reached. |
| `prompt` | Optional<[PromptAgentApiModelOverrideInput](#promptagentapimodeloverrideinput)> | no | `nil` | The prompt for the agent |

### AgentConfigOverrideOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `first_message` | Optional<str> | no | `nil` | If non-empty, the first message the agent will say. If empty, the agent waits for the user to start the discussion. |
| `language` | Optional<str> | no | `nil` | Language of the agent - used for ASR and TTS |
| `max_conversation_duration_message` | Optional<str> | no | `nil` | If non-empty, the message the agent will send when max conversation duration is reached. |
| `prompt` | Optional<[PromptAgentApiModelOverrideOutput](#promptagentapimodeloverrideoutput)> | no | `nil` | The prompt for the agent |

### AgentDeploymentPercentageStrategy

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'percentage'>> | no | `nil` |  |
| `traffic_percentage` | float | **yes** | **required** | Traffic percentage to deploy |

### AgentDeploymentRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `requests` | Array<[AgentDeploymentRequestItem](#agentdeploymentrequestitem)> | **yes** | **required** | List of deployment requests |

### AgentDeploymentRequestItem

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `branch_id` | str | **yes** | **required** | ID of the branch to deploy |
| `deployment_strategy` | [AgentDeploymentPercentageStrategy](#agentdeploymentpercentagestrategy) | **yes** | **required** |  |

### AgentDeploymentResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `traffic_percentage_branch_id_map` | Optional<Hash<str, float>> | no | `nil` | Map of branch IDs to traffic percentages |

### AgentFailureResponseExample

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `response` | str | **yes** | **required** |  |
| `type` | Literal<'failure'> | no | `'failure'` |  |

### AgentMetadata

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** |  |
| `branch_id` | Optional<str> | no | `nil` |  |
| `workflow_node_id` | Optional<str> | no | `nil` |  |
| `version_id` | Optional<str> | no | `nil` |  |

### AgentMetadataResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `created_at_unix_secs` | int | **yes** | **required** | The creation time of the agent in unix seconds |
| `updated_at_unix_secs` | int | **yes** | **required** | The last update time of the agent in unix seconds |

### AgentPlatformSettingsRequestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `evaluation` | Optional<[EvaluationSettingsInput](#evaluationsettingsinput)> | no | `nil` | Settings for evaluation |
| `widget` | Optional<[WidgetConfig](#widgetconfig)> | no | `nil` | Configuration for the widget |
| `data_collection` | Optional<Hash<str, [AnalysisProperty](#analysisproperty)>> | no | `nil` | Data collection settings |
| `data_collection_scopes` | Optional<Hash<str, [AnalysisScope](#analysisscope)>> | no | `nil` | Scope per data collection item ID. Missing keys default to conversation scope. |
| `overrides` | Optional<[ConversationInitiationClientDataConfigInput](#conversationinitiationclientdataconfiginput)> | no | `nil` | Additional overrides for the agent during conversation initiation |
| `workspace_overrides` | Optional<[AgentWorkspaceOverridesInput](#agentworkspaceoverridesinput)> | no | `nil` | Workspace overrides for the agent |
| `testing` | Optional<[AgentTestingSettings](#agenttestingsettings)> | no | `nil` | Testing configuration for the agent |
| `archived` | Optional<bool> | no | `nil` | Whether the agent is archived |
| `guardrails` | Optional<[GuardrailsV1Input](#guardrailsv1input)> | no | `nil` | Guardrails configuration for the agent |
| `summary_language` | Optional<str> | no | `nil` | Language for all conversation analysis outputs (summaries, titles, evaluation rationales, data collection rationales). If not set, the language will be inferred from the conversation. Must be one of the supported conversation languages. |
| `auth` | Optional<[AuthSettings](#authsettings)> | no | `nil` | Settings for authentication |
| `call_limits` | Optional<[AgentCallLimits](#agentcalllimits)> | no | `nil` | Call limits for the agent |
| `privacy` | Optional<[PrivacyConfigInput](#privacyconfiginput)> | no | `nil` | Privacy settings for the agent |
| `analysis_llm` | Optional<[Llm](#llm)> | no | `nil` | Default LLM model for post-call analysis (evaluation and data collection) |

### AgentPlatformSettingsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `evaluation` | Optional<[EvaluationSettingsOutput](#evaluationsettingsoutput)> | no | `nil` | Settings for evaluation |
| `widget` | Optional<[WidgetConfig](#widgetconfig)> | no | `nil` | Configuration for the widget |
| `data_collection` | Optional<Hash<str, [AnalysisProperty](#analysisproperty)>> | no | `nil` | Data collection settings |
| `data_collection_scopes` | Optional<Hash<str, [AnalysisScope](#analysisscope)>> | no | `nil` | Scope per data collection item ID. Missing keys default to conversation scope. |
| `overrides` | Optional<[ConversationInitiationClientDataConfigOutput](#conversationinitiationclientdataconfigoutput)> | no | `nil` | Additional overrides for the agent during conversation initiation |
| `workspace_overrides` | Optional<[AgentWorkspaceOverridesOutput](#agentworkspaceoverridesoutput)> | no | `nil` | Workspace overrides for the agent |
| `testing` | Optional<[AgentTestingSettings](#agenttestingsettings)> | no | `nil` | Testing configuration for the agent |
| `archived` | Optional<bool> | no | `nil` | Whether the agent is archived |
| `guardrails` | Optional<[GuardrailsV1Output](#guardrailsv1output)> | no | `nil` | Guardrails configuration for the agent |
| `summary_language` | Optional<str> | no | `nil` | Language for all conversation analysis outputs (summaries, titles, evaluation rationales, data collection rationales). If not set, the language will be inferred from the conversation. Must be one of the supported conversation languages. |
| `auth` | Optional<[AuthSettings](#authsettings)> | no | `nil` | Settings for authentication |
| `call_limits` | Optional<[AgentCallLimits](#agentcalllimits)> | no | `nil` | Call limits for the agent |
| `privacy` | Optional<[PrivacyConfigOutput](#privacyconfigoutput)> | no | `nil` | Privacy settings for the agent |
| `analysis_llm` | Optional<[Llm](#llm)> | no | `nil` | Default LLM model for post-call analysis (evaluation and data collection) |
| `safety` | Optional<[SafetyResponseModel](#safetyresponsemodel)> | no | `nil` |  |

### AgentSimulatedChatTestResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `simulated_conversation` | Array<[ConversationHistoryTranscriptResponseModel](#conversationhistorytranscriptresponsemodel)> | **yes** | **required** |  |
| `analysis` | [ConversationHistoryAnalysisCommonModel](#conversationhistoryanalysiscommonmodel) | **yes** | **required** |  |

### AgentSuccessfulResponseExample

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `response` | str | **yes** | **required** |  |
| `type` | Literal<'success'> | no | `'success'` |  |

### AgentSummaryBatchSuccessfulResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `data` | [AgentSummaryResponseModel](#agentsummaryresponsemodel) | **yes** | **required** |  |

### AgentSummaryResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** | The ID of the agent |
| `name` | str | **yes** | **required** | The name of the agent |
| `tags` | Array<str> | **yes** | **required** | Agent tags used to categorize the agent |
| `created_at_unix_secs` | int | **yes** | **required** | The creation time of the agent in unix seconds |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** | The access information of the agent |
| `last_call_time_unix_secs` | Optional<int> | no | `nil` | The time of the most recent call in unix seconds, null if no calls have been made |
| `archived` | Optional<bool> | no | `nil` | Whether the agent is archived |

### AgentTestFolderPathSegmentResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | Optional<str> | no | `nil` |  |

### AgentTestingSettings

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `attached_tests` | Optional<Array<[AttachedTestModel](#attachedtestmodel)>> | no | `nil` | List of test IDs that should be run for this agent |

### AgentTopicResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `topic_id` | str | **yes** | **required** |  |
| `label` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `conversation_count` | int | **yes** | **required** |  |

### AgentTransfer

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** |  |
| `condition` | str | **yes** | **required** |  |
| `delay_ms` | Optional<int> | no | `nil` |  |
| `transfer_message` | Optional<str> | no | `nil` |  |
| `enable_transferred_agent_first_message` | Optional<bool> | no | `nil` |  |
| `is_workflow_node_transfer` | Optional<bool> | no | `nil` |  |

### AgentVersionMetadata

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `agent_id` | str | **yes** | **required** |  |
| `branch_id` | str | **yes** | **required** |  |
| `version_description` | str | **yes** | **required** |  |
| `seq_no_in_branch` | int | **yes** | **required** |  |
| `time_committed_secs` | int | **yes** | **required** |  |
| `parents` | [AgentVersionParents](#agentversionparents) | **yes** | **required** |  |
| `access_info` | Optional<[ResourceAccessInfo](#resourceaccessinfo)> | no | `nil` |  |

### AgentVersionParents

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `in_branch_parent_id` | Optional<str> | no | `nil` |  |
| `out_of_branch_parent_id` | Optional<str> | no | `nil` |  |
| `merged_into_branch_id` | Optional<str> | no | `nil` |  |
| `merged_from_branch_id` | Optional<str> | no | `nil` |  |
| `merged_from_version_id` | Optional<str> | no | `nil` |  |

### AgentWorkflowRequestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `edges` | Optional<Hash<str, [WorkflowEdgeModelInput](#workflowedgemodelinput)>> | no | `nil` |  |
| `nodes` | Optional<Hash<str, [AgentWorkflowRequestModelNodesValue](#agentworkflowrequestmodelnodesvalue)>> | no | `nil` |  |
| `prevent_subagent_loops` | Optional<bool> | no | `nil` | Whether to prevent loops in the workflow execution. |

### AgentWorkflowResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `edges` | Hash<str, [WorkflowEdgeModelOutput](#workflowedgemodeloutput)> | **yes** | **required** |  |
| `nodes` | Hash<str, [AgentWorkflowResponseModelNodesValue](#agentworkflowresponsemodelnodesvalue)> | **yes** | **required** |  |
| `prevent_subagent_loops` | bool | **yes** | **required** | Whether to prevent loops in the workflow execution. |

### AgentWorkspaceOverridesInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_initiation_client_data_webhook` | Optional<[ConversationInitiationClientDataWebhook](#conversationinitiationclientdatawebhook)> | no | `nil` | The webhook to send conversation initiation client data to |
| `webhooks` | Optional<[ConvAiWebhooks](#convaiwebhooks)> | no | `nil` |  |

### AgentWorkspaceOverridesOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_initiation_client_data_webhook` | Optional<[ConversationInitiationClientDataWebhook](#conversationinitiationclientdatawebhook)> | no | `nil` | The webhook to send conversation initiation client data to |
| `webhooks` | Optional<[ConvAiWebhooks](#convaiwebhooks)> | no | `nil` |  |

### Alignment

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `char_start_times_ms` | Annotated[Optional<Array<int>>, FieldMetadata(alias='charStartTimesMs')> | no | `nil` | A list of starting times (in milliseconds) for each character in the text as it     corresponds to the audio. For instance, the character 'H' starts at time 0 ms in the audio.     Note these times are relative to the returned chunk from the model, and not the     full audio response. |
| `char_durations_ms` | Annotated[Optional<Array<int>>, FieldMetadata(alias='charDurationsMs')> | no | `nil` | A list of durations (in milliseconds) for each character in the text as it     corresponds to the audio. For instance, the character 'H' lasts for 3 ms in the audio.     Note these times are relative to the returned chunk from the model, and not the     full audio response. |
| `chars` | Optional<Array<str>> | no | `nil` | A list of characters in the text sequence. For instance, the first character is 'H'.     Note that this list may contain spaces, punctuation, and other special characters.     The length of this list should be the same as the lengths of `charStartTimesMs` and `charDurationsMs`. |

### AllowlistItem

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `hostname` | str | **yes** | **required** | The hostname of the allowed origin |

### AnalysisProperty

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | [AnalysisPropertyType](#analysispropertytype) | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` | The description of the property. When set, the LLM will provide the value based on this description. Mutually exclusive with dynamic_variable, is_system_provided, and constant_value. |
| `enum` | Optional<Array<str>> | no | `nil` | List of allowed string values for string type parameters |
| `is_system_provided` | Optional<bool> | no | `nil` | If true, the value will be populated by the system at runtime. Used by API Integration Webhook tools for templating. Mutually exclusive with description, dynamic_variable, and constant_value. |
| `dynamic_variable` | Optional<str> | no | `nil` | The name of the dynamic variable to use for this property's value. Mutually exclusive with description, is_system_provided, and constant_value. |
| `constant_value` | Optional<AnalysisPropertyConstantValue> | no | `nil` | A constant value to use for this property. Mutually exclusive with description, dynamic_variable, and is_system_provided. |
| `llm` | Optional<[Llm](#llm)> | no | `nil` | LLM model to use for this analysis item. If not set, uses agent's analysis_llm default. |

### ApiIntegrationOAuth2AuthCodeResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `token_url` | str | **yes** | **required** |  |
| `scopes` | Optional<Array<str>> | no | `nil` |  |
| `scope_separator` | Optional<[ApiIntegrationOAuth2AuthCodeResponseScopeSeparator](#apiintegrationoauth2authcoderesponsescopeseparator)> | no | `nil` | Separator for scopes |
| `expires_at` | str | **yes** | **required** | ISO 8601 timestamp of when the access token expires |
| `integration_id` | str | **yes** | **required** |  |
| `credential_id` | str | **yes** | **required** |  |
| `status` | Optional<[OAuthConnectionStatus](#oauthconnectionstatus)> | no | `nil` | Current health status of the OAuth connection |
| `status_detail` | Optional<str> | no | `nil` | Human-readable detail about the current status, e.g. the error message on refresh failure |
| `status_updated_at` | Optional<str> | no | `nil` | ISO 8601 timestamp of the last status change |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### ApiIntegrationWebhookOverrides

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `schema_overrides` | Optional<Hash<str, Optional<[ApiIntegrationWebhookOverridesSchemaOverridesValue](#apiintegrationwebhookoverridesschemaoverridesvalue)>>> | no | `nil` |  |
| `request_headers` | Optional<Hash<str, Optional<ApiIntegrationWebhookOverridesRequestHeadersValue>>> | no | `nil` |  |
| `response_filter_mode` | Optional<[ResponseFilterMode](#responsefiltermode)> | no | `nil` |  |
| `response_filters` | Optional<Array<str>> | no | `nil` |  |

### ApiIntegrationWebhookToolConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** | Description of when the tool should be used and what it does. |
| `response_timeout_secs` | Optional<int> | no | `nil` | The maximum time in seconds to wait for the tool call to complete. Must be between 5 and 120 seconds (inclusive). |
| `disable_interruptions` | Optional<bool> | no | `nil` | If true, the user will not be able to interrupt the agent while this tool is running. |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` | If true, the agent will speak before the tool call. |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` | Configuration for extracting values from tool responses and assigning them to dynamic variables |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` | Predefined tool call sound type to play during tool execution. If not specified, no tool call sound will be played. |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` | Determines when the tool call sound should play. 'auto' only plays when there's pre-tool speech, 'always' plays for every tool call. |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` | Controls how tool errors are processed before being shared with the agent. 'auto' determines handling based on tool type (summarized for native integrations, hide for others), 'summarized' sends an LLM-generated summary, 'passthrough' sends the raw error, 'hide' does not share the error with the agent. |
| `dynamic_variables` | Optional<[DynamicVariablesConfigInput](#dynamicvariablesconfiginput)> | no | `nil` | Configuration for dynamic variables |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` | Determines when and how the tool executes: 'immediate' executes the tool right away when requested by the LLM, 'post_tool_speech' waits for the agent to finish speaking before executing, 'async' runs the tool in the background without blocking - best for long-running operations. |
| `tool_version` | Optional<str> | no | `nil` | The version of the API integration tool |
| `api_integration_id` | str | **yes** | **required** |  |
| `api_integration_connection_id` | str | **yes** | **required** |  |
| `api_schema_overrides` | Optional<[ApiIntegrationWebhookOverrides](#apiintegrationwebhookoverrides)> | no | `nil` | User overrides applied on top of the base api_schema |

### ApiIntegrationWebhookToolConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** | Description of when the tool should be used and what it does. |
| `response_timeout_secs` | int | **yes** | **required** | The maximum time in seconds to wait for the tool call to complete. Must be between 5 and 120 seconds (inclusive). |
| `disable_interruptions` | bool | **yes** | **required** | If true, the user will not be able to interrupt the agent while this tool is running. |
| `force_pre_tool_speech` | bool | **yes** | **required** | If true, the agent will speak before the tool call. |
| `assignments` | Array<[DynamicVariableAssignment](#dynamicvariableassignment)> | **yes** | **required** | Configuration for extracting values from tool responses and assigning them to dynamic variables |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` | Predefined tool call sound type to play during tool execution. If not specified, no tool call sound will be played. |
| `tool_call_sound_behavior` | [ToolCallSoundBehavior](#toolcallsoundbehavior) | **yes** | **required** | Determines when the tool call sound should play. 'auto' only plays when there's pre-tool speech, 'always' plays for every tool call. |
| `tool_error_handling_mode` | [ToolErrorHandlingMode](#toolerrorhandlingmode) | **yes** | **required** | Controls how tool errors are processed before being shared with the agent. 'auto' determines handling based on tool type (summarized for native integrations, hide for others), 'summarized' sends an LLM-generated summary, 'passthrough' sends the raw error, 'hide' does not share the error with the agent. |
| `dynamic_variables` | [DynamicVariablesConfigOutput](#dynamicvariablesconfigoutput) | **yes** | **required** | Configuration for dynamic variables |
| `execution_mode` | [ToolExecutionMode](#toolexecutionmode) | **yes** | **required** | Determines when and how the tool executes: 'immediate' executes the tool right away when requested by the LLM, 'post_tool_speech' waits for the agent to finish speaking before executing, 'async' runs the tool in the background without blocking - best for long-running operations. |
| `tool_version` | str | **yes** | **required** | The version of the API integration tool |
| `api_integration_id` | str | **yes** | **required** |  |
| `api_integration_connection_id` | str | **yes** | **required** |  |
| `api_schema_overrides` | Optional<[ApiIntegrationWebhookOverrides](#apiintegrationwebhookoverrides)> | no | `nil` | User overrides applied on top of the base api_schema |

### ArrayJsonSchemaPropertyInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'array'>> | no | `nil` |  |
| `description` | Optional<str> | no | `nil` |  |
| `items` | Optional<'ArrayJsonSchemaPropertyInputItems'> | no | `nil` | Schema for array elements. |
| `dynamic_variable` | Optional<str> | no | `nil` | When set, the entire array is populated from this dynamic variable at runtime. Mutually exclusive with description (LLM-provided array) and constant_value. |
| `constant_value` | Optional<Array<ArrayJsonSchemaPropertyInputConstantValueItem>> | no | `nil` | When set, the entire array uses this constant value at runtime. Mutually exclusive with description (LLM-provided array) and dynamic_variable. |

### ArrayJsonSchemaPropertyOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'array'>> | no | `nil` |  |
| `description` | Optional<str> | no | `nil` |  |
| `items` | Optional<'ArrayJsonSchemaPropertyOutputItems'> | no | `nil` | Schema for array elements. |
| `dynamic_variable` | Optional<str> | no | `nil` | When set, the entire array is populated from this dynamic variable at runtime. Mutually exclusive with description (LLM-provided array) and constant_value. |
| `constant_value` | Optional<Array<ArrayJsonSchemaPropertyOutputConstantValueItem>> | no | `nil` | When set, the entire array uses this constant value at runtime. Mutually exclusive with description (LLM-provided array) and dynamic_variable. |

### AsrConversationalConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `quality` | Optional<AsrQuality> | no | `nil` | The quality of the transcription |
| `provider` | Optional<[AsrProvider](#asrprovider)> | no | `nil` | The provider of the transcription service |
| `user_input_audio_format` | Optional<[AsrInputFormat](#asrinputformat)> | no | `nil` | The format of the audio to be transcribed |
| `keywords` | Optional<Array<str>> | no | `nil` | Keywords to boost prediction probability for |

### AsrConversationalConfigWorkflowOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `quality` | Optional<AsrQuality> | no | `nil` | The quality of the transcription |
| `provider` | Optional<[AsrProvider](#asrprovider)> | no | `nil` | The provider of the transcription service |
| `user_input_audio_format` | Optional<[AsrInputFormat](#asrinputformat)> | no | `nil` | The format of the audio to be transcribed |
| `keywords` | Optional<Array<str>> | no | `nil` | Keywords to boost prediction probability for |

### AstAdditionOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Right operand of the binary operator. |

### AstAdditionOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Right operand of the binary operator. |

### AstAndOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `children` | Array<'[AstNodeInput](#astnodeinput)'> | **yes** | **required** | Child nodes of the logical operator. |

### AstAndOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `children` | Array<'[AstNodeOutput](#astnodeoutput)'> | **yes** | **required** | Child nodes of the logical operator. |

### AstBooleanNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | bool | **yes** | **required** | Value of this literal. |

### AstBooleanNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | bool | **yes** | **required** | Value of this literal. |

### AstConditionalOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `condition` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Condition deciding which expression should be selected. |
| `true_expression` | Annotated['[AstNodeInput](#astnodeinput)', FieldMetadata(alias='trueExpression')> | **yes** | **required** | Expression selected if the condition is true. |
| `false_expression` | Annotated['[AstNodeInput](#astnodeinput)', FieldMetadata(alias='falseExpression')> | **yes** | **required** | Expression selected if the condition is false. |

### AstConditionalOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `condition` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Condition deciding which expression should be selected. |
| `true_expression` | Annotated['[AstNodeOutput](#astnodeoutput)', FieldMetadata(alias='trueExpression')> | **yes** | **required** | Expression selected if the condition is true. |
| `false_expression` | Annotated['[AstNodeOutput](#astnodeoutput)', FieldMetadata(alias='falseExpression')> | **yes** | **required** | Expression selected if the condition is false. |

### AstDivisionOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Right operand of the binary operator. |

### AstDivisionOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Right operand of the binary operator. |

### AstDynamicVariableNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** | The name of the dynamic variable. |

### AstDynamicVariableNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** | The name of the dynamic variable. |

### AstEqualsOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Right operand of the binary operator. |

### AstEqualsOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Right operand of the binary operator. |

### AstGreaterThanOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Right operand of the binary operator. |

### AstGreaterThanOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Right operand of the binary operator. |

### AstGreaterThanOrEqualsOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Right operand of the binary operator. |

### AstGreaterThanOrEqualsOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Right operand of the binary operator. |

### AstLessThanOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Right operand of the binary operator. |

### AstLessThanOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Right operand of the binary operator. |

### AstLessThanOrEqualsOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Right operand of the binary operator. |

### AstLessThanOrEqualsOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Right operand of the binary operator. |

### AstMultiplicationOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Right operand of the binary operator. |

### AstMultiplicationOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Right operand of the binary operator. |

### AstNotEqualsOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Right operand of the binary operator. |

### AstNotEqualsOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Right operand of the binary operator. |

### AstNullNodeInput

_(no fields)_

### AstNullNodeOutput

_(no fields)_

### AstNumberNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | float | **yes** | **required** | Value of this literal. |

### AstNumberNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | float | **yes** | **required** | Value of this literal. |

### AstOrOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `children` | Array<'[AstNodeInput](#astnodeinput)'> | **yes** | **required** | Child nodes of the logical operator. |

### AstOrOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `children` | Array<'[AstNodeOutput](#astnodeoutput)'> | **yes** | **required** | Child nodes of the logical operator. |

### AstStringNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | str | **yes** | **required** | Value of this literal. |

### AstStringNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | str | **yes** | **required** | Value of this literal. |

### AstSubtractionOperatorNodeInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Right operand of the binary operator. |

### AstSubtractionOperatorNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Left operand of the binary operator. |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Right operand of the binary operator. |

### AstllmNodeInputPrompt

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'llm'>> | no | `nil` |  |
| `prompt` | str | **yes** | **required** | The prompt to evaluate to a boolean value. Deprecated. Use a boolean schema instead. |

### AstllmNodeInputValueSchema

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'llm'>> | no | `nil` |  |
| `value_schema` | [LlmLiteralJsonSchemaProperty](#llmliteraljsonschemaproperty) | **yes** | **required** | JSON schema describing the value that the LLM should extract. |

### AstllmNodeOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value_schema` | [LlmLiteralJsonSchemaProperty](#llmliteraljsonschemaproperty) | **yes** | **required** | JSON schema describing the value that the LLM should extract. |
| `prompt` | str | **yes** | **required** | The prompt to evaluate to a boolean value. Deprecated. Use a boolean schema instead. |

### AsyncConversationMetadata

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `delivery_status` | [AsyncConversationMetadataDeliveryStatus](#asyncconversationmetadatadeliverystatus) | **yes** | **required** |  |
| `delivery_timestamp` | int | **yes** | **required** |  |
| `delivery_error` | Optional<str> | no | `nil` |  |
| `external_system` | str | **yes** | **required** |  |
| `external_id` | str | **yes** | **required** |  |
| `external_link` | Optional<str> | no | `nil` |  |
| `retry_count` | Optional<int> | no | `nil` |  |
| `last_retry_timestamp` | Optional<int> | no | `nil` |  |
| `last_processed_external_message_id` | Optional<str> | no | `nil` |  |

### AttachedTestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `test_id` | str | **yes** | **required** |  |
| `workflow_node_id` | Optional<str> | no | `nil` |  |

### AudioAnalysis

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | [AudioAnalysisStatus](#audioanalysisstatus) | **yes** | **required** |  |
| `data` | Optional<[AudioAnalysisResult](#audioanalysisresult)> | no | `nil` |  |
| `updated_at_ms` | Optional<int> | no | `nil` |  |

### AudioAnalysisResult

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `title` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `content_type` | Optional<str> | no | `nil` |  |
| `overall_pacing` | Optional<str> | no | `nil` |  |
| `segments` | Optional<Array<[AudioSegment](#audiosegment)>> | no | `nil` |  |
| `key_moments` | Optional<Array<[AudioKeyMoment](#audiokeymoment)>> | no | `nil` |  |

### AudioKeyMoment

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `timestamp_ms` | int | **yes** | **required** |  |
| `type` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |

### AudioNativeCreateProjectResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `project_id` | str | **yes** | **required** | The ID of the created Audio Native project. |
| `converting` | bool | **yes** | **required** | Whether the project is currently being converted. |
| `html_snippet` | str | **yes** | **required** | The HTML snippet to embed the Audio Native player. |

### AudioNativeEditContentResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `project_id` | str | **yes** | **required** | The ID of the project. |
| `converting` | bool | **yes** | **required** | Whether the project is currently being converted. |
| `publishing` | bool | **yes** | **required** | Whether the project is currently being published. |
| `html_snippet` | str | **yes** | **required** | The HTML snippet to embed the Audio Native player. |

### AudioNativeProjectSettingsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `title` | str | **yes** | **required** | The title of the project. |
| `image` | str | **yes** | **required** | The image of the project. |
| `author` | str | **yes** | **required** | The author of the project. |
| `small` | bool | **yes** | **required** | Whether the project is small. |
| `text_color` | str | **yes** | **required** | The text color of the project. |
| `background_color` | str | **yes** | **required** | The background color of the project. |
| `sessionization` | int | **yes** | **required** | The sessionization of the project. Specifies for how many minutes to persist the session across page reloads. |
| `audio_path` | Optional<str> | no | `nil` | The path of the audio file. |
| `audio_url` | Optional<str> | no | `nil` | The URL of the audio file. |
| `status` | Optional<[AudioNativeProjectSettingsResponseModelStatus](#audionativeprojectsettingsresponsemodelstatus)> | no | `nil` | Current state of the project |

### AudioOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `audio` | str | **yes** | **required** | A generated partial audio chunk, encoded using the selected output_format, by default this     is MP3 encoded as a base64 string. |
| `normalized_alignment` | Annotated[Optional<[NormalizedAlignment](#normalizedalignment)>, FieldMetadata(alias='normalized[Alignment](#alignment)')> | no | `nil` |  |
| `alignment` | Optional<[Alignment](#alignment)> | no | `nil` |  |

### AudioOutputMulti

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `audio` | str | **yes** | **required** | Base64 encoded audio chunk. |
| `normalized_alignment` | Annotated[Optional<[NormalizedAlignment](#normalizedalignment)>, FieldMetadata(alias='normalized[Alignment](#alignment)')> | no | `nil` |  |
| `alignment` | Optional<[Alignment](#alignment)> | no | `nil` |  |
| `context_id` | Annotated[Optional<str>, FieldMetadata(alias='contextId')> | no | `nil` | The contextId for which this audio is. |

### AudioSegment

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `start_ms` | int | **yes** | **required** |  |
| `end_ms` | int | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `segment_type` | Optional<str> | no | `nil` |  |
| `has_speech` | Optional<bool> | no | `nil` |  |
| `has_music` | Optional<bool> | no | `nil` |  |
| `pacing` | Optional<str> | no | `nil` |  |

### AudioWithTimestampsAndVoiceSegmentsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `audio_base_64` | Annotated[str, FieldMetadata(alias='audio_base64')> | **yes** | **required** | Base64 encoded audio data |
| `alignment` | Optional<[CharacterAlignmentResponseModel](#characteralignmentresponsemodel)> | no | `nil` | Timestamp information for each character in the original text |
| `normalized_alignment` | Optional<[CharacterAlignmentResponseModel](#characteralignmentresponsemodel)> | no | `nil` | Timestamp information for each character in the normalized text |
| `voice_segments` | Array<[VoiceSegment](#voicesegment)> | **yes** | **required** | Voice segments for the audio |

### AudioWithTimestampsResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `audio_base_64` | Annotated[str, FieldMetadata(alias='audio_base64')> | **yes** | **required** | Base64 encoded audio data |
| `alignment` | Optional<[CharacterAlignmentResponseModel](#characteralignmentresponsemodel)> | no | `nil` | Timestamp information for each character in the original text |
| `normalized_alignment` | Optional<[CharacterAlignmentResponseModel](#characteralignmentresponsemodel)> | no | `nil` | Timestamp information for each character in the normalized text |

### AuthConnectionDependencies

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tools` | Optional<Array<[AuthConnectionDependenciesToolsItem](#authconnectiondependenciestoolsitem)>> | no | `nil` |  |
| `mcp_servers` | Optional<Array<[AuthConnectionDependenciesMcpServersItem](#authconnectiondependenciesmcpserversitem)>> | no | `nil` |  |
| `integration_connections` | Optional<Array<[DependentIntegrationConnectionIdentifier](#dependentintegrationconnectionidentifier)>> | no | `nil` |  |

### AuthConnectionLocator

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_connection_id` | str | **yes** | **required** |  |

### AuthSettings

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enable_auth` | Optional<bool> | no | `nil` | If set to true, starting a conversation with an agent will require a signed token |
| `allowlist` | Optional<Array<[AllowlistItem](#allowlistitem)>> | no | `nil` | A list of hosts that are allowed to start conversations with the agent |
| `require_origin_header` | Optional<bool> | no | `nil` | When enabled, connections with no origin header will be rejected. If the allowlist is empty, this option has no effect. |
| `shareable_token` | Optional<str> | no | `nil` | A shareable token that can be used to start a conversation with the agent |

### AutoSyncInfo

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `minimum_frequency_days` | Optional<int> | no | `nil` | Maximum number of days between automatic syncs |
| `auto_remove` | Optional<bool> | no | `nil` | Whether to remove the document if the URL becomes unavailable |
| `consec_failures` | Optional<int> | no | `nil` | Number of consecutive sync failures |
| `next_refresh_by` | Optional<int> | no | `nil` | Unix timestamp for the next scheduled sync or None (in case of folders) |

### BackupLlmDefault

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `preference` | Optional<Literal<'default'>> | no | `nil` |  |

### BackupLlmDisabled

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `preference` | Optional<Literal<'disabled'>> | no | `nil` |  |

### BackupLlmOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `preference` | Optional<Literal<'override'>> | no | `nil` |  |
| `order` | Array<[Llm](#llm)> | **yes** | **required** |  |

### BadRequestErrorBody

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `error` | Optional<str> | no | `nil` |  |
| `message` | Optional<str> | no | `nil` |  |

### BasicAuthResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `username` | str | **yes** | **required** |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### BatchCallDetailedResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `phone_number_id` | Optional<str> | no | `nil` |  |
| `phone_provider` | Optional<[TelephonyProvider](#telephonyprovider)> | no | `nil` |  |
| `whatsapp_params` | Optional<[BatchCallWhatsAppParams](#batchcallwhatsappparams)> | no | `nil` |  |
| `name` | str | **yes** | **required** |  |
| `agent_id` | str | **yes** | **required** |  |
| `branch_id` | Optional<str> | no | `nil` |  |
| `environment` | Optional<str> | no | `nil` |  |
| `created_at_unix` | int | **yes** | **required** |  |
| `scheduled_time_unix` | int | **yes** | **required** |  |
| `timezone` | Optional<str> | no | `nil` |  |
| `total_calls_dispatched` | int | **yes** | **required** |  |
| `total_calls_scheduled` | int | **yes** | **required** |  |
| `total_calls_finished` | int | **yes** | **required** |  |
| `last_updated_at_unix` | int | **yes** | **required** |  |
| `status` | [BatchCallStatus](#batchcallstatus) | **yes** | **required** |  |
| `retry_count` | int | **yes** | **required** |  |
| `telephony_call_config` | [TelephonyCallConfig](#telephonycallconfig) | **yes** | **required** |  |
| `target_concurrency_limit` | Optional<int> | no | `nil` | Maximum number of simultaneous calls for this batch. When set, dispatch is governed by this limit rather than workspace/agent capacity percentages. |
| `agent_name` | str | **yes** | **required** |  |
| `branch_name` | Optional<str> | no | `nil` |  |
| `recipients` | Array<[OutboundCallRecipientResponseModel](#outboundcallrecipientresponsemodel)> | **yes** | **required** |  |

### BatchCallResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `phone_number_id` | Optional<str> | no | `nil` |  |
| `phone_provider` | Optional<[TelephonyProvider](#telephonyprovider)> | no | `nil` |  |
| `whatsapp_params` | Optional<[BatchCallWhatsAppParams](#batchcallwhatsappparams)> | no | `nil` |  |
| `name` | str | **yes** | **required** |  |
| `agent_id` | str | **yes** | **required** |  |
| `branch_id` | Optional<str> | no | `nil` |  |
| `environment` | Optional<str> | no | `nil` |  |
| `created_at_unix` | int | **yes** | **required** |  |
| `scheduled_time_unix` | int | **yes** | **required** |  |
| `timezone` | Optional<str> | no | `nil` |  |
| `total_calls_dispatched` | int | **yes** | **required** |  |
| `total_calls_scheduled` | int | **yes** | **required** |  |
| `total_calls_finished` | int | **yes** | **required** |  |
| `last_updated_at_unix` | int | **yes** | **required** |  |
| `status` | [BatchCallStatus](#batchcallstatus) | **yes** | **required** |  |
| `retry_count` | int | **yes** | **required** |  |
| `telephony_call_config` | [TelephonyCallConfig](#telephonycallconfig) | **yes** | **required** |  |
| `target_concurrency_limit` | Optional<int> | no | `nil` | Maximum number of simultaneous calls for this batch. When set, dispatch is governed by this limit rather than workspace/agent capacity percentages. |
| `agent_name` | str | **yes** | **required** |  |
| `branch_name` | Optional<str> | no | `nil` |  |

### BatchCallWhatsAppParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `whatsapp_phone_number_id` | Optional<str> | no | `nil` |  |
| `whatsapp_call_permission_request_template_name` | str | **yes** | **required** |  |
| `whatsapp_call_permission_request_template_language_code` | str | **yes** | **required** |  |

### BatchFailureResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `error_code` | int | **yes** | **required** |  |
| `error_status` | str | **yes** | **required** |  |
| `error_message` | str | **yes** | **required** |  |

### BearerAuthResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### BuiltInToolsInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `end_call` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The end call tool |
| `language_detection` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The language detection tool |
| `transfer_to_agent` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The transfer to agent tool |
| `transfer_to_number` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The transfer to number tool |
| `skip_turn` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The skip turn tool |
| `play_keypad_touch_tone` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The play DTMF tool |
| `voicemail_detection` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The voicemail detection tool |

### BuiltInToolsOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `end_call` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The end call tool |
| `language_detection` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The language detection tool |
| `transfer_to_agent` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The transfer to agent tool |
| `transfer_to_number` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The transfer to number tool |
| `skip_turn` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The skip turn tool |
| `play_keypad_touch_tone` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The play DTMF tool |
| `voicemail_detection` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The voicemail detection tool |

### BuiltInToolsWorkflowOverrideInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `end_call` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The end call tool |
| `language_detection` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The language detection tool |
| `transfer_to_agent` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The transfer to agent tool |
| `transfer_to_number` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The transfer to number tool |
| `skip_turn` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The skip turn tool |
| `play_keypad_touch_tone` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The play DTMF tool |
| `voicemail_detection` | Optional<[SystemToolConfigInput](#systemtoolconfiginput)> | no | `nil` | The voicemail detection tool |

### BuiltInToolsWorkflowOverrideOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `end_call` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The end call tool |
| `language_detection` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The language detection tool |
| `transfer_to_agent` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The transfer to agent tool |
| `transfer_to_number` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The transfer to number tool |
| `skip_turn` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The skip turn tool |
| `play_keypad_touch_tone` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The play DTMF tool |
| `voicemail_detection` | Optional<[SystemToolConfigOutput](#systemtoolconfigoutput)> | no | `nil` | The voicemail detection tool |

### CanvasPlacement

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `x_relative` | Optional<float> | no | `nil` |  |
| `y_relative` | Optional<float> | no | `nil` |  |
| `scale_x` | Optional<float> | no | `nil` |  |
| `scale_y` | Optional<float> | no | `nil` |  |
| `pivot_x` | Optional<float> | no | `nil` |  |
| `pivot_y` | Optional<float> | no | `nil` |  |
| `skew_x` | Optional<float> | no | `nil` |  |
| `skew_y` | Optional<float> | no | `nil` |  |
| `crop_top` | Optional<float> | no | `nil` |  |
| `crop_right` | Optional<float> | no | `nil` |  |
| `crop_bottom` | Optional<float> | no | `nil` |  |
| `crop_left` | Optional<float> | no | `nil` |  |
| `flip_x` | Optional<bool> | no | `nil` |  |
| `flip_y` | Optional<bool> | no | `nil` |  |

### CaptionStyleCharacterAnimationModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enter_type` | [CaptionStyleCharacterAnimationModelEnterType](#captionstylecharacteranimationmodelentertype) | **yes** | **required** |  |
| `exit_type` | [CaptionStyleCharacterAnimationModelExitType](#captionstylecharacteranimationmodelexittype) | **yes** | **required** |  |

### CaptionStyleHorizontalPlacementModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `align` | [CaptionStyleHorizontalPlacementModelAlign](#captionstylehorizontalplacementmodelalign) | **yes** | **required** |  |
| `translate_pct` | float | **yes** | **required** |  |

### CaptionStyleModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `template` | Optional<[CaptionStyleTemplateModel](#captionstyletemplatemodel)> | no | `nil` |  |
| `text_font` | Optional<str> | no | `nil` |  |
| `text_scale` | Optional<float> | no | `nil` |  |
| `text_color` | Optional<str> | no | `nil` |  |
| `text_align` | Optional<[CaptionStyleModelTextAlign](#captionstylemodeltextalign)> | no | `nil` |  |
| `text_style` | Optional<[CaptionStyleModelTextStyle](#captionstylemodeltextstyle)> | no | `nil` |  |
| `text_weight` | Optional<[CaptionStyleModelTextWeight](#captionstylemodeltextweight)> | no | `nil` |  |
| `text_transform` | Optional<[CaptionStyleModelTextTransform](#captionstylemodeltexttransform)> | no | `nil` |  |
| `text_blend_mode` | Optional<[CaptionStyleModelTextBlendMode](#captionstylemodeltextblendmode)> | no | `nil` |  |
| `text_shadow` | Optional<[StudioTextStyleShadowModel](#studiotextstyleshadowmodel)> | no | `nil` |  |
| `text_outline` | Optional<[StudioTextStyleOutlineModel](#studiotextstyleoutlinemodel)> | no | `nil` |  |
| `background_enabled` | Optional<bool> | no | `nil` |  |
| `background_color` | Optional<str> | no | `nil` |  |
| `background_opacity` | Optional<float> | no | `nil` |  |
| `word_highlights_enabled` | Optional<bool> | no | `nil` |  |
| `word_highlights_color` | Optional<str> | no | `nil` |  |
| `word_highlights_background_color` | Optional<str> | no | `nil` |  |
| `word_highlights_opacity` | Optional<float> | no | `nil` |  |
| `section_animation` | Optional<[CaptionStyleSectionAnimationModel](#captionstylesectionanimationmodel)> | no | `nil` |  |
| `word_animation` | Optional<[CaptionStyleWordAnimationModel](#captionstylewordanimationmodel)> | no | `nil` |  |
| `character_animation` | Optional<[CaptionStyleCharacterAnimationModel](#captionstylecharacteranimationmodel)> | no | `nil` |  |
| `width_pct` | Optional<float> | no | `nil` |  |
| `horizontal_placement` | Optional<[CaptionStyleHorizontalPlacementModel](#captionstylehorizontalplacementmodel)> | no | `nil` |  |
| `vertical_placement` | Optional<[CaptionStyleVerticalPlacementModel](#captionstyleverticalplacementmodel)> | no | `nil` |  |
| `auto_break_enabled` | Optional<bool> | no | `nil` |  |
| `max_lines_per_section` | Optional<int> | no | `nil` |  |
| `max_words_per_line` | Optional<int> | no | `nil` |  |

### CaptionStyleSectionAnimationModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enter_type` | [CaptionStyleSectionAnimationModelEnterType](#captionstylesectionanimationmodelentertype) | **yes** | **required** |  |
| `exit_type` | [CaptionStyleSectionAnimationModelExitType](#captionstylesectionanimationmodelexittype) | **yes** | **required** |  |

### CaptionStyleTemplateModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `key` | str | **yes** | **required** |  |
| `label` | str | **yes** | **required** |  |
| `requires_high_fps` | Optional<bool> | no | `nil` |  |

### CaptionStyleVerticalPlacementModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `align` | [CaptionStyleVerticalPlacementModelAlign](#captionstyleverticalplacementmodelalign) | **yes** | **required** |  |
| `translate_pct` | float | **yes** | **required** |  |

### CaptionStyleWordAnimationModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enter_type` | [CaptionStyleWordAnimationModelEnterType](#captionstylewordanimationmodelentertype) | **yes** | **required** |  |
| `exit_type` | [CaptionStyleWordAnimationModelExitType](#captionstylewordanimationmodelexittype) | **yes** | **required** |  |

### ChapterContentBlockExtendableNodeResponseModel

_(no fields)_

### ChapterContentBlockInputModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `sub_type` | Optional<[ChapterContentBlockInputModelSubType](#chaptercontentblockinputmodelsubtype)> | no | `nil` |  |
| `nodes` | Array<[ChapterContentParagraphTtsNodeInputModel](#chaptercontentparagraphttsnodeinputmodel)> | **yes** | **required** |  |
| `block_id` | Optional<str> | no | `nil` |  |

### ChapterContentBlockResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `block_id` | str | **yes** | **required** |  |
| `nodes` | Array<[ChapterContentBlockResponseModelNodesItem](#chaptercontentblockresponsemodelnodesitem)> | **yes** | **required** |  |

### ChapterContentBlockTtsNodeResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voice_id` | str | **yes** | **required** |  |
| `text` | str | **yes** | **required** |  |

### ChapterContentInputModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `blocks` | Array<[ChapterContentBlockInputModel](#chaptercontentblockinputmodel)> | **yes** | **required** |  |

### ChapterContentParagraphTtsNodeInputModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'tts_node'> | no | `'tts_node'` |  |
| `text` | str | **yes** | **required** |  |
| `voice_id` | str | **yes** | **required** |  |

### ChapterContentResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `blocks` | Array<[ChapterContentBlockResponseModel](#chaptercontentblockresponsemodel)> | **yes** | **required** |  |

### ChapterResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `chapter_id` | str | **yes** | **required** | The ID of the chapter. |
| `name` | str | **yes** | **required** | The name of the chapter. |
| `last_conversion_date_unix` | Optional<int> | no | `nil` | The last conversion date of the chapter. |
| `conversion_progress` | Optional<float> | no | `nil` | The conversion progress of the chapter. |
| `can_be_downloaded` | bool | **yes** | **required** | Whether the chapter can be downloaded. |
| `state` | [ChapterState](#chapterstate) | **yes** | **required** | The state of the chapter. |
| `has_video` | Optional<bool> | no | `nil` | Whether the chapter has a video. |
| `has_visual_content` | Optional<bool> | no | `nil` | Whether the chapter has any visual content (video, image, or text clips). |
| `voice_ids` | Optional<Array<str>> | no | `nil` | List of voice ids used by the chapter |
| `statistics` | Optional<[ChapterStatisticsResponse](#chapterstatisticsresponse)> | no | `nil` | The statistics of the chapter. |
| `last_conversion_error` | Optional<str> | no | `nil` | The last conversion error of the chapter. |

### ChapterSnapshotExtendedResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `chapter_snapshot_id` | str | **yes** | **required** | The ID of the chapter snapshot. |
| `project_id` | str | **yes** | **required** | The ID of the project. |
| `chapter_id` | str | **yes** | **required** | The ID of the chapter. |
| `created_at_unix` | int | **yes** | **required** | The creation date of the chapter snapshot. |
| `name` | str | **yes** | **required** | The name of the chapter snapshot. |
| `character_alignments` | Array<[CharacterAlignmentModel](#characteralignmentmodel)> | **yes** | **required** |  |

### ChapterSnapshotResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `chapter_snapshot_id` | str | **yes** | **required** | The ID of the chapter snapshot. |
| `project_id` | str | **yes** | **required** | The ID of the project. |
| `chapter_id` | str | **yes** | **required** | The ID of the chapter. |
| `created_at_unix` | int | **yes** | **required** | The creation date of the chapter snapshot. |
| `name` | str | **yes** | **required** | The name of the chapter snapshot. |

### ChapterSnapshotsResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `snapshots` | Array<[ChapterSnapshotResponse](#chaptersnapshotresponse)> | **yes** | **required** | List of chapter snapshots. |

### ChapterStatisticsResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `characters_unconverted` | int | **yes** | **required** | The number of unconverted characters. |
| `characters_converted` | int | **yes** | **required** | The number of converted characters. |
| `paragraphs_converted` | int | **yes** | **required** | The number of converted paragraphs. |
| `paragraphs_unconverted` | int | **yes** | **required** | The number of unconverted paragraphs. |
| `voice_statistics` | Optional<Array<[VoiceStatisticsResponseModel](#voicestatisticsresponsemodel)>> | no | `nil` | Per-voice breakdown of character counts. |

### ChapterWithContentResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `chapter_id` | str | **yes** | **required** | The ID of the chapter. |
| `name` | str | **yes** | **required** | The name of the chapter. |
| `last_conversion_date_unix` | Optional<int> | no | `nil` | The last conversion date of the chapter. |
| `conversion_progress` | Optional<float> | no | `nil` | The conversion progress of the chapter. |
| `can_be_downloaded` | bool | **yes** | **required** | Whether the chapter can be downloaded. |
| `state` | [ChapterWithContentResponseModelState](#chapterwithcontentresponsemodelstate) | **yes** | **required** | The state of the chapter. |
| `has_video` | Optional<bool> | no | `nil` | Whether the chapter has a video. |
| `has_visual_content` | Optional<bool> | no | `nil` | Whether the chapter has any visual content (video, image, or text clips). |
| `voice_ids` | Optional<Array<str>> | no | `nil` | List of voice ids used by the chapter |
| `statistics` | Optional<[ChapterStatisticsResponse](#chapterstatisticsresponse)> | no | `nil` | The statistics of the chapter. |
| `last_conversion_error` | Optional<str> | no | `nil` | The last conversion error of the chapter. |
| `content` | [ChapterContentResponseModel](#chaptercontentresponsemodel) | **yes** | **required** |  |

### CharacterAlignmentModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `characters` | Array<str> | **yes** | **required** |  |
| `character_start_times_seconds` | Array<float> | **yes** | **required** |  |
| `character_end_times_seconds` | Array<float> | **yes** | **required** |  |

### CharacterAlignmentResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `characters` | Array<str> | **yes** | **required** |  |
| `character_start_times_seconds` | Array<float> | **yes** | **required** |  |
| `character_end_times_seconds` | Array<float> | **yes** | **required** |  |

### CheckRentalAvailabilityParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'check_rental_availability'>> | no | `nil` |  |

### CheckServiceAvailabilityParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'check_service_availability'>> | no | `nil` |  |

### ClientToolConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** | Description of when the tool should be used and what it does. |
| `response_timeout_secs` | Optional<int> | no | `nil` | The maximum time in seconds to wait for the tool call to complete. Must be between 1 and 120 seconds (inclusive). |
| `disable_interruptions` | Optional<bool> | no | `nil` | If true, the user will not be able to interrupt the agent while this tool is running. |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` | If true, the agent will speak before the tool call. |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` | Configuration for extracting values from tool responses and assigning them to dynamic variables |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` | Predefined tool call sound type to play during tool execution. If not specified, no tool call sound will be played. |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` | Determines when the tool call sound should play. 'auto' only plays when there's pre-tool speech, 'always' plays for every tool call. |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` | Controls how tool errors are processed before being shared with the agent. 'auto' determines handling based on tool type (summarized for native integrations, hide for others), 'summarized' sends an LLM-generated summary, 'passthrough' sends the raw error, 'hide' does not share the error with the agent. |
| `parameters` | Optional<'[ObjectJsonSchemaPropertyInput](#objectjsonschemapropertyinput)'> | no | `nil` | Schema for any parameters to pass to the client |
| `expects_response` | Optional<bool> | no | `nil` | If true, calling this tool should block the conversation until the client responds with some response which is passed to the llm. If false then we will continue the conversation without waiting for the client to respond, this is useful to show content to a user but not block the conversation |
| `dynamic_variables` | Optional<[DynamicVariablesConfigInput](#dynamicvariablesconfiginput)> | no | `nil` | Configuration for dynamic variables |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` | Determines when and how the tool executes: 'immediate' executes the tool right away when requested by the LLM, 'post_tool_speech' waits for the agent to finish speaking before executing, 'async' runs the tool in the background without blocking - best for long-running operations. |

### ClientToolConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** | Description of when the tool should be used and what it does. |
| `response_timeout_secs` | Optional<int> | no | `nil` | The maximum time in seconds to wait for the tool call to complete. Must be between 1 and 120 seconds (inclusive). |
| `disable_interruptions` | Optional<bool> | no | `nil` | If true, the user will not be able to interrupt the agent while this tool is running. |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` | If true, the agent will speak before the tool call. |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` | Configuration for extracting values from tool responses and assigning them to dynamic variables |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` | Predefined tool call sound type to play during tool execution. If not specified, no tool call sound will be played. |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` | Determines when the tool call sound should play. 'auto' only plays when there's pre-tool speech, 'always' plays for every tool call. |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` | Controls how tool errors are processed before being shared with the agent. 'auto' determines handling based on tool type (summarized for native integrations, hide for others), 'summarized' sends an LLM-generated summary, 'passthrough' sends the raw error, 'hide' does not share the error with the agent. |
| `parameters` | Optional<'[ObjectJsonSchemaPropertyOutput](#objectjsonschemapropertyoutput)'> | no | `nil` | Schema for any parameters to pass to the client |
| `expects_response` | Optional<bool> | no | `nil` | If true, calling this tool should block the conversation until the client responds with some response which is passed to the llm. If false then we will continue the conversation without waiting for the client to respond, this is useful to show content to a user but not block the conversation |
| `dynamic_variables` | Optional<[DynamicVariablesConfigOutput](#dynamicvariablesconfigoutput)> | no | `nil` | Configuration for dynamic variables |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` | Determines when and how the tool executes: 'immediate' executes the tool right away when requested by the LLM, 'post_tool_speech' waits for the agent to finish speaking before executing, 'async' runs the tool in the background without blocking - best for long-running operations. |

### ClipAnimation

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enter_effect` | Optional<[ClipAnimationEnterEffect](#clipanimationentereffect)> | no | `nil` |  |
| `enter_duration_ms` | Optional<int> | no | `nil` |  |
| `exit_effect` | Optional<[ClipAnimationExitEffect](#clipanimationexiteffect)> | no | `nil` |  |
| `exit_duration_ms` | Optional<int> | no | `nil` |  |

### CloseConnection

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | Literal<''> | no | `''` | End the stream with an empty string |

### CloseContext

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `context_id` | str | **yes** | **required** | The context_id to close. |
| `close_context` | bool | **yes** | **required** | Must set the close_context to true, to close the specified context. If false, the context will remain open and the text will be ignored. If set to true, the context will close. If it has already been set to flush it will continue flushing. The same context id can be used again but will not be linked to the previous context with the same name. |

### CloseSocket

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `close_socket` | Optional<bool> | no | `nil` | If true, closes all contexts and closes the entire WebSocket connection. Any context that was previously set to flush will wait to flush before closing. |

### CoachedAgentSettings

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'coached'>> | no | `nil` |  |
| `memory_base_id` | Optional<str> | no | `nil` |  |

### CoachingAgentSettings

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'coaching'>> | no | `nil` |  |
| `coached_agent_id` | str | **yes** | **required** |  |
| `memory_base_id` | Optional<str> | no | `nil` |  |

### ColumnFilter

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `column` | str | **yes** | **required** |  |
| `operation` | [ColumnFilterOperation](#columnfilteroperation) | **yes** | **required** |  |
| `values` | Array<Optional<ColumnFilterValuesItem>> | **yes** | **required** |  |

### CommittedTranscriptPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'committed_transcript'> | no | `'committed_transcript'` | The message type identifier. |
| `text` | str | **yes** | **required** | Committed transcription text. |

### CommittedTranscriptWithTimestampsPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'committed_transcript_with_timestamps'> | no | `'committed_transcript_with_timestamps'` | The message type identifier. |
| `text` | str | **yes** | **required** | Committed transcription text. |
| `language_code` | Optional<str> | no | `nil` | Detected or specified language code. |
| `words` | Optional<Array<[TranscriptionWord](#transcriptionword)>> | no | `nil` | Word-level information with timestamps. |

### ConstantSchemaOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `constant_value` | ConstantSchemaOverrideConstantValue | **yes** | **required** | The constant value to use |

### ContentConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `sexual` | Optional<[ContentThresholdGuardrail](#contentthresholdguardrail)> | no | `nil` |  |
| `violence` | Optional<[ContentThresholdGuardrail](#contentthresholdguardrail)> | no | `nil` |  |
| `harassment` | Optional<[ContentThresholdGuardrail](#contentthresholdguardrail)> | no | `nil` |  |
| `self_harm` | Optional<[ContentThresholdGuardrail](#contentthresholdguardrail)> | no | `nil` |  |
| `profanity` | Optional<[ContentThresholdGuardrail](#contentthresholdguardrail)> | no | `nil` |  |
| `religion_or_politics` | Optional<[ContentThresholdGuardrail](#contentthresholdguardrail)> | no | `nil` |  |
| `medical_and_legal_information` | Optional<[ContentThresholdGuardrail](#contentthresholdguardrail)> | no | `nil` |  |

### ContentGuardrailInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `execution_mode` | Optional<[GuardrailExecutionMode](#guardrailexecutionmode)> | no | `nil` |  |
| `config` | Optional<[ContentConfig](#contentconfig)> | no | `nil` |  |
| `trigger_action` | Optional<[ContentGuardrailInputTriggerAction](#contentguardrailinputtriggeraction)> | no | `nil` |  |

### ContentGuardrailOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `execution_mode` | Optional<[GuardrailExecutionMode](#guardrailexecutionmode)> | no | `nil` |  |
| `config` | Optional<[ContentConfig](#contentconfig)> | no | `nil` |  |
| `trigger_action` | Optional<[ContentGuardrailOutputTriggerAction](#contentguardrailoutputtriggeraction)> | no | `nil` |  |

### ContentThresholdGuardrail

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_enabled` | Optional<bool> | no | `nil` |  |
| `threshold` | Optional<ContentThresholdGuardrailThreshold> | no | `nil` |  |

### Contributor

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `role` | str | **yes** | **required** |  |
| `bio` | Optional<str> | no | `nil` |  |
| `profile_id` | Optional<str> | no | `nil` |  |

### ConvAiDynamicVariable

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `variable_name` | str | **yes** | **required** |  |

### ConvAiEnvVarLocator

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `env_var_label` | str | **yes** | **required** |  |

### ConvAiFileUploadResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `file_id` | str | **yes** | **required** |  |

### ConvAiSecretLocator

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `secret_id` | str | **yes** | **required** |  |

### ConvAiStoredSecretDependencies

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tools` | Array<[ConvAiStoredSecretDependenciesToolsItem](#convaistoredsecretdependenciestoolsitem)> | **yes** | **required** |  |
| `tools_has_more` | Optional<bool> | no | `nil` | Whether there are more tool dependents beyond the returned preview |
| `agents` | Array<[ConvAiStoredSecretDependenciesAgentsItem](#convaistoredsecretdependenciesagentsitem)> | **yes** | **required** |  |
| `agents_has_more` | Optional<bool> | no | `nil` | Whether there are more agent dependents beyond the returned preview |
| `phone_numbers` | Optional<Array<[DependentPhoneNumberIdentifier](#dependentphonenumberidentifier)>> | no | `nil` |  |
| `phone_numbers_has_more` | Optional<bool> | no | `nil` | Whether there are more phone number dependents beyond the returned preview |
| `mcp_servers` | Optional<Array<[ConvAiStoredSecretDependenciesMcpServersItem](#convaistoredsecretdependenciesmcpserversitem)>> | no | `nil` |  |
| `others` | Array<SecretDependencyType> | **yes** | **required** |  |

### ConvAiUserSecretDbModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `encrypted_value` | str | **yes** | **required** |  |
| `nonce` | str | **yes** | **required** |  |

### ConvAiWebhooks

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `post_call_webhook_id` | Optional<str> | no | `nil` |  |
| `events` | Optional<Array<[WebhookEventType](#webhookeventtype)>> | no | `nil` | List of event types to send via webhook. Options: transcript, audio, call_initiation_failure. |
| `send_audio` | Optional<bool> | no | `nil` | DEPRECATED: Use 'events' field instead. Whether to send audio data with post-call webhooks for ConvAI conversations |

### ConvAiWorkspaceStoredSecretConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'stored'> | no | `'stored'` |  |
| `secret_id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `used_by` | [ConvAiStoredSecretDependencies](#convaistoredsecretdependencies) | **yes** | **required** |  |

### ConversationChargingCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `dev_discount` | Optional<bool> | no | `nil` |  |
| `is_burst` | Optional<bool> | no | `nil` |  |
| `tier` | Optional<str> | no | `nil` |  |
| `llm_usage` | Optional<[LlmCategoryUsage](#llmcategoryusage)> | no | `nil` |  |
| `llm_price` | Optional<float> | no | `nil` |  |
| `llm_charge` | Optional<int> | no | `nil` |  |
| `call_charge` | Optional<int> | no | `nil` |  |
| `free_minutes_consumed` | Optional<float> | no | `nil` |  |
| `free_llm_dollars_consumed` | Optional<float> | no | `nil` |  |

### ConversationConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text_only` | Optional<bool> | no | `nil` | If enabled audio will not be processed and only text will be used, use to avoid audio pricing. |
| `max_duration_seconds` | Optional<int> | no | `nil` | The maximum duration of a conversation in seconds |
| `client_events` | Optional<Array<[ClientEvent](#clientevent)>> | no | `nil` | The events that will be sent to the client |
| `file_input` | Optional<[FileInputConfig](#fileinputconfig)> | no | `nil` | Configuration for file input (image/PDF uploads) during conversations. |
| `monitoring_enabled` | Optional<bool> | no | `nil` | Enable real-time monitoring of conversations via WebSocket |
| `monitoring_events` | Optional<Array<[ClientEvent](#clientevent)>> | no | `nil` | The events that will be sent to monitoring connections. |

### ConversationConfigClientOverrideConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `turn` | Optional<[TurnConfigOverrideConfig](#turnconfigoverrideconfig)> | no | `nil` | Configures overrides for nested fields. |
| `tts` | Optional<[TtsConversationalConfigOverrideConfig](#ttsconversationalconfigoverrideconfig)> | no | `nil` | Configures overrides for nested fields. |
| `conversation` | Optional<[ConversationConfigOverrideConfig](#conversationconfigoverrideconfig)> | no | `nil` | Configures overrides for nested fields. |
| `agent` | Optional<[AgentConfigOverrideConfig](#agentconfigoverrideconfig)> | no | `nil` | Configures overrides for nested fields. |

### ConversationConfigClientOverrideConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `turn` | Optional<[TurnConfigOverrideConfig](#turnconfigoverrideconfig)> | no | `nil` | Configures overrides for nested fields. |
| `tts` | Optional<[TtsConversationalConfigOverrideConfig](#ttsconversationalconfigoverrideconfig)> | no | `nil` | Configures overrides for nested fields. |
| `conversation` | Optional<[ConversationConfigOverrideConfig](#conversationconfigoverrideconfig)> | no | `nil` | Configures overrides for nested fields. |
| `agent` | Optional<[AgentConfigOverrideConfig](#agentconfigoverrideconfig)> | no | `nil` | Configures overrides for nested fields. |

### ConversationConfigClientOverrideInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `turn` | Optional<[TurnConfigOverride](#turnconfigoverride)> | no | `nil` | Configuration for turn detection |
| `tts` | Optional<[TtsConversationalConfigOverride](#ttsconversationalconfigoverride)> | no | `nil` | Configuration for conversational text to speech |
| `conversation` | Optional<[ConversationConfigOverride](#conversationconfigoverride)> | no | `nil` | Configuration for conversational events |
| `agent` | Optional<[AgentConfigOverrideInput](#agentconfigoverrideinput)> | no | `nil` | Agent specific configuration |

### ConversationConfigClientOverrideOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `turn` | Optional<[TurnConfigOverride](#turnconfigoverride)> | no | `nil` | Configuration for turn detection |
| `tts` | Optional<[TtsConversationalConfigOverride](#ttsconversationalconfigoverride)> | no | `nil` | Configuration for conversational text to speech |
| `conversation` | Optional<[ConversationConfigOverride](#conversationconfigoverride)> | no | `nil` | Configuration for conversational events |
| `agent` | Optional<[AgentConfigOverrideOutput](#agentconfigoverrideoutput)> | no | `nil` | Agent specific configuration |

### ConversationConfigOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text_only` | Optional<bool> | no | `nil` | If enabled audio will not be processed and only text will be used, use to avoid audio pricing. |

### ConversationConfigOverrideConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text_only` | Optional<bool> | no | `nil` | Whether to allow overriding the text_only field. |

### ConversationConfigWorkflowOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text_only` | Optional<bool> | no | `nil` | If enabled audio will not be processed and only text will be used, use to avoid audio pricing. |
| `max_duration_seconds` | Optional<int> | no | `nil` | The maximum duration of a conversation in seconds |
| `client_events` | Optional<Array<[ClientEvent](#clientevent)>> | no | `nil` | The events that will be sent to the client |
| `file_input` | Optional<[FileInputConfigWorkflowOverride](#fileinputconfigworkflowoverride)> | no | `nil` | Configuration for file input (image/PDF uploads) during conversations. |
| `monitoring_enabled` | Optional<bool> | no | `nil` | Enable real-time monitoring of conversations via WebSocket |
| `monitoring_events` | Optional<Array<[ClientEvent](#clientevent)>> | no | `nil` | The events that will be sent to monitoring connections. |

### ConversationDeletionSettings

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `deletion_time_unix_secs` | Optional<int> | no | `nil` |  |
| `deleted_logs_at_time_unix_secs` | Optional<int> | no | `nil` |  |
| `deleted_audio_at_time_unix_secs` | Optional<int> | no | `nil` |  |
| `deleted_transcript_at_time_unix_secs` | Optional<int> | no | `nil` |  |
| `delete_transcript_and_pii` | Optional<bool> | no | `nil` |  |
| `delete_audio` | Optional<bool> | no | `nil` |  |

### ConversationHistoryAnalysisCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `evaluation_criteria_results` | Optional<Hash<str, [ConversationHistoryEvaluationCriteriaResultCommonModel](#conversationhistoryevaluationcriteriaresultcommonmodel)>> | no | `nil` |  |
| `data_collection_results` | Optional<Hash<str, [DataCollectionResultCommonModel](#datacollectionresultcommonmodel)>> | no | `nil` |  |
| `evaluation_criteria_results_list` | Optional<Array<[ConversationHistoryEvaluationCriteriaResultCommonModel](#conversationhistoryevaluationcriteriaresultcommonmodel)>> | no | `nil` |  |
| `data_collection_results_list` | Optional<Array<[DataCollectionResultCommonModel](#datacollectionresultcommonmodel)>> | no | `nil` |  |
| `call_successful` | [EvaluationSuccessResult](#evaluationsuccessresult) | **yes** | **required** |  |
| `transcript_summary` | str | **yes** | **required** |  |
| `call_summary_title` | Optional<str> | no | `nil` |  |
| `scoped` | Optional<Array<[ScopedAnalysisResult](#scopedanalysisresult)>> | no | `nil` |  |

### ConversationHistoryBatchCallModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `batch_call_id` | str | **yes** | **required** |  |
| `batch_call_recipient_id` | str | **yes** | **required** |  |

### ConversationHistoryElevenAssistantCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_eleven_assistant` | Optional<bool> | no | `nil` |  |

### ConversationHistoryErrorCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `code` | int | **yes** | **required** |  |
| `reason` | Optional<str> | no | `nil` |  |

### ConversationHistoryEvaluationCriteriaResultCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `criteria_id` | str | **yes** | **required** |  |
| `result` | [EvaluationSuccessResult](#evaluationsuccessresult) | **yes** | **required** |  |
| `rationale` | str | **yes** | **required** |  |

### ConversationHistoryFeedbackCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<[ConversationFeedbackType](#conversationfeedbacktype)> | no | `nil` |  |
| `overall_score` | Optional<[UserFeedbackScore](#userfeedbackscore)> | no | `nil` |  |
| `likes` | Optional<int> | no | `nil` |  |
| `dislikes` | Optional<int> | no | `nil` |  |
| `rating` | Optional<int> | no | `nil` |  |
| `comment` | Optional<str> | no | `nil` |  |

### ConversationHistoryMetadataCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `start_time_unix_secs` | int | **yes** | **required** |  |
| `accepted_time_unix_secs` | Optional<int> | no | `nil` |  |
| `call_duration_secs` | int | **yes** | **required** |  |
| `cost` | Optional<int> | no | `nil` |  |
| `deletion_settings` | Optional<[ConversationDeletionSettings](#conversationdeletionsettings)> | no | `nil` |  |
| `feedback` | Optional<[ConversationHistoryFeedbackCommonModel](#conversationhistoryfeedbackcommonmodel)> | no | `nil` |  |
| `authorization_method` | Optional<[AuthorizationMethod](#authorizationmethod)> | no | `nil` |  |
| `charging` | Optional<[ConversationChargingCommonModel](#conversationchargingcommonmodel)> | no | `nil` |  |
| `phone_call` | Optional<[ConversationHistoryMetadataCommonModelPhoneCall](#conversationhistorymetadatacommonmodelphonecall)> | no | `nil` |  |
| `batch_call` | Optional<[ConversationHistoryBatchCallModel](#conversationhistorybatchcallmodel)> | no | `nil` |  |
| `termination_reason` | Optional<str> | no | `nil` |  |
| `error` | Optional<[ConversationHistoryErrorCommonModel](#conversationhistoryerrorcommonmodel)> | no | `nil` |  |
| `warnings` | Optional<Array<str>> | no | `nil` |  |
| `main_language` | Optional<str> | no | `nil` |  |
| `rag_usage` | Optional<[ConversationHistoryRagUsageCommonModel](#conversationhistoryragusagecommonmodel)> | no | `nil` |  |
| `text_only` | Optional<bool> | no | `nil` |  |
| `features_usage` | Optional<[FeaturesUsageCommonModel](#featuresusagecommonmodel)> | no | `nil` |  |
| `eleven_assistant` | Optional<[ConversationHistoryElevenAssistantCommonModel](#conversationhistoryelevenassistantcommonmodel)> | no | `nil` |  |
| `initiator_id` | Optional<str> | no | `nil` |  |
| `conversation_initiation_source` | Optional<[ConversationInitiationSource](#conversationinitiationsource)> | no | `nil` |  |
| `conversation_initiation_source_version` | Optional<str> | no | `nil` |  |
| `timezone` | Optional<str> | no | `nil` |  |
| `async_metadata` | Optional<[AsyncConversationMetadata](#asyncconversationmetadata)> | no | `nil` |  |
| `whatsapp` | Optional<[WhatsAppConversationInfo](#whatsappconversationinfo)> | no | `nil` |  |
| `agent_created_from` | Optional<[AgentDefinitionSource](#agentdefinitionsource)> | no | `nil` |  |
| `agent_last_updated_from` | Optional<[AgentDefinitionSource](#agentdefinitionsource)> | no | `nil` |  |

### ConversationHistoryMultivoiceMessageModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `parts` | Array<[ConversationHistoryMultivoiceMessagePartModel](#conversationhistorymultivoicemessagepartmodel)> | **yes** | **required** |  |

### ConversationHistoryMultivoiceMessagePartModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | str | **yes** | **required** |  |
| `voice_label` | Optional<str> | no | `nil` |  |
| `time_in_call_secs` | Optional<int> | no | `nil` |  |

### ConversationHistoryRagUsageCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `usage_count` | int | **yes** | **required** |  |
| `embedding_model` | str | **yes** | **required** |  |

### ConversationHistoryRedactionConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enabled` | Optional<bool> | no | `nil` | Whether conversation history redaction is enabled |
| `entities` | Optional<Array<[ConfigEntityType](#configentitytype)>> | no | `nil` | The entities to redact from the conversation transcript, audio and analysis. Use top-level types like 'name', 'email_address', or dot notation for specific subtypes like 'name.full_name'. |

### ConversationHistorySipTrunkingPhoneCallModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `direction` | [TelephonyDirection](#telephonydirection) | **yes** | **required** |  |
| `phone_number_id` | str | **yes** | **required** |  |
| `agent_number` | str | **yes** | **required** |  |
| `external_number` | str | **yes** | **required** |  |
| `call_sid` | str | **yes** | **required** |  |
| `sip_header_dynamic_variables` | Optional<Hash<str, str>> | no | `nil` |  |

### ConversationHistoryTranscriptApiIntegrationWebhookToolsResultCommonModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `request_id` | str | **yes** | **required** |  |
| `tool_name` | str | **yes** | **required** |  |
| `result_value` | str | **yes** | **required** |  |
| `is_error` | bool | **yes** | **required** |  |
| `is_blocked` | Optional<bool> | no | `nil` |  |
| `tool_has_been_called` | bool | **yes** | **required** |  |
| `tool_latency_secs` | Optional<float> | no | `nil` |  |
| `error_type` | Optional<str> | no | `nil` |  |
| `raw_error_message` | Optional<str> | no | `nil` |  |
| `dynamic_variable_updates` | Optional<Array<[DynamicVariableUpdateCommonModel](#dynamicvariableupdatecommonmodel)>> | no | `nil` |  |
| `type` | Literal<'api_integration_webhook'> | no | `'api_integration_webhook'` |  |
| `integration_id` | Optional<str> | no | `nil` |  |
| `credential_id` | Optional<str> | no | `nil` |  |
| `integration_connection_id` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptApiIntegrationWebhookToolsResultCommonModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `request_id` | str | **yes** | **required** |  |
| `tool_name` | str | **yes** | **required** |  |
| `result_value` | str | **yes** | **required** |  |
| `is_error` | bool | **yes** | **required** |  |
| `is_blocked` | bool | **yes** | **required** |  |
| `tool_has_been_called` | bool | **yes** | **required** |  |
| `tool_latency_secs` | float | **yes** | **required** |  |
| `error_type` | str | **yes** | **required** |  |
| `raw_error_message` | str | **yes** | **required** |  |
| `dynamic_variable_updates` | Array<[DynamicVariableUpdateCommonModel](#dynamicvariableupdatecommonmodel)> | **yes** | **required** |  |
| `type` | Literal<'api_integration_webhook'> | no | `'api_integration_webhook'` |  |
| `integration_id` | str | **yes** | **required** |  |
| `credential_id` | str | **yes** | **required** |  |
| `integration_connection_id` | str | **yes** | **required** |  |

### ConversationHistoryTranscriptCommonModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `role` | [ConversationHistoryTranscriptCommonModelInputRole](#conversationhistorytranscriptcommonmodelinputrole) | **yes** | **required** |  |
| `agent_metadata` | Optional<[AgentMetadata](#agentmetadata)> | no | `nil` |  |
| `message` | Optional<str> | no | `nil` |  |
| `multivoice_message` | Optional<[ConversationHistoryMultivoiceMessageModel](#conversationhistorymultivoicemessagemodel)> | no | `nil` |  |
| `tool_calls` | Optional<Array<[ConversationHistoryTranscriptToolCallCommonModelInput](#conversationhistorytranscripttoolcallcommonmodelinput)>> | no | `nil` |  |
| `tool_results` | Optional<Array<ConversationHistoryTranscriptCommonModelInputToolResultsItem>> | no | `nil` |  |
| `feedback` | Optional<[UserFeedback](#userfeedback)> | no | `nil` |  |
| `llm_override` | Optional<str> | no | `nil` |  |
| `time_in_call_secs` | int | **yes** | **required** |  |
| `conversation_turn_metrics` | Optional<[ConversationTurnMetrics](#conversationturnmetrics)> | no | `nil` |  |
| `rag_retrieval_info` | Optional<[RagRetrievalInfo](#ragretrievalinfo)> | no | `nil` |  |
| `llm_usage` | Optional<[LlmUsageInput](#llmusageinput)> | no | `nil` |  |
| `interrupted` | Optional<bool> | no | `nil` |  |
| `original_message` | Optional<str> | no | `nil` |  |
| `source_medium` | Optional<[ChatSourceMedium](#chatsourcemedium)> | no | `nil` |  |
| `source_event_id` | Optional<int> | no | `nil` |  |

### ConversationHistoryTranscriptCommonModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `role` | [ConversationHistoryTranscriptCommonModelOutputRole](#conversationhistorytranscriptcommonmodeloutputrole) | **yes** | **required** |  |
| `agent_metadata` | Optional<[AgentMetadata](#agentmetadata)> | no | `nil` |  |
| `message` | Optional<str> | no | `nil` |  |
| `multivoice_message` | Optional<[ConversationHistoryMultivoiceMessageModel](#conversationhistorymultivoicemessagemodel)> | no | `nil` |  |
| `tool_calls` | Optional<Array<[ConversationHistoryTranscriptToolCallCommonModelOutput](#conversationhistorytranscripttoolcallcommonmodeloutput)>> | no | `nil` |  |
| `tool_results` | Optional<Array<ConversationHistoryTranscriptCommonModelOutputToolResultsItem>> | no | `nil` |  |
| `feedback` | Optional<[UserFeedback](#userfeedback)> | no | `nil` |  |
| `llm_override` | Optional<str> | no | `nil` |  |
| `time_in_call_secs` | int | **yes** | **required** |  |
| `conversation_turn_metrics` | Optional<[ConversationTurnMetrics](#conversationturnmetrics)> | no | `nil` |  |
| `rag_retrieval_info` | Optional<[RagRetrievalInfo](#ragretrievalinfo)> | no | `nil` |  |
| `llm_usage` | Optional<[LlmUsageOutput](#llmusageoutput)> | no | `nil` |  |
| `interrupted` | Optional<bool> | no | `nil` |  |
| `original_message` | Optional<str> | no | `nil` |  |
| `source_medium` | Optional<[ChatSourceMedium](#chatsourcemedium)> | no | `nil` |  |
| `source_event_id` | Optional<int> | no | `nil` |  |

### ConversationHistoryTranscriptFileInputResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `file_id` | str | **yes** | **required** |  |
| `original_filename` | str | **yes** | **required** |  |
| `mime_type` | str | **yes** | **required** |  |
| `file_url` | str | **yes** | **required** |  |

### ConversationHistoryTranscriptOtherToolsResultCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `request_id` | str | **yes** | **required** |  |
| `tool_name` | str | **yes** | **required** |  |
| `result_value` | str | **yes** | **required** |  |
| `is_error` | bool | **yes** | **required** |  |
| `is_blocked` | Optional<bool> | no | `nil` |  |
| `tool_has_been_called` | bool | **yes** | **required** |  |
| `tool_latency_secs` | Optional<float> | no | `nil` |  |
| `error_type` | Optional<str> | no | `nil` |  |
| `raw_error_message` | Optional<str> | no | `nil` |  |
| `dynamic_variable_updates` | Optional<Array<[DynamicVariableUpdateCommonModel](#dynamicvariableupdatecommonmodel)>> | no | `nil` |  |
| `type` | Optional<[ConversationHistoryTranscriptOtherToolsResultCommonModelType](#conversationhistorytranscriptothertoolsresultcommonmodeltype)> | no | `nil` |  |

### ConversationHistoryTranscriptResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `role` | [ConversationHistoryTranscriptResponseModelRole](#conversationhistorytranscriptresponsemodelrole) | **yes** | **required** |  |
| `agent_metadata` | Optional<[AgentMetadata](#agentmetadata)> | no | `nil` |  |
| `message` | Optional<str> | no | `nil` |  |
| `multivoice_message` | Optional<[ConversationHistoryMultivoiceMessageModel](#conversationhistorymultivoicemessagemodel)> | no | `nil` |  |
| `tool_calls` | Optional<Array<[ConversationHistoryTranscriptToolCallCommonModelOutput](#conversationhistorytranscripttoolcallcommonmodeloutput)>> | no | `nil` |  |
| `tool_results` | Optional<Array<ConversationHistoryTranscriptResponseModelToolResultsItem>> | no | `nil` |  |
| `feedback` | Optional<[UserFeedback](#userfeedback)> | no | `nil` |  |
| `llm_override` | Optional<str> | no | `nil` |  |
| `time_in_call_secs` | int | **yes** | **required** |  |
| `conversation_turn_metrics` | Optional<[ConversationTurnMetrics](#conversationturnmetrics)> | no | `nil` |  |
| `rag_retrieval_info` | Optional<[RagRetrievalInfo](#ragretrievalinfo)> | no | `nil` |  |
| `llm_usage` | Optional<[LlmUsageOutput](#llmusageoutput)> | no | `nil` |  |
| `interrupted` | Optional<bool> | no | `nil` |  |
| `original_message` | Optional<str> | no | `nil` |  |
| `source_medium` | Optional<[ChatSourceMedium](#chatsourcemedium)> | no | `nil` |  |
| `source_event_id` | Optional<int> | no | `nil` |  |
| `file_input` | Optional<[ConversationHistoryTranscriptFileInputResponseModel](#conversationhistorytranscriptfileinputresponsemodel)> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `request_id` | str | **yes** | **required** |  |
| `tool_name` | str | **yes** | **required** |  |
| `result_value` | str | **yes** | **required** |  |
| `is_error` | bool | **yes** | **required** |  |
| `is_blocked` | Optional<bool> | no | `nil` |  |
| `tool_has_been_called` | bool | **yes** | **required** |  |
| `tool_latency_secs` | Optional<float> | no | `nil` |  |
| `error_type` | Optional<str> | no | `nil` |  |
| `raw_error_message` | Optional<str> | no | `nil` |  |
| `dynamic_variable_updates` | Optional<Array<[DynamicVariableUpdateCommonModel](#dynamicvariableupdatecommonmodel)>> | no | `nil` |  |
| `type` | Literal<'system'> | no | `'system'` |  |
| `result` | Optional<[ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult)> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `request_id` | str | **yes** | **required** |  |
| `tool_name` | str | **yes** | **required** |  |
| `result_value` | str | **yes** | **required** |  |
| `is_error` | bool | **yes** | **required** |  |
| `is_blocked` | Optional<bool> | no | `nil` |  |
| `tool_has_been_called` | bool | **yes** | **required** |  |
| `tool_latency_secs` | Optional<float> | no | `nil` |  |
| `error_type` | Optional<str> | no | `nil` |  |
| `raw_error_message` | Optional<str> | no | `nil` |  |
| `dynamic_variable_updates` | Optional<Array<[DynamicVariableUpdateCommonModel](#dynamicvariableupdatecommonmodel)>> | no | `nil` |  |
| `type` | Literal<'system'> | no | `'system'` |  |
| `result` | Optional<[ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult)> | no | `nil` |  |

### ConversationHistoryTranscriptToolCallApiIntegrationWebhookDetailsInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `integration_id` | Optional<str> | no | `nil` |  |
| `credential_id` | Optional<str> | no | `nil` |  |
| `integration_connection_id` | Optional<str> | no | `nil` |  |
| `webhook_details` | [ConversationHistoryTranscriptToolCallWebhookDetails](#conversationhistorytranscripttoolcallwebhookdetails) | **yes** | **required** |  |

### ConversationHistoryTranscriptToolCallApiIntegrationWebhookDetailsOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `integration_id` | str | **yes** | **required** |  |
| `credential_id` | str | **yes** | **required** |  |
| `integration_connection_id` | str | **yes** | **required** |  |
| `webhook_details` | [ConversationHistoryTranscriptToolCallWebhookDetails](#conversationhistorytranscripttoolcallwebhookdetails) | **yes** | **required** |  |

### ConversationHistoryTranscriptToolCallClientDetails

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `parameters` | str | **yes** | **required** |  |

### ConversationHistoryTranscriptToolCallCommonModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<[ToolType](#tooltype)> | no | `nil` |  |
| `request_id` | str | **yes** | **required** |  |
| `tool_name` | str | **yes** | **required** |  |
| `params_as_json` | str | **yes** | **required** |  |
| `tool_has_been_called` | bool | **yes** | **required** |  |
| `tool_details` | Optional<[ConversationHistoryTranscriptToolCallCommonModelInputToolDetails](#conversationhistorytranscripttoolcallcommonmodelinputtooldetails)> | no | `nil` |  |

### ConversationHistoryTranscriptToolCallCommonModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<[ToolType](#tooltype)> | no | `nil` |  |
| `request_id` | str | **yes** | **required** |  |
| `tool_name` | str | **yes** | **required** |  |
| `params_as_json` | str | **yes** | **required** |  |
| `tool_has_been_called` | bool | **yes** | **required** |  |
| `tool_details` | Optional<[ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails](#conversationhistorytranscripttoolcallcommonmodeloutputtooldetails)> | no | `nil` |  |

### ConversationHistoryTranscriptToolCallMcpDetails

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `mcp_server_id` | str | **yes** | **required** |  |
| `mcp_server_name` | str | **yes** | **required** |  |
| `integration_type` | str | **yes** | **required** |  |
| `parameters` | Optional<Hash<str, str>> | no | `nil` |  |
| `approval_policy` | str | **yes** | **required** |  |
| `requires_approval` | Optional<bool> | no | `nil` |  |
| `mcp_tool_name` | Optional<str> | no | `nil` |  |
| `mcp_tool_description` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptToolCallWebhookDetails

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'webhook'>> | no | `nil` |  |
| `method` | str | **yes** | **required** |  |
| `url` | str | **yes** | **required** |  |
| `headers` | Optional<Hash<str, str>> | no | `nil` |  |
| `path_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `query_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `body` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptWorkflowToolsResultCommonModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `request_id` | str | **yes** | **required** |  |
| `tool_name` | str | **yes** | **required** |  |
| `result_value` | str | **yes** | **required** |  |
| `is_error` | bool | **yes** | **required** |  |
| `is_blocked` | Optional<bool> | no | `nil` |  |
| `tool_has_been_called` | bool | **yes** | **required** |  |
| `tool_latency_secs` | Optional<float> | no | `nil` |  |
| `error_type` | Optional<str> | no | `nil` |  |
| `raw_error_message` | Optional<str> | no | `nil` |  |
| `dynamic_variable_updates` | Optional<Array<[DynamicVariableUpdateCommonModel](#dynamicvariableupdatecommonmodel)>> | no | `nil` |  |
| `type` | Literal<'workflow'> | no | `'workflow'` |  |
| `result` | Optional<'[WorkflowToolResponseModelInput](#workflowtoolresponsemodelinput)'> | no | `nil` |  |

### ConversationHistoryTranscriptWorkflowToolsResultCommonModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `request_id` | str | **yes** | **required** |  |
| `tool_name` | str | **yes** | **required** |  |
| `result_value` | str | **yes** | **required** |  |
| `is_error` | bool | **yes** | **required** |  |
| `is_blocked` | Optional<bool> | no | `nil` |  |
| `tool_has_been_called` | bool | **yes** | **required** |  |
| `tool_latency_secs` | Optional<float> | no | `nil` |  |
| `error_type` | Optional<str> | no | `nil` |  |
| `raw_error_message` | Optional<str> | no | `nil` |  |
| `dynamic_variable_updates` | Optional<Array<[DynamicVariableUpdateCommonModel](#dynamicvariableupdatecommonmodel)>> | no | `nil` |  |
| `type` | Literal<'workflow'> | no | `'workflow'` |  |
| `result` | Optional<'[WorkflowToolResponseModelOutput](#workflowtoolresponsemodeloutput)'> | no | `nil` |  |

### ConversationHistoryTwilioPhoneCallModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `direction` | [TelephonyDirection](#telephonydirection) | **yes** | **required** |  |
| `phone_number_id` | str | **yes** | **required** |  |
| `agent_number` | str | **yes** | **required** |  |
| `external_number` | str | **yes** | **required** |  |
| `stream_sid` | str | **yes** | **required** |  |
| `call_sid` | str | **yes** | **required** |  |

### ConversationInitiationClientDataConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_config_override` | Optional<[ConversationConfigClientOverrideConfigInput](#conversationconfigclientoverrideconfiginput)> | no | `nil` | Overrides for the conversation configuration |
| `custom_llm_extra_body` | Optional<bool> | no | `nil` | Whether to include custom LLM extra body |
| `enable_conversation_initiation_client_data_from_webhook` | Optional<bool> | no | `nil` | Whether to enable conversation initiation client data from webhooks |
| `enable_starting_workflow_node_id_from_client` | Optional<bool> | no | `nil` | Whether clients may pass starting_workflow_node_id in initiation client data; if false, sending it fails conversation start. |

### ConversationInitiationClientDataConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_config_override` | Optional<[ConversationConfigClientOverrideConfigOutput](#conversationconfigclientoverrideconfigoutput)> | no | `nil` | Overrides for the conversation configuration |
| `custom_llm_extra_body` | Optional<bool> | no | `nil` | Whether to include custom LLM extra body |
| `enable_conversation_initiation_client_data_from_webhook` | Optional<bool> | no | `nil` | Whether to enable conversation initiation client data from webhooks |
| `enable_starting_workflow_node_id_from_client` | Optional<bool> | no | `nil` | Whether clients may pass starting_workflow_node_id in initiation client data; if false, sending it fails conversation start. |

### ConversationInitiationClientDataInternal

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_config_override` | Optional<[ConversationConfigClientOverrideOutput](#conversationconfigclientoverrideoutput)> | no | `nil` |  |
| `custom_llm_extra_body` | Optional<Hash<str, Any>> | no | `nil` |  |
| `user_id` | Optional<str> | no | `nil` | ID of the end user participating in this conversation (for agent owner's user identification) |
| `source_info` | Optional<[ConversationInitiationSourceInfo](#conversationinitiationsourceinfo)> | no | `nil` |  |
| `branch_id` | Optional<str> | no | `nil` | ID of the agent branch to use for this conversation |
| `environment` | Optional<str> | no | `nil` | Environment to use for resolving environment variables |
| `starting_workflow_node_id` | Optional<str> | no | `nil` | If set, start the workflow at this node id instead of the default entry |
| `dynamic_variables` | Optional<Hash<str, Optional<ConversationInitiationClientDataInternalDynamicVariablesValue>>> | no | `nil` |  |
| `tool_mock_config` | Optional<[OrchestratorToolMockBehaviorConfig](#orchestratortoolmockbehaviorconfig)> | no | `nil` | Configuration for which tools to mock and fallback behavior |

### ConversationInitiationClientDataRequestInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_config_override` | Optional<[ConversationConfigClientOverrideInput](#conversationconfigclientoverrideinput)> | no | `nil` |  |
| `custom_llm_extra_body` | Optional<Hash<str, Any>> | no | `nil` |  |
| `user_id` | Optional<str> | no | `nil` | ID of the end user participating in this conversation (for agent owner's user identification) |
| `source_info` | Optional<[ConversationInitiationSourceInfo](#conversationinitiationsourceinfo)> | no | `nil` |  |
| `branch_id` | Optional<str> | no | `nil` | ID of the agent branch to use for this conversation |
| `environment` | Optional<str> | no | `nil` | Environment to use for resolving environment variables |
| `starting_workflow_node_id` | Optional<str> | no | `nil` | If set, start the workflow at this node id instead of the default entry |
| `dynamic_variables` | Optional<Hash<str, Optional<ConversationInitiationClientDataRequestInputDynamicVariablesValue>>> | no | `nil` |  |

### ConversationInitiationClientDataRequestOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_config_override` | Optional<[ConversationConfigClientOverrideOutput](#conversationconfigclientoverrideoutput)> | no | `nil` |  |
| `custom_llm_extra_body` | Optional<Hash<str, Any>> | no | `nil` |  |
| `user_id` | Optional<str> | no | `nil` | ID of the end user participating in this conversation (for agent owner's user identification) |
| `source_info` | Optional<[ConversationInitiationSourceInfo](#conversationinitiationsourceinfo)> | no | `nil` |  |
| `branch_id` | Optional<str> | no | `nil` | ID of the agent branch to use for this conversation |
| `environment` | Optional<str> | no | `nil` | Environment to use for resolving environment variables |
| `starting_workflow_node_id` | Optional<str> | no | `nil` | If set, start the workflow at this node id instead of the default entry |
| `dynamic_variables` | Optional<Hash<str, Optional<ConversationInitiationClientDataRequestOutputDynamicVariablesValue>>> | no | `nil` |  |

### ConversationInitiationClientDataWebhook

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `url` | str | **yes** | **required** | The URL to send the webhook to |
| `request_headers` | Hash<str, ConversationInitiationClientDataWebhookRequestHeadersValue> | **yes** | **required** | The headers to send with the webhook request |

### ConversationInitiationSourceInfo

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | Optional<[ConversationInitiationSource](#conversationinitiationsource)> | no | `nil` | Source of the conversation initiation |
| `version` | Optional<str> | no | `nil` | The SDK version number |

### ConversationSignedUrlResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `signed_url` | str | **yes** | **required** |  |

### ConversationSimulationSpecification

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `simulated_user_config` | [AgentConfig](#agentconfig) | **yes** | **required** |  |
| `tool_mock_config` | Optional<Hash<str, [ToolMockConfig](#toolmockconfig)>> | no | `nil` |  |
| `partial_conversation_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelInput](#conversationhistorytranscriptcommonmodelinput)>> | no | `nil` | A partial conversation history to start the simulation from. If empty, simulation starts fresh. |
| `dynamic_variables` | Optional<Hash<str, Optional<ConversationSimulationSpecificationDynamicVariablesValue>>> | no | `nil` |  |

### ConversationSummaryResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** |  |
| `branch_id` | Optional<str> | no | `nil` |  |
| `version_id` | Optional<str> | no | `nil` |  |
| `agent_name` | Optional<str> | no | `nil` |  |
| `conversation_id` | str | **yes** | **required** |  |
| `start_time_unix_secs` | int | **yes** | **required** |  |
| `call_duration_secs` | int | **yes** | **required** |  |
| `message_count` | int | **yes** | **required** |  |
| `status` | [ConversationSummaryResponseModelStatus](#conversationsummaryresponsemodelstatus) | **yes** | **required** |  |
| `termination_reason` | Optional<str> | no | `nil` |  |
| `call_successful` | [EvaluationSuccessResult](#evaluationsuccessresult) | **yes** | **required** |  |
| `transcript_summary` | Optional<str> | no | `nil` |  |
| `call_summary_title` | Optional<str> | no | `nil` |  |
| `main_language` | Optional<str> | no | `nil` |  |
| `conversation_initiation_source` | Optional<[ConversationInitiationSource](#conversationinitiationsource)> | no | `nil` |  |
| `tool_names` | Optional<Array<str>> | no | `nil` |  |
| `direction` | Optional<[TelephonyDirection](#telephonydirection)> | no | `nil` |  |
| `rating` | Optional<float> | no | `nil` |  |

### ConversationTokenDbModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** | The ID of the agent |
| `conversation_token` | str | **yes** | **required** | The token for the agent |
| `expiration_time_unix_secs` | Optional<int> | no | `nil` | The expiration time of the token in unix seconds |
| `conversation_id` | Optional<str> | no | `nil` | The ID of the conversation |
| `purpose` | Optional<[ConversationTokenPurpose](#conversationtokenpurpose)> | no | `nil` | The purpose of the token |
| `token_requester_user_id` | Optional<str> | no | `nil` | The user ID of the entity who requested the token |

### ConversationTurnMetrics

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `metrics` | Optional<Hash<str, [MetricRecord](#metricrecord)>> | no | `nil` |  |
| `convai_asr_provider` | Optional<str> | no | `nil` |  |
| `convai_tts_model` | Optional<str> | no | `nil` |  |
| `convai_tts_cascade` | Optional<str> | no | `nil` |  |

### ConversationUserResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `user_id` | str | **yes** | **required** |  |
| `last_contact_unix_secs` | int | **yes** | **required** |  |
| `first_contact_unix_secs` | int | **yes** | **required** |  |
| `conversation_count` | int | **yes** | **required** |  |
| `last_contact_agent_id` | Optional<str> | no | `nil` |  |
| `last_contact_conversation_id` | str | **yes** | **required** |  |
| `last_contact_agent_name` | Optional<str> | no | `nil` |  |

### ConversationalConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `asr` | Optional<[AsrConversationalConfig](#asrconversationalconfig)> | no | `nil` | Configuration for conversational transcription |
| `turn` | Optional<[TurnConfig](#turnconfig)> | no | `nil` | Configuration for turn detection |
| `tts` | Optional<[TtsConversationalConfigOutput](#ttsconversationalconfigoutput)> | no | `nil` | Configuration for conversational text to speech |
| `conversation` | Optional<[ConversationConfig](#conversationconfig)> | no | `nil` | Configuration for conversational events |
| `language_presets` | Optional<Hash<str, [LanguagePresetOutput](#languagepresetoutput)>> | no | `nil` | Language presets for conversations |
| `vad` | Optional<[VadConfig](#vadconfig)> | no | `nil` | Configuration for voice activity detection |
| `agent` | Optional<[AgentConfig](#agentconfig)> | no | `nil` | Agent specific configuration |

### ConversationalConfigApiModelWorkflowOverrideInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `asr` | Optional<[AsrConversationalConfigWorkflowOverride](#asrconversationalconfigworkflowoverride)> | no | `nil` | Configuration for conversational transcription |
| `turn` | Optional<[TurnConfigWorkflowOverride](#turnconfigworkflowoverride)> | no | `nil` | Configuration for turn detection |
| `tts` | Optional<[TtsConversationalConfigWorkflowOverrideInput](#ttsconversationalconfigworkflowoverrideinput)> | no | `nil` | Configuration for conversational text to speech |
| `conversation` | Optional<[ConversationConfigWorkflowOverride](#conversationconfigworkflowoverride)> | no | `nil` | Configuration for conversational events |
| `language_presets` | Optional<Hash<str, Optional<[LanguagePresetInput](#languagepresetinput)>>> | no | `nil` | Language presets for conversations |
| `vad` | Optional<[VadConfigWorkflowOverride](#vadconfigworkflowoverride)> | no | `nil` | Configuration for voice activity detection |
| `agent` | Optional<[AgentConfigApiModelWorkflowOverrideInput](#agentconfigapimodelworkflowoverrideinput)> | no | `nil` | Agent specific configuration |

### ConversationalConfigApiModelWorkflowOverrideOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `asr` | Optional<[AsrConversationalConfigWorkflowOverride](#asrconversationalconfigworkflowoverride)> | no | `nil` | Configuration for conversational transcription |
| `turn` | Optional<[TurnConfigWorkflowOverride](#turnconfigworkflowoverride)> | no | `nil` | Configuration for turn detection |
| `tts` | Optional<[TtsConversationalConfigWorkflowOverrideOutput](#ttsconversationalconfigworkflowoverrideoutput)> | no | `nil` | Configuration for conversational text to speech |
| `conversation` | Optional<[ConversationConfigWorkflowOverride](#conversationconfigworkflowoverride)> | no | `nil` | Configuration for conversational events |
| `language_presets` | Optional<Hash<str, Optional<[LanguagePresetOutput](#languagepresetoutput)>>> | no | `nil` | Language presets for conversations |
| `vad` | Optional<[VadConfigWorkflowOverride](#vadconfigworkflowoverride)> | no | `nil` | Configuration for voice activity detection |
| `agent` | Optional<[AgentConfigApiModelWorkflowOverrideOutput](#agentconfigapimodelworkflowoverrideoutput)> | no | `nil` | Agent specific configuration |

### ConvertChapterResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the studio chapter conversion request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### ConvertProjectResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the studio project conversion request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### CreateAgentBranchResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `created_branch_id` | str | **yes** | **required** | ID of the created branch |
| `created_version_id` | str | **yes** | **required** | ID of the first version on the created branch |

### CreateAgentResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** | ID of the created agent |

### CreateAgentRuleParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'create_agent_rule'>> | no | `nil` |  |

### CreateAgentTestFolderResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |

### CreateAgentTestResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |

### CreateAssetParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'create_asset'>> | no | `nil` |  |

### CreateAuthConnectionEnvironmentVariableRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | str | **yes** | **required** | Unique label for the environment variable. |
| `values` | Hash<str, [EnvironmentVariableAuthConnectionValueRequest](#environmentvariableauthconnectionvaluerequest)> | **yes** | **required** | Environment-specific auth connection references. Must include 'production' key. |

### CreateBasicAuthRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `username` | str | **yes** | **required** |  |
| `password` | str | **yes** | **required** |  |

### CreateClientAppointmentParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'create_client_appointment'>> | no | `nil` |  |

### CreateClientInteractionParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'create_client_interaction'>> | no | `nil` |  |

### CreateClientParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'create_client'>> | no | `nil` |  |

### CreateCustomHeaderAuthRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `header_name` | str | **yes** | **required** | The name of the header to use for authentication (e.g., 'x-api-key') |
| `token` | str | **yes** | **required** |  |

### CreateHolidayParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'create_holiday'>> | no | `nil` |  |

### CreateLocationParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'create_location'>> | no | `nil` |  |

### CreateMtlsAuthRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `client_certificate` | str | **yes** | **required** |  |
| `client_key` | str | **yes** | **required** |  |
| `ca_certificate` | Optional<str> | no | `nil` |  |
| `key_passphrase` | Optional<str> | no | `nil` |  |

### CreateOAuth2ClientCredsRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `client_id` | str | **yes** | **required** |  |
| `token_url` | str | **yes** | **required** |  |
| `scopes` | Optional<Array<str>> | no | `nil` |  |
| `extra_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `basic_auth_in_header` | Optional<bool> | no | `nil` | If True, send client credentials in Authorization header as Basic Auth instead of request body |
| `client_secret` | str | **yes** | **required** |  |
| `custom_headers` | Optional<Hash<str, str>> | no | `nil` |  |

### CreateOAuth2JwtRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `algorithm` | Optional<[CreateOAuth2JwtRequestAlgorithm](#createoauth2jwtrequestalgorithm)> | no | `nil` | JWT signing algorithm |
| `key_id` | Optional<str> | no | `nil` | Key ID (kid) for JWT header - useful for key rotation |
| `issuer` | str | **yes** | **required** | JWT issuer (iss claim) |
| `audience` | str | **yes** | **required** | JWT audience (aud claim) |
| `subject` | str | **yes** | **required** | JWT subject (sub claim) |
| `expiration_seconds` | Optional<int> | no | `nil` | Token expiration time in seconds |
| `extra_params` | Optional<Hash<str, str>> | no | `nil` | Additional custom claims to include in the JWT |
| `token_url` | str | **yes** | **required** | Token endpoint URL for exchanging JWT for access token |
| `scopes` | Optional<Array<str>> | no | `nil` | OAuth2 scopes to request when exchanging JWT for access token |
| `secret_key` | str | **yes** | **required** |  |

### CreatePhoneNumberResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `phone_number_id` | str | **yes** | **required** | Phone entity ID |

### CreatePrivateKeyJwtRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `algorithm` | Optional<[CreatePrivateKeyJwtRequestAlgorithm](#createprivatekeyjwtrequestalgorithm)> | no | `nil` | JWT signing algorithm |
| `key_id` | Optional<str> | no | `nil` | Key ID (kid) for JWT header - useful for key rotation |
| `issuer` | str | **yes** | **required** | JWT issuer (iss claim) |
| `audience` | str | **yes** | **required** | JWT audience (aud claim) |
| `subject` | str | **yes** | **required** | JWT subject (sub claim) |
| `expiration_seconds` | Optional<int> | no | `nil` | Token expiration time in seconds |
| `extra_params` | Optional<Hash<str, str>> | no | `nil` | Additional custom claims to include in the JWT |
| `secret_key` | str | **yes** | **required** |  |

### CreateProductParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'create_product'>> | no | `nil` |  |

### CreatePronunciationDictionaryResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the create pronunciation dictionary request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### CreateRentalBookingParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'create_rental_booking'>> | no | `nil` |  |

### CreateRentalServiceParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'create_rental_service'>> | no | `nil` |  |

### CreateResponseUnitTestRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataInput](#testfromconversationmetadatainput)> | no | `nil` | Metadata of a conversation this test was created from (if applicable). |
| `dynamic_variables` | Optional<Hash<str, Optional<CreateResponseUnitTestRequestDynamicVariablesValue>>> | no | `nil` | Dynamic variables to replace in the agent config during testing |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelInput](#conversationhistorytranscriptcommonmodelinput)>> | no | `nil` |  |
| `success_condition` | Optional<str> | no | `nil` | A prompt that evaluates whether the agent's response is successful. Should return True or False. |
| `success_examples` | Optional<Array<[AgentSuccessfulResponseExample](#agentsuccessfulresponseexample)>> | no | `nil` | Non-empty list of example responses that should be considered successful |
| `failure_examples` | Optional<Array<[AgentFailureResponseExample](#agentfailureresponseexample)>> | no | `nil` | Non-empty list of example responses that should be considered failures |
| `name` | str | **yes** | **required** |  |
| `parent_folder_id` | Optional<str> | no | `nil` | The ID of the parent folder. If not provided, the test will be created at the root level. |

### CreateSecretEnvironmentVariableRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | str | **yes** | **required** | Unique label for the environment variable. |
| `values` | Hash<str, [EnvironmentVariableSecretValueRequest](#environmentvariablesecretvaluerequest)> | **yes** | **required** | Environment-specific secret references. Must include 'production' key. |

### CreateServiceParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'create_service'>> | no | `nil` |  |

### CreateSimulationTestRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataInput](#testfromconversationmetadatainput)> | no | `nil` | Metadata of a conversation this test was created from (if applicable). |
| `dynamic_variables` | Optional<Hash<str, Optional<CreateSimulationTestRequestDynamicVariablesValue>>> | no | `nil` | Dynamic variables to replace in the agent config during testing |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelInput](#conversationhistorytranscriptcommonmodelinput)>> | no | `nil` |  |
| `success_condition` | Optional<str> | no | `nil` | A prompt that evaluates whether the agent's response is successful. Should return True or False. |
| `simulation_scenario` | Optional<str> | no | `nil` | Description of the simulation scenario and user persona for simulation tests. |
| `simulation_max_turns` | Optional<int> | no | `nil` | Maximum number of conversation turns for simulation tests. |
| `simulation_environment` | Optional<str> | no | `nil` | The environment to use when running this simulation test. If not provided, defaults to 'production'. |
| `tool_mock_config` | Optional<[SimulationToolMockBehaviorConfig](#simulationtoolmockbehaviorconfig)> | no | `nil` | Configuration for which tools to mock and fallback behavior. |
| `name` | str | **yes** | **required** |  |
| `parent_folder_id` | Optional<str> | no | `nil` | The ID of the parent folder. If not provided, the test will be created at the root level. |

### CreateSipTrunkPhoneNumberRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `phone_number` | str | **yes** | **required** | Phone number |
| `label` | str | **yes** | **required** | Label for the phone number |
| `supports_inbound` | Optional<bool> | no | `nil` | This field is deprecated and will be removed in the future. Whether this phone number supports inbound calls |
| `supports_outbound` | Optional<bool> | no | `nil` | This field is deprecated and will be removed in the future. Whether this phone number supports outbound calls |
| `inbound_trunk_config` | Optional<[InboundSipTrunkConfigRequestModel](#inboundsiptrunkconfigrequestmodel)> | no | `nil` |  |
| `outbound_trunk_config` | Optional<[OutboundSipTrunkConfigRequestModel](#outboundsiptrunkconfigrequestmodel)> | no | `nil` |  |

### CreateStaffParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'create_staff'>> | no | `nil` |  |

### CreateStringEnvironmentVariableRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | str | **yes** | **required** | Unique label for the environment variable. |
| `values` | Hash<str, str> | **yes** | **required** | Environment-specific values. Must include 'production' key. |

### CreateToolCallUnitTestRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataInput](#testfromconversationmetadatainput)> | no | `nil` | Metadata of a conversation this test was created from (if applicable). |
| `dynamic_variables` | Optional<Hash<str, Optional<CreateToolCallUnitTestRequestDynamicVariablesValue>>> | no | `nil` | Dynamic variables to replace in the agent config during testing |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelInput](#conversationhistorytranscriptcommonmodelinput)>> | no | `nil` |  |
| `tool_call_parameters` | Optional<[UnitTestToolCallEvaluationModelInput](#unittesttoolcallevaluationmodelinput)> | no | `nil` | How to evaluate the agent's tool call (if any). If empty, the tool call is not evaluated. |
| `check_any_tool_matches` | Optional<bool> | no | `nil` | If set to True this test will pass if any tool call returned by the LLM matches the criteria. Otherwise it will fail if more than one tool is returned by the agent. |
| `name` | str | **yes** | **required** |  |
| `parent_folder_id` | Optional<str> | no | `nil` | The ID of the parent folder. If not provided, the test will be created at the root level. |

### CreateTwilioPhoneNumberRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `phone_number` | str | **yes** | **required** | Phone number |
| `label` | str | **yes** | **required** | Label for the phone number |
| `supports_inbound` | Optional<bool> | no | `nil` | This field is deprecated and will be removed in the future. Whether this phone number supports inbound calls |
| `supports_outbound` | Optional<bool> | no | `nil` | This field is deprecated and will be removed in the future. Whether this phone number supports outbound calls |
| `sid` | str | **yes** | **required** | Twilio Account SID |
| `token` | str | **yes** | **required** | Twilio Auth Token |
| `region_config` | Optional<[RegionConfigRequest](#regionconfigrequest)> | no | `nil` | Twilio Additional Region Configuration |

### CustomGuardrailConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_enabled` | Optional<bool> | no | `nil` |  |
| `name` | str | **yes** | **required** | User-facing name for this guardrail |
| `prompt` | str | **yes** | **required** | Instruction describing what to block, e.g. 'don't talk about politics' |
| `execution_mode` | Optional<[GuardrailExecutionMode](#guardrailexecutionmode)> | no | `nil` |  |
| `trigger_action` | Optional<[CustomGuardrailConfigTriggerAction](#customguardrailconfigtriggeraction)> | no | `nil` |  |

### CustomGuardrailInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `config` | Optional<[CustomGuardrailsConfigInput](#customguardrailsconfiginput)> | no | `nil` |  |

### CustomGuardrailOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `config` | Optional<[CustomGuardrailsConfigOutput](#customguardrailsconfigoutput)> | no | `nil` |  |

### CustomGuardrailsConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `configs` | Optional<Array<[CustomGuardrailConfig](#customguardrailconfig)>> | no | `nil` |  |

### CustomGuardrailsConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `configs` | Optional<Array<[CustomGuardrailConfig](#customguardrailconfig)>> | no | `nil` |  |

### CustomHeaderAuthResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `header_name` | str | **yes** | **required** | The name of the header to use for authentication (e.g., 'x-api-key') |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### CustomLlm

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `url` | str | **yes** | **required** | The URL of the Chat Completions compatible endpoint |
| `model_id` | Optional<str> | no | `nil` | The model ID to be used if URL serves multiple models |
| `api_key` | Optional<CustomLlmApiKey> | no | `nil` | The API key for authentication. Either a workspace secret reference {'secret_id': '...'} or an environment variable reference {'env_var_label': '...'}. |
| `request_headers` | Optional<Hash<str, CustomLlmRequestHeadersValue>> | no | `nil` | Headers that should be included in the request |
| `api_version` | Optional<str> | no | `nil` | The API version to use for the request |
| `api_type` | Optional<[CustomLlmapiType](#customllmapitype)> | no | `nil` | The API type to use (chat_completions or responses) |

### CustomSipHeader

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `key` | str | **yes** | **required** | The SIP header name (e.g., 'X-Customer-ID') |
| `value` | str | **yes** | **required** | The header value |

### CustomSipHeaderWithDynamicVariable

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `key` | str | **yes** | **required** | The SIP header name (e.g., 'X-Customer-ID') |
| `value` | str | **yes** | **required** | The dynamic variable name to resolve |

### DashboardCallSuccessChartModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |

### DashboardCriteriaChartModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `criteria_id` | str | **yes** | **required** |  |

### DashboardDataCollectionChartModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `data_collection_id` | str | **yes** | **required** |  |

### DataCollectionResultCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `data_collection_id` | str | **yes** | **required** |  |
| `value` | Optional<Any> | no | `nil` |  |
| `json_schema` | Optional<[LiteralJsonSchemaProperty](#literaljsonschemaproperty)> | no | `nil` |  |
| `rationale` | str | **yes** | **required** |  |

### DefaultSharingGroupResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `group` | [WorkspaceGroupResponseModel](#workspacegroupresponsemodel) | **yes** | **required** | The group to share with by default |
| `permission_level` | [DefaultSharingGroupResponseModelPermissionLevel](#defaultsharinggroupresponsemodelpermissionlevel) | **yes** | **required** | The permission level to grant to the group |

### DeleteAgentRuleParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'delete_agent_rule'>> | no | `nil` |  |

### DeleteAssetParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'delete_asset'>> | no | `nil` |  |

### DeleteCalendarEventParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'delete_calendar_event'>> | no | `nil` |  |

### DeleteChapterResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the studio chapter deletion request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### DeleteClientInteractionParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'delete_client_interaction'>> | no | `nil` |  |

### DeleteClientParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'delete_client'>> | no | `nil` |  |

### DeleteDubbingResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the dubbing project. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### DeleteHistoryItemResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the deletion request. If the request was successful, the status will be 'ok'. Otherwise an error message with http code 500 will be returned. |

### DeleteHolidayParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'delete_holiday'>> | no | `nil` |  |

### DeleteLocationParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'delete_location'>> | no | `nil` |  |

### DeleteProductParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'delete_product'>> | no | `nil` |  |

### DeleteProjectResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the studio project deletion request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### DeleteRentalServiceParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'delete_rental_service'>> | no | `nil` |  |

### DeleteSampleResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the sample deletion request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### DeleteServiceParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'delete_service'>> | no | `nil` |  |

### DeleteStaffParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'delete_staff'>> | no | `nil` |  |

### DeleteVoiceResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the voice deletion request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### DeleteVoiceSampleResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the voice sample deletion request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### DeleteWorkspaceGroupMemberResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the workspace group member deletion request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### DeleteWorkspaceInviteResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the workspace invite deletion request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### DeleteWorkspaceWebhookResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the workspace webhook deletion request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### DependentAvailableAgentIdentifier

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` | If the agent is a transitive dependent, contains IDs of the resources that the agent depends on directly. |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableAgentIdentifierAccessLevel](#dependentavailableagentidentifieraccesslevel) | **yes** | **required** |  |

### DependentAvailableMcpServerIdentifier

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableMcpServerIdentifierAccessLevel](#dependentavailablemcpserveridentifieraccesslevel) | **yes** | **required** |  |

### DependentAvailableToolIdentifier

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableToolIdentifierAccessLevel](#dependentavailabletoolidentifieraccesslevel) | **yes** | **required** |  |

### DependentBranchInfo

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** |  |
| `agent_name` | str | **yes** | **required** |  |
| `branch_id` | str | **yes** | **required** |  |
| `branch_name` | str | **yes** | **required** |  |
| `is_main` | bool | **yes** | **required** |  |

### DependentIntegrationConnectionIdentifier

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |

### DependentPhoneNumberIdentifier

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `phone_number_id` | str | **yes** | **required** |  |
| `phone_number` | str | **yes** | **required** |  |
| `label` | str | **yes** | **required** |  |
| `provider` | [TelephonyProvider](#telephonyprovider) | **yes** | **required** |  |

### DependentUnknownAgentIdentifier

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` | If the agent is a transitive dependent, contains IDs of the resources that the agent depends on directly. |
| `id` | str | **yes** | **required** |  |

### DependentUnknownMcpServerIdentifier

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |

### DependentUnknownToolIdentifier

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |

### DetailedMusicResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `composition_plan` | [MusicPrompt](#musicprompt) | **yes** | **required** | The composition plan used to generate the song |
| `song_metadata` | [SongMetadata](#songmetadata) | **yes** | **required** | The metadata of the generated song |
| `words_timestamps` | Optional<Array<[WordTimestamp](#wordtimestamp)>> | no | `nil` | The timestamps of the words in the generated song |

### DetectedEntity

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | str | **yes** | **required** | The text that was identified as an entity. |
| `entity_type` | str | **yes** | **required** | The type of entity detected (e.g., 'credit_card', 'email_address', 'person_name'). |
| `start_char` | int | **yes** | **required** | Start character position in the transcript text. |
| `end_char` | int | **yes** | **required** | End character position in the transcript text. |

### DialogueInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | str | **yes** | **required** | The text to be converted into speech. |
| `voice_id` | str | **yes** | **required** | The ID of the voice to be used for the generation. |

### DialogueInputResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | str | **yes** | **required** | The text of the dialogue input line. |
| `voice_id` | str | **yes** | **required** | The ID of the voice used for this dialogue input line. |
| `voice_name` | str | **yes** | **required** | The name of the voice used for this dialogue input line. |

### DirectPublishingReadResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `read_id` | str | **yes** | **required** |  |
| `created_at_unix` | int | **yes** | **required** |  |
| `updated_at_unix` | int | **yes** | **required** |  |
| `word_count` | int | **yes** | **required** |  |
| `char_count` | int | **yes** | **required** |  |
| `chapters` | Array<[ReadMetadataChapterDbModel](#readmetadatachapterdbmodel)> | **yes** | **required** |  |
| `title` | Optional<str> | no | `nil` |  |
| `author` | Optional<str> | no | `nil` |  |
| `description` | Optional<str> | no | `nil` |  |
| `article_image_url` | Optional<str> | no | `nil` |  |
| `language` | Optional<str> | no | `nil` |  |
| `locale` | Optional<str> | no | `nil` |  |
| `display_mode` | Optional<[DirectPublishingReadResponseModelDisplayMode](#directpublishingreadresponsemodeldisplaymode)> | no | `nil` |  |
| `genre` | Optional<Array<[DirectPublishingReadResponseModelGenreItem](#directpublishingreadresponsemodelgenreitem)>> | no | `nil` |  |
| `fiction` | Optional<str> | no | `nil` |  |
| `content_type` | Optional<str> | no | `nil` |  |
| `original_file_type` | Optional<str> | no | `nil` |  |
| `target_audience` | Optional<[DirectPublishingReadResponseModelTargetAudience](#directpublishingreadresponsemodeltargetaudience)> | no | `nil` |  |
| `mature_content` | Optional<bool> | no | `nil` |  |
| `origin` | Optional<str> | no | `nil` |  |
| `publication_date` | Optional<str> | no | `nil` |  |
| `isbn` | Optional<str> | no | `nil` |  |
| `ean` | Optional<str> | no | `nil` |  |
| `legal_terms` | Optional<[ReadLegalTerms](#readlegalterms)> | no | `nil` |  |
| `content_guidelines_terms` | Optional<[ReadLegalTerms](#readlegalterms)> | no | `nil` |  |
| `last_updated_from_project_unix` | Optional<int> | no | `nil` |  |
| `publishing_project_id` | Optional<str> | no | `nil` |  |
| `publishing_state` | Optional<str> | no | `nil` |  |
| `publisher_profile_id` | Optional<str> | no | `nil` |  |
| `quality_score` | Optional<int> | no | `nil` |  |
| `publisher` | Optional<str> | no | `nil` |  |
| `copyright` | Optional<str> | no | `nil` |  |
| `subtitle` | Optional<str> | no | `nil` |  |
| `distribution_territories` | Optional<Array<str>> | no | `nil` |  |
| `edition` | Optional<str> | no | `nil` |  |
| `contributors` | Optional<Array<[Contributor](#contributor)>> | no | `nil` |  |
| `payout_type` | Optional<[DirectPublishingReadResponseModelPayoutType](#directpublishingreadresponsemodelpayouttype)> | no | `nil` |  |
| `list_price` | Optional<float> | no | `nil` |  |
| `currency` | Optional<Literal<'usd'>> | no | `nil` |  |
| `original_audio_project_export_id` | Optional<str> | no | `nil` |  |
| `original_audio_document_id` | Optional<str> | no | `nil` |  |
| `series_id` | Optional<str> | no | `nil` |  |
| `volume` | Optional<int> | no | `nil` |  |
| `published_at_unix` | Optional<int> | no | `nil` |  |
| `read_slug` | Optional<str> | no | `nil` |  |
| `preview_audio_object` | Optional<[PreviewAudioDbModel](#previewaudiodbmodel)> | no | `nil` |  |
| `sample_config` | Optional<[SampleConfigDbModel](#sampleconfigdbmodel)> | no | `nil` |  |
| `review` | Optional<[ReviewResponseModel](#reviewresponsemodel)> | no | `nil` |  |
| `voice_id` | Optional<str> | no | `nil` |  |
| `can_use_assistant` | Optional<bool> | no | `nil` |  |

### DiscountResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `discount_percent_off` | Optional<float> | no | `nil` | The discount applied to the invoice. E.g. [20.0f] for 20% off. |
| `discount_amount_off` | Optional<float> | no | `nil` | The discount applied to the invoice. E.g. [20.0f] for 20 cents off. |

### DoDubbingResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `dubbing_id` | str | **yes** | **required** | The ID of the dubbing project. |
| `expected_duration_sec` | float | **yes** | **required** | The expected duration of the dubbing project in seconds. |

### DocxExportOptions

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `include_speakers` | Optional<bool> | no | `nil` |  |
| `include_timestamps` | Optional<bool> | no | `nil` |  |
| `segment_on_silence_longer_than_s` | Optional<float> | no | `nil` |  |
| `max_segment_duration_s` | Optional<float> | no | `nil` |  |
| `max_segment_chars` | Optional<int> | no | `nil` |  |

### DtmfInputConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `dtmf_input_timeout` | Optional<float> | no | `nil` | Timeout in seconds to wait for additional DTMF digits |
| `hash_terminator` | Optional<bool> | no | `nil` | If true, pressing # immediately completes DTMF input |

### DubbedSegment

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `start_time` | float | **yes** | **required** |  |
| `end_time` | float | **yes** | **required** |  |
| `text` | Optional<str> | no | `nil` |  |
| `subtitles` | Array<[SegmentSubtitleFrame](#segmentsubtitleframe)> | **yes** | **required** |  |
| `audio_stale` | bool | **yes** | **required** |  |
| `media_ref` | Optional<[DubbingMediaReference](#dubbingmediareference)> | no | `nil` |  |

### DubbingMediaMetadata

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `content_type` | str | **yes** | **required** | The content type of the media. |
| `duration` | float | **yes** | **required** | The duration of the media in seconds. |

### DubbingMediaReference

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `src` | str | **yes** | **required** |  |
| `content_type` | str | **yes** | **required** |  |
| `bucket_name` | str | **yes** | **required** |  |
| `random_path_slug` | str | **yes** | **required** |  |
| `duration_secs` | float | **yes** | **required** |  |
| `is_audio` | bool | **yes** | **required** |  |
| `url` | str | **yes** | **required** |  |

### DubbingMetadataPageResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `dubs` | Array<[DubbingMetadataResponse](#dubbingmetadataresponse)> | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` |  |
| `has_more` | bool | **yes** | **required** |  |

### DubbingMetadataResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `dubbing_id` | str | **yes** | **required** | The ID of the dubbing project. |
| `name` | str | **yes** | **required** | The name of the dubbing project. |
| `status` | str | **yes** | **required** | The state this dub is in. |
| `source_language` | Optional<str> | no | `nil` | Once dubbing has completed, the ISO-639-1 code of the original media's source language. |
| `target_languages` | Array<str> | **yes** | **required** | The ISO-639-1 code of the languages this media has been dubbed into. |
| `editable` | Optional<bool> | no | `nil` | Whether this dubbing project is editable in Dubbing Studio. |
| `created_at` | dt.datetime | **yes** | **required** | Timestamp this dub was created. |
| `media_metadata` | Optional<[DubbingMediaMetadata](#dubbingmediametadata)> | no | `nil` | Metadata, such as the length in seconds and content type, of the dubbed content. |
| `error` | Optional<str> | no | `nil` | Error message indicate, if this dub has failed, what happened. |

### DubbingRenderResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | int | **yes** | **required** |  |
| `render_id` | str | **yes** | **required** |  |

### DubbingResource

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `version` | int | **yes** | **required** |  |
| `source_language` | str | **yes** | **required** |  |
| `target_languages` | Array<str> | **yes** | **required** |  |
| `input` | [DubbingMediaReference](#dubbingmediareference) | **yes** | **required** |  |
| `background` | Optional<[DubbingMediaReference](#dubbingmediareference)> | no | `nil` |  |
| `foreground` | Optional<[DubbingMediaReference](#dubbingmediareference)> | no | `nil` |  |
| `speaker_tracks` | Hash<str, [SpeakerTrack](#speakertrack)> | **yes** | **required** |  |
| `speaker_segments` | Hash<str, [SpeakerSegment](#speakersegment)> | **yes** | **required** |  |
| `renders` | Hash<str, [Render](#render)> | **yes** | **required** |  |

### DubbingTranscript

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `language` | str | **yes** | **required** |  |
| `utterances` | Array<[DubbingTranscriptUtterance](#dubbingtranscriptutterance)> | **yes** | **required** |  |

### DubbingTranscriptCharacter

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | Optional<str> | no | `nil` |  |
| `start_s` | Optional<float> | no | `nil` |  |
| `end_s` | Optional<float> | no | `nil` |  |

### DubbingTranscriptResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `language` | str | **yes** | **required** |  |
| `utterances` | Array<[DubbingTranscriptUtterance](#dubbingtranscriptutterance)> | **yes** | **required** |  |

### DubbingTranscriptUtterance

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | Optional<str> | no | `nil` |  |
| `speaker_id` | Optional<str> | no | `nil` |  |
| `start_s` | Optional<float> | no | `nil` |  |
| `end_s` | Optional<float> | no | `nil` |  |
| `words` | Optional<Array<[DubbingTranscriptWord](#dubbingtranscriptword)>> | no | `nil` |  |

### DubbingTranscriptWord

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | Optional<str> | no | `nil` |  |
| `word_type` | Optional<str> | no | `nil` |  |
| `start_s` | Optional<float> | no | `nil` |  |
| `end_s` | Optional<float> | no | `nil` |  |
| `characters` | Optional<Array<[DubbingTranscriptCharacter](#dubbingtranscriptcharacter)>> | no | `nil` |  |

### DubbingTranscriptsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `transcript_format` | [DubbingTranscriptsResponseModelTranscriptFormat](#dubbingtranscriptsresponsemodeltranscriptformat) | **yes** | **required** |  |
| `srt` | Optional<str> | no | `nil` |  |
| `webvtt` | Optional<str> | no | `nil` |  |
| `json_` | Annotated[Optional<[DubbingTranscript](#dubbingtranscript)>, FieldMetadata(alias='json')> | no | `nil` |  |

### DynamicVariableAssignment

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | Optional<Literal<'response'>> | no | `nil` | The source to extract the value from. Currently only 'response' is supported. |
| `dynamic_variable` | str | **yes** | **required** | The name of the dynamic variable to assign the extracted value to |
| `value_path` | str | **yes** | **required** | Dot notation path to extract the value from the source (e.g., 'user.name' or 'data.0.id') |
| `sanitize` | Optional<bool> | no | `nil` | If true, this assignment's value will be removed from the tool response before sending to the LLM and transcript, but still processed for variable assignment. |
| `preserve_native_type` | Optional<bool> | no | `nil` | If true, non-scalar values (lists, objects) extracted from the tool response are stored as their native type instead of being stringified to JSON. Enable this to use extracted arrays directly as list dynamic variables. |

### DynamicVariableSchemaOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `dynamic_variable` | str | **yes** | **required** | The name of the dynamic variable to use |

### DynamicVariableUpdateCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `variable_name` | str | **yes** | **required** |  |
| `old_value` | Optional<str> | no | `nil` |  |
| `new_value` | str | **yes** | **required** |  |
| `updated_at` | float | **yes** | **required** |  |
| `tool_name` | str | **yes** | **required** |  |
| `tool_request_id` | str | **yes** | **required** |  |

### DynamicVariablesConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `dynamic_variable_placeholders` | Optional<Hash<str, DynamicVariablesConfigInputDynamicVariablePlaceholdersValue>> | no | `nil` | A dictionary of dynamic variable placeholders and their values |

### DynamicVariablesConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `dynamic_variable_placeholders` | Optional<Hash<str, DynamicVariablesConfigOutputDynamicVariablePlaceholdersValue>> | no | `nil` | A dictionary of dynamic variable placeholders and their values |

### DynamicVariablesConfigWorkflowOverrideInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `dynamic_variable_placeholders` | Optional<Hash<str, Optional<DynamicVariablesConfigWorkflowOverrideInputDynamicVariablePlaceholdersValue>>> | no | `nil` | A dictionary of dynamic variable placeholders and their values |

### DynamicVariablesConfigWorkflowOverrideOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `dynamic_variable_placeholders` | Optional<Hash<str, Optional<DynamicVariablesConfigWorkflowOverrideOutputDynamicVariablePlaceholdersValue>>> | no | `nil` | A dictionary of dynamic variable placeholders and their values |

### EditChapterResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `chapter` | [ChapterWithContentResponseModel](#chapterwithcontentresponsemodel) | **yes** | **required** |  |

### EditProjectResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `project` | [ProjectResponse](#projectresponse) | **yes** | **required** |  |

### EditVoiceResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the voice edit request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### EditVoiceSettingsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the voice settings edit request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### EndCallToolConfig

_(no fields)_

### EndCallToolResultModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |
| `message` | Optional<str> | no | `nil` |  |

### EndCallTriggerAction

_(no fields)_

### EnvironmentAuthConnectionLocator

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `env_var_label` | str | **yes** | **required** |  |

### EnvironmentVariableAuthConnectionValue

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_connection_id` | str | **yes** | **required** |  |

### EnvironmentVariableAuthConnectionValueRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_connection_id` | str | **yes** | **required** |  |

### EnvironmentVariableResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `updated_at_unix_secs` | int | **yes** | **required** |  |
| `created_by_user_id` | Optional<str> | no | `nil` |  |
| `type` | [EnvironmentVariableResponseType](#environmentvariableresponsetype) | **yes** | **required** |  |
| `id` | str | **yes** | **required** |  |
| `workspace_id` | str | **yes** | **required** |  |
| `values` | EnvironmentVariableResponseValues | **yes** | **required** |  |

### EnvironmentVariableSecretValue

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `secret_id` | str | **yes** | **required** |  |

### EnvironmentVariableSecretValueRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `secret_id` | str | **yes** | **required** |  |

### EnvironmentVariablesListResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `environment_variables` | Array<[EnvironmentVariableResponse](#environmentvariableresponse)> | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` |  |
| `has_more` | bool | **yes** | **required** |  |

### EvaluationSettingsInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `criteria` | Optional<Array<[PromptEvaluationCriteria](#promptevaluationcriteria)>> | no | `nil` | Individual criteria that the agent should be evaluated against |

### EvaluationSettingsOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `criteria` | Optional<Array<[PromptEvaluationCriteria](#promptevaluationcriteria)>> | no | `nil` | Individual criteria that the agent should be evaluated against |

### ExactParameterEvaluationStrategy

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `expected_value` | str | **yes** | **required** | The exact string value that the parameter must match. |

### FeatureStatusCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enabled` | Optional<bool> | no | `nil` |  |
| `used` | Optional<bool> | no | `nil` |  |

### FeaturesUsageCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `language_detection` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `transfer_to_agent` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `transfer_to_number` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `multivoice` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `dtmf_tones` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `external_mcp_servers` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `pii_zrm_workspace` | Optional<bool> | no | `nil` |  |
| `pii_zrm_agent` | Optional<bool> | no | `nil` |  |
| `tool_dynamic_variable_updates` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `is_livekit` | Optional<bool> | no | `nil` |  |
| `voicemail_detection` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `dtmf_input` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `workflow` | Optional<[WorkflowFeaturesUsageCommonModel](#workflowfeaturesusagecommonmodel)> | no | `nil` |  |
| `agent_testing` | Optional<[TestsFeatureUsageCommonModel](#testsfeatureusagecommonmodel)> | no | `nil` |  |
| `versioning` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `file_input` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |

### FeedbackItem

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `thumbs_up` | bool | **yes** | **required** | Whether the user liked the generated item. |
| `feedback` | str | **yes** | **required** | The feedback text provided by the user. |
| `emotions` | bool | **yes** | **required** | Whether the user provided emotions. |
| `inaccurate_clone` | bool | **yes** | **required** | Whether the user thinks the clone is inaccurate. |
| `glitches` | bool | **yes** | **required** | Whether the user thinks there are glitches in the audio. |
| `audio_quality` | bool | **yes** | **required** | Whether the user thinks the audio quality is good. |
| `other` | bool | **yes** | **required** | Whether the user provided other feedback. |
| `review_status` | Optional<str> | no | `nil` | The review status of the item. Defaults to 'not_reviewed'. |

### FileInputConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enabled` | Optional<bool> | no | `nil` | When enabled, users may attach images or PDFs in chat when the LLM supports multimodal input. |
| `max_files_per_conversation` | Optional<int> | no | `nil` | Maximum number of files that can be uploaded per conversation. |

### FileInputConfigWorkflowOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enabled` | Optional<bool> | no | `nil` | When enabled, users may attach images or PDFs in chat when the LLM supports multimodal input. |
| `max_files_per_conversation` | Optional<int> | no | `nil` | Maximum number of files that can be uploaded per conversation. |

### FinalOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_final` | Annotated[Optional<Literal<True>>, FieldMetadata(alias='isFinal')> | no | `nil` | Indicates if the generation is complete. If set to `True`, `audio` will be null. |

### FinalOutputMulti

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_final` | Annotated[Literal<True>, FieldMetadata(alias='isFinal')> | no | `True` | Indicates this is the final message for the context. |
| `context_id` | Annotated[Optional<str>, FieldMetadata(alias='contextId')> | no | `nil` | The context_id for which this is the final message. |

### FineTuningResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_allowed_to_fine_tune` | Optional<bool> | no | `nil` | Whether the user is allowed to fine-tune the voice. |
| `state` | Optional<Hash<str, [FineTuningResponseModelStateValue](#finetuningresponsemodelstatevalue)>> | no | `nil` | The state of the fine-tuning process for each model. |
| `verification_failures` | Optional<Array<str>> | no | `nil` | List of verification failures in the fine-tuning process. |
| `verification_attempts_count` | Optional<int> | no | `nil` | The number of verification attempts in the fine-tuning process. |
| `manual_verification_requested` | Optional<bool> | no | `nil` | Whether a manual verification was requested for the fine-tuning process. |
| `language` | Optional<str> | no | `nil` | The language of the fine-tuning process. |
| `progress` | Optional<Hash<str, Optional<float>>> | no | `nil` | The progress of the fine-tuning process. |
| `message` | Optional<Hash<str, Optional<str>>> | no | `nil` | The message of the fine-tuning process. |
| `dataset_duration_seconds` | Optional<float> | no | `nil` | The duration of the dataset in seconds. |
| `verification_attempts` | Optional<Array<[VerificationAttemptResponse](#verificationattemptresponse)>> | no | `nil` | The number of verification attempts. |
| `slice_ids` | Optional<Array<str>> | no | `nil` | List of slice IDs. |
| `manual_verification` | Optional<[ManualVerificationResponse](#manualverificationresponse)> | no | `nil` | The manual verification of the fine-tuning process. |
| `max_verification_attempts` | Optional<int> | no | `nil` | The maximum number of verification attempts. |
| `next_max_verification_attempts_reset_unix_ms` | Optional<int> | no | `nil` | The next maximum verification attempts reset time in Unix milliseconds. |
| `finetuning_state` | Optional<Any> | no | `nil` |  |

### FlushContext

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `context_id` | str | **yes** | **required** | The context_id to flush. |
| `text` | Optional<str> | no | `nil` | The text to append to the buffer to be flushed. |
| `flush` | bool | **yes** | **required** | If true, flushes the audio buffer for the specified context. If false, the context will remain open and the text will be appended to the buffer to be generated. |

### FocusGuardrail

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_enabled` | Optional<bool> | no | `nil` |  |

### ForcedAlignmentCharacterResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | str | **yes** | **required** | The character that was transcribed. |
| `start` | float | **yes** | **required** | The start time of the character in seconds. |
| `end` | float | **yes** | **required** | The end time of the character in seconds. |

### ForcedAlignmentResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `characters` | Array<[ForcedAlignmentCharacterResponseModel](#forcedalignmentcharacterresponsemodel)> | **yes** | **required** | List of characters with their timing information. |
| `words` | Array<[ForcedAlignmentWordResponseModel](#forcedalignmentwordresponsemodel)> | **yes** | **required** | List of words with their timing information. |
| `loss` | float | **yes** | **required** | The average alignment loss/confidence score for the entire transcript, calculated from all characters. |

### ForcedAlignmentWordResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | str | **yes** | **required** | The word that was transcribed. |
| `start` | float | **yes** | **required** | The start time of the word in seconds. |
| `end` | float | **yes** | **required** | The end time of the word in seconds. |
| `loss` | float | **yes** | **required** | The average alignment loss/confidence score for this word, calculated from its constituent characters. |

### GenerationConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `chunk_length_schedule` | Optional<Array<float>> | no | `nil` | This is an advanced setting that most users shouldn't need to use. It relates to our     generation schedule.          Our WebSocket service incorporates a buffer system designed to optimize the Time To First Byte (TTFB) while maintaining high-quality streaming.          All text sent to the WebSocket endpoint is added to this buffer and only when that buffer reaches a certain size is an audio generation attempted. This is because our model provides higher quality audio when the model has longer inputs, and can deduce more context about how the text should be delivered.          The buffer ensures smooth audio data delivery and is automatically emptied with a final audio generation either when the stream is closed, or upon sending a `flush` command. We have advanced settings for changing the chunk schedule, which can improve latency at the cost of quality by generating audio more frequently with smaller text inputs.          The `chunk_length_schedule` determines the minimum amount of text that needs to be sent and present in our     buffer before audio starts being generated. This is to maximise the amount of context available to     the model to improve audio quality, whilst balancing latency of the returned audio chunks.          The default value for `chunk_length_schedule` is: [120, 160, 250, 290].          This means that the first chunk of audio will not be generated until you send text that     totals at least 120 characters long. The next chunk of audio will only be generated once a     further 160 characters have been sent. The third audio chunk will be generated after the     next 250 characters. Then the fourth, and beyond, will be generated in sets of at least 290 characters.          Customize this array to suit your needs. If you want to generate audio more frequently     to optimise latency, you can reduce the values in the array. Note that setting the values     too low may result in lower quality audio. Please test and adjust as needed.          Each item should be in the range 50-500. |

### GenerationSourceContext

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source_type` | Optional<Literal<'generation'>> | no | `nil` |  |
| `generation_id` | str | **yes** | **required** |  |
| `prompt` | Optional<str> | no | `nil` |  |
| `model_id` | str | **yes** | **required** |  |
| `model_provider` | Optional<str> | no | `nil` |  |
| `generation_session_id` | Optional<str> | no | `nil` |  |
| `session_iteration_id` | Optional<str> | no | `nil` |  |
| `altered_prompt` | Optional<str> | no | `nil` | Modified/enhanced prompt if different from original |
| `model_parameters` | Optional<Hash<str, Any>> | no | `nil` |  |
| `extend_video` | Optional<[ReferenceVideo](#referencevideo)> | no | `nil` |  |

### GetAgentEmbedResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** |  |
| `widget_config` | [WidgetConfigResponse](#widgetconfigresponse) | **yes** | **required** |  |

### GetAgentKnowledgebaseSizeResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `number_of_pages` | float | **yes** | **required** |  |

### GetAgentLinkResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** | The ID of the agent |
| `token` | Optional<[ConversationTokenDbModel](#conversationtokendbmodel)> | no | `nil` | The token data for the agent |

### GetAgentResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** | The ID of the agent |
| `name` | str | **yes** | **required** | The name of the agent |
| `conversation_config` | [ConversationalConfig](#conversationalconfig) | **yes** | **required** | The conversation configuration of the agent |
| `metadata` | [AgentMetadataResponseModel](#agentmetadataresponsemodel) | **yes** | **required** | The metadata of the agent |
| `platform_settings` | Optional<[AgentPlatformSettingsResponseModel](#agentplatformsettingsresponsemodel)> | no | `nil` | The platform settings of the agent |
| `phone_numbers` | Optional<Array<[GetAgentResponseModelPhoneNumbersItem](#getagentresponsemodelphonenumbersitem)>> | no | `nil` | The phone numbers of the agent |
| `whatsapp_accounts` | Optional<Array<[GetWhatsAppAccountResponse](#getwhatsappaccountresponse)>> | no | `nil` | WhatsApp accounts assigned to the agent |
| `workflow` | Optional<[AgentWorkflowResponseModel](#agentworkflowresponsemodel)> | no | `nil` | The workflow of the agent |
| `access_info` | Optional<[ResourceAccessInfo](#resourceaccessinfo)> | no | `nil` | The access information of the agent for the user |
| `tags` | Optional<Array<str>> | no | `nil` | Agent tags used to categorize the agent |
| `version_id` | Optional<str> | no | `nil` | The ID of the version the agent is on |
| `branch_id` | Optional<str> | no | `nil` | The ID of the branch the agent is on |
| `main_branch_id` | Optional<str> | no | `nil` | The ID of the main branch for this agent |

### GetAgentTestFolderResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `folder_path` | Optional<Array<[AgentTestFolderPathSegmentResponseModel](#agenttestfolderpathsegmentresponsemodel)>> | no | `nil` | The path from the root folder to the current folder. |
| `children_count` | Optional<int> | no | `nil` | The number of direct children (tests and subfolders) in this folder |

### GetAgentTopicsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `topics` | Array<[AgentTopicResponseModel](#agenttopicresponsemodel)> | **yes** | **required** |  |
| `window_start_unix_secs` | int | **yes** | **required** |  |
| `window_end_unix_secs` | int | **yes** | **required** |  |

### GetAgentsPageResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agents` | Array<[AgentSummaryResponseModel](#agentsummaryresponsemodel)> | **yes** | **required** | A list of agents and their metadata |
| `next_cursor` | Optional<str> | no | `nil` | The next cursor to paginate through the agents |
| `has_more` | bool | **yes** | **required** | Whether there are more agents to paginate through |

### GetAnalyticsSummaryParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'get_analytics_summary'>> | no | `nil` |  |

### GetAudioNativeProjectSettingsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enabled` | bool | **yes** | **required** | Whether the project is enabled. |
| `snapshot_id` | Optional<str> | no | `nil` | The ID of the latest snapshot of the project. |
| `settings` | Optional<[AudioNativeProjectSettingsResponseModel](#audionativeprojectsettingsresponsemodel)> | no | `nil` | The settings of the project. |

### GetBookingPageSettingsParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'get_booking_page_settings'>> | no | `nil` |  |

### GetBookingSlugStatusParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'get_booking_slug_status'>> | no | `nil` |  |

### GetChaptersResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `chapters` | Array<[ChapterResponse](#chapterresponse)> | **yes** | **required** |  |

### GetClientAppointmentsParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'get_client_appointments'>> | no | `nil` |  |

### GetClientByPhoneParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'get_client_by_phone'>> | no | `nil` |  |

### GetConvAiDashboardSettingsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `charts` | Optional<Array<[GetConvAiDashboardSettingsResponseModelChartsItem](#getconvaidashboardsettingsresponsemodelchartsitem)>> | no | `nil` |  |

### GetConvAiSettingsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_initiation_client_data_webhook` | Optional<[ConversationInitiationClientDataWebhook](#conversationinitiationclientdatawebhook)> | no | `nil` |  |
| `webhooks` | Optional<[ConvAiWebhooks](#convaiwebhooks)> | no | `nil` |  |
| `can_use_mcp_servers` | Optional<bool> | no | `nil` | Whether the workspace can use MCP servers |
| `rag_retention_period_days` | Optional<int> | no | `nil` |  |
| `conversation_embedding_retention_days` | Optional<int> | no | `nil` | Days to retain conversation embeddings. None means use the system default (30 days). |
| `default_livekit_stack` | Optional<[LivekitStackType](#livekitstacktype)> | no | `nil` |  |

### GetConversationResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** |  |
| `agent_name` | Optional<str> | no | `nil` |  |
| `status` | [GetConversationResponseModelStatus](#getconversationresponsemodelstatus) | **yes** | **required** |  |
| `user_id` | Optional<str> | no | `nil` |  |
| `branch_id` | Optional<str> | no | `nil` |  |
| `version_id` | Optional<str> | no | `nil` | The ID of the agent version used for this conversation |
| `metadata` | [ConversationHistoryMetadataCommonModel](#conversationhistorymetadatacommonmodel) | **yes** | **required** |  |
| `analysis` | Optional<[ConversationHistoryAnalysisCommonModel](#conversationhistoryanalysiscommonmodel)> | no | `nil` |  |
| `visited_agents` | Optional<Array<[VisitedAgentRef](#visitedagentref)>> | no | `nil` |  |
| `conversation_initiation_client_data` | Optional<[ConversationInitiationClientDataRequestOutput](#conversationinitiationclientdatarequestoutput)> | no | `nil` |  |
| `environment` | Optional<str> | no | `nil` |  |
| `conversation_id` | str | **yes** | **required** |  |
| `has_audio` | bool | **yes** | **required** |  |
| `has_user_audio` | bool | **yes** | **required** |  |
| `has_response_audio` | bool | **yes** | **required** |  |
| `transcript` | Array<[ConversationHistoryTranscriptResponseModel](#conversationhistorytranscriptresponsemodel)> | **yes** | **required** |  |

### GetConversationUsersPageResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `users` | Array<[ConversationUserResponseModel](#conversationuserresponsemodel)> | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` |  |
| `has_more` | bool | **yes** | **required** |  |

### GetConversationsPageResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversations` | Array<[ConversationSummaryResponseModel](#conversationsummaryresponsemodel)> | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` |  |
| `has_more` | bool | **yes** | **required** |  |

### GetKnowledgeBaseDependentAgentsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agents` | Array<[GetKnowledgeBaseDependentAgentsResponseModelAgentsItem](#getknowledgebasedependentagentsresponsemodelagentsitem)> | **yes** | **required** |  |
| `branches` | Optional<Array<[DependentBranchInfo](#dependentbranchinfo)>> | no | `nil` |  |
| `next_cursor` | Optional<str> | no | `nil` |  |
| `has_more` | bool | **yes** | **required** |  |

### GetKnowledgeBaseFileResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` | The ID of the parent folder, or null if the document is at the root level. |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentResponseModel](#knowledgebasefolderpathsegmentresponsemodel)>> | no | `nil` | The folder path segments leading to this entity, from root to parent folder. |
| `extracted_inner_html` | str | **yes** | **required** |  |
| `filename` | str | **yes** | **required** |  |

### GetKnowledgeBaseFolderResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` | The ID of the parent folder, or null if the document is at the root level. |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentResponseModel](#knowledgebasefolderpathsegmentresponsemodel)>> | no | `nil` | The folder path segments leading to this entity, from root to parent folder. |
| `children_count` | int | **yes** | **required** |  |
| `auto_sync_info` | Optional<[AutoSyncInfo](#autosyncinfo)> | no | `nil` |  |

### GetKnowledgeBaseListResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `documents` | Array<[GetKnowledgeBaseListResponseModelDocumentsItem](#getknowledgebaselistresponsemodeldocumentsitem)> | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` |  |
| `has_more` | bool | **yes** | **required** |  |

### GetKnowledgeBaseSummaryFileResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` | The ID of the parent folder, or null if the document is at the root level. |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` | The folder path segments leading to this entity, from root to parent folder. |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryFileResponseModelDependentAgentsItem](#getknowledgebasesummaryfileresponsemodeldependentagentsitem)> | **yes** | **required** | This field is deprecated and will be removed in the future, use the separate endpoint to get dependent agents instead. |

### GetKnowledgeBaseSummaryFolderResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` | The ID of the parent folder, or null if the document is at the root level. |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` | The folder path segments leading to this entity, from root to parent folder. |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryFolderResponseModelDependentAgentsItem](#getknowledgebasesummaryfolderresponsemodeldependentagentsitem)> | **yes** | **required** | This field is deprecated and will be removed in the future, use the separate endpoint to get dependent agents instead. |
| `children_count` | int | **yes** | **required** |  |
| `auto_sync_info` | Optional<[AutoSyncInfo](#autosyncinfo)> | no | `nil` |  |

### GetKnowledgeBaseSummaryTextResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` | The ID of the parent folder, or null if the document is at the root level. |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` | The folder path segments leading to this entity, from root to parent folder. |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryTextResponseModelDependentAgentsItem](#getknowledgebasesummarytextresponsemodeldependentagentsitem)> | **yes** | **required** | This field is deprecated and will be removed in the future, use the separate endpoint to get dependent agents instead. |

### GetKnowledgeBaseSummaryUrlResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` | The ID of the parent folder, or null if the document is at the root level. |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` | The folder path segments leading to this entity, from root to parent folder. |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryUrlResponseModelDependentAgentsItem](#getknowledgebasesummaryurlresponsemodeldependentagentsitem)> | **yes** | **required** | This field is deprecated and will be removed in the future, use the separate endpoint to get dependent agents instead. |
| `url` | str | **yes** | **required** |  |
| `auto_sync_info` | Optional<[AutoSyncInfo](#autosyncinfo)> | no | `nil` |  |

### GetKnowledgeBaseTextResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` | The ID of the parent folder, or null if the document is at the root level. |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentResponseModel](#knowledgebasefolderpathsegmentresponsemodel)>> | no | `nil` | The folder path segments leading to this entity, from root to parent folder. |
| `extracted_inner_html` | str | **yes** | **required** |  |

### GetKnowledgeBaseUrlResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` | The ID of the parent folder, or null if the document is at the root level. |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentResponseModel](#knowledgebasefolderpathsegmentresponsemodel)>> | no | `nil` | The folder path segments leading to this entity, from root to parent folder. |
| `url` | str | **yes** | **required** |  |
| `extracted_inner_html` | str | **yes** | **required** |  |
| `auto_sync_info` | Optional<[AutoSyncInfo](#autosyncinfo)> | no | `nil` |  |

### GetLibraryVoicesResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voices` | Array<[LibraryVoiceResponse](#libraryvoiceresponse)> | **yes** | **required** | The list of shared voices |
| `has_more` | bool | **yes** | **required** | Whether there are more shared voices in subsequent pages. |
| `total_count` | Optional<int> | no | `nil` | The total number of shared voices matching the query. |
| `last_sort_id` | Optional<str> | no | `nil` |  |

### GetLiveCountResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `count` | int | **yes** | **required** | The number of active ongoing conversations. |

### GetOrCreateRagIndexRequestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `document_id` | str | **yes** | **required** | ID of the knowledgebase document for which to retrieve the index |
| `create_if_missing` | bool | **yes** | **required** | Whether to create the RAG index if it does not exist |
| `model` | [EmbeddingModelEnum](#embeddingmodelenum) | **yes** | **required** | Embedding model to use for the RAG index |

### GetPhoneNumberInboundSipTrunkConfigResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `allowed_addresses` | Array<str> | **yes** | **required** | List of IP addresses that are allowed to use the trunk. Each item in the list can be an individual IP address or a Classless Inter-Domain Routing notation representing a CIDR block. |
| `allowed_numbers` | Optional<Array<str>> | no | `nil` | List of phone numbers that are allowed to use the trunk. |
| `media_encryption` | [SipMediaEncryptionEnum](#sipmediaencryptionenum) | **yes** | **required** |  |
| `has_auth_credentials` | bool | **yes** | **required** | Whether authentication credentials are configured |
| `username` | Optional<str> | no | `nil` | SIP trunk username (if available) |
| `remote_domains` | Optional<Array<str>> | no | `nil` | Domains of remote SIP servers used to validate TLS certificates. |

### GetPhoneNumberOutboundSipTrunkConfigResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `address` | str | **yes** | **required** | Hostname or IP the SIP INVITE is sent to |
| `transport` | [SipTrunkTransportEnum](#siptrunktransportenum) | **yes** | **required** | Protocol to use for SIP transport |
| `media_encryption` | [SipMediaEncryptionEnum](#sipmediaencryptionenum) | **yes** | **required** | Whether or not to encrypt media (data layer). |
| `headers` | Optional<Hash<str, str>> | no | `nil` | SIP headers for INVITE request |
| `has_auth_credentials` | bool | **yes** | **required** | Whether authentication credentials are configured |
| `username` | Optional<str> | no | `nil` | SIP trunk username (if available) |
| `has_outbound_trunk` | Optional<bool> | no | `nil` | Whether a LiveKit SIP outbound trunk is configured |

### GetPhoneNumberSipTrunkResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `phone_number` | str | **yes** | **required** | Phone number |
| `label` | str | **yes** | **required** | Label for the phone number |
| `supports_inbound` | Optional<bool> | no | `nil` | This field is deprecated and will be removed in the future. Whether this phone number supports inbound calls |
| `supports_outbound` | Optional<bool> | no | `nil` | This field is deprecated and will be removed in the future. Whether this phone number supports outbound calls |
| `phone_number_id` | str | **yes** | **required** | The ID of the phone number |
| `assigned_agent` | Optional<[PhoneNumberAgentInfo](#phonenumberagentinfo)> | no | `nil` | The agent that is assigned to the phone number |
| `provider_config` | Optional<[GetPhoneNumberOutboundSipTrunkConfigResponseModel](#getphonenumberoutboundsiptrunkconfigresponsemodel)> | no | `nil` |  |
| `outbound_trunk` | Optional<[GetPhoneNumberOutboundSipTrunkConfigResponseModel](#getphonenumberoutboundsiptrunkconfigresponsemodel)> | no | `nil` | Configuration of the Outbound SIP trunk - if configured. |
| `inbound_trunk` | Optional<[GetPhoneNumberInboundSipTrunkConfigResponseModel](#getphonenumberinboundsiptrunkconfigresponsemodel)> | no | `nil` | Configuration of the Inbound SIP trunk - if configured. |
| `livekit_stack` | [LivekitStackType](#livekitstacktype) | **yes** | **required** | Type of Livekit stack used for this number. |

### GetPhoneNumberTwilioResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `phone_number` | str | **yes** | **required** | Phone number |
| `label` | str | **yes** | **required** | Label for the phone number |
| `supports_inbound` | Optional<bool> | no | `nil` | This field is deprecated and will be removed in the future. Whether this phone number supports inbound calls |
| `supports_outbound` | Optional<bool> | no | `nil` | This field is deprecated and will be removed in the future. Whether this phone number supports outbound calls |
| `phone_number_id` | str | **yes** | **required** | The ID of the phone number |
| `assigned_agent` | Optional<[PhoneNumberAgentInfo](#phonenumberagentinfo)> | no | `nil` | The agent that is assigned to the phone number |

### GetProjectsResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `projects` | Array<[ProjectResponse](#projectresponse)> | **yes** | **required** | A list of projects with their metadata. |

### GetPronunciationDictionariesMetadataResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `pronunciation_dictionaries` | Array<[GetPronunciationDictionaryMetadataResponse](#getpronunciationdictionarymetadataresponse)> | **yes** | **required** | A list of pronunciation dictionaries and their metadata. |
| `next_cursor` | Optional<str> | no | `nil` | The next cursor to use for pagination. |
| `has_more` | bool | **yes** | **required** | Whether there are more pronunciation dictionaries to fetch. |

### GetPronunciationDictionaryMetadataResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** | The ID of the pronunciation dictionary. |
| `latest_version_id` | str | **yes** | **required** | The ID of the latest version of the pronunciation dictionary. |
| `latest_version_rules_num` | int | **yes** | **required** | The number of rules in the latest version of the pronunciation dictionary. |
| `name` | str | **yes** | **required** | The name of the pronunciation dictionary. |
| `permission_on_resource` | Optional<[GetPronunciationDictionaryMetadataResponseModelPermissionOnResource](#getpronunciationdictionarymetadataresponsemodelpermissiononresource)> | no | `nil` | The permission on the resource of the pronunciation dictionary. |
| `created_by` | str | **yes** | **required** | The user ID of the creator of the pronunciation dictionary. |
| `creation_time_unix` | int | **yes** | **required** | The creation time of the pronunciation dictionary in Unix timestamp. |
| `archived_time_unix` | Optional<int> | no | `nil` | The archive time of the pronunciation dictionary in Unix timestamp. |
| `description` | Optional<str> | no | `nil` | The description of the pronunciation dictionary. |

### GetPronunciationDictionaryWithRulesResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** | The ID of the pronunciation dictionary. |
| `latest_version_id` | str | **yes** | **required** | The ID of the latest version of the pronunciation dictionary. |
| `latest_version_rules_num` | int | **yes** | **required** | The number of rules in the latest version of the pronunciation dictionary. |
| `name` | str | **yes** | **required** | The name of the pronunciation dictionary. |
| `permission_on_resource` | Optional<[GetPronunciationDictionaryWithRulesResponseModelPermissionOnResource](#getpronunciationdictionarywithrulesresponsemodelpermissiononresource)> | no | `nil` | The permission on the resource of the pronunciation dictionary. |
| `created_by` | str | **yes** | **required** | The user ID of the creator of the pronunciation dictionary. |
| `creation_time_unix` | int | **yes** | **required** | The creation time of the pronunciation dictionary in Unix timestamp. |
| `archived_time_unix` | Optional<int> | no | `nil` | The archive time of the pronunciation dictionary in Unix timestamp. |
| `description` | Optional<str> | no | `nil` | The description of the pronunciation dictionary. |
| `rules` | Array<[GetPronunciationDictionaryWithRulesResponseModelRulesItem](#getpronunciationdictionarywithrulesresponsemodelrulesitem)> | **yes** | **required** | The rules in the latest version of the pronunciation dictionary. |

### GetResponseUnitTestResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataOutput](#testfromconversationmetadataoutput)> | no | `nil` | Metadata of a conversation this test was created from (if applicable). |
| `dynamic_variables` | Optional<Hash<str, Optional<GetResponseUnitTestResponseModelDynamicVariablesValue>>> | no | `nil` | Dynamic variables to replace in the agent config during testing |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelOutput](#conversationhistorytranscriptcommonmodeloutput)>> | no | `nil` |  |
| `success_condition` | Optional<str> | no | `nil` | A prompt that evaluates whether the agent's response is successful. Should return True or False. |
| `success_examples` | Optional<Array<[AgentSuccessfulResponseExample](#agentsuccessfulresponseexample)>> | no | `nil` | Non-empty list of example responses that should be considered successful |
| `failure_examples` | Optional<Array<[AgentFailureResponseExample](#agentfailureresponseexample)>> | no | `nil` | Non-empty list of example responses that should be considered failures |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |

### GetScheduleParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'get_schedule'>> | no | `nil` |  |
| `include_location_filter` | Optional<bool> | no | `nil` |  |

### GetSecretDependenciesResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `dependencies` | GetSecretDependenciesResponseModelDependencies | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` | Cursor for fetching the next page of dependencies |

### GetSimulationTestResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataOutput](#testfromconversationmetadataoutput)> | no | `nil` | Metadata of a conversation this test was created from (if applicable). |
| `dynamic_variables` | Optional<Hash<str, Optional<GetSimulationTestResponseModelDynamicVariablesValue>>> | no | `nil` | Dynamic variables to replace in the agent config during testing |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelOutput](#conversationhistorytranscriptcommonmodeloutput)>> | no | `nil` |  |
| `success_condition` | Optional<str> | no | `nil` | A prompt that evaluates whether the agent's response is successful. Should return True or False. |
| `simulation_scenario` | Optional<str> | no | `nil` | Description of the simulation scenario and user persona for simulation tests. |
| `simulation_max_turns` | Optional<int> | no | `nil` | Maximum number of conversation turns for simulation tests. |
| `simulation_environment` | Optional<str> | no | `nil` | The environment to use when running this simulation test. If not provided, defaults to 'production'. |
| `tool_mock_config` | Optional<[SimulationToolMockBehaviorConfig](#simulationtoolmockbehaviorconfig)> | no | `nil` | Configuration for which tools to mock and fallback behavior. |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |

### GetSpeechHistoryResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `history` | Array<[SpeechHistoryItemResponse](#speechhistoryitemresponse)> | **yes** | **required** | A list of speech history items. |
| `last_history_item_id` | Optional<str> | no | `nil` | The ID of the last history item. |
| `has_more` | bool | **yes** | **required** | Whether there are more history items to fetch. |
| `scanned_until` | Optional<int> | no | `nil` | The timestamp of the last history item. |

### GetTestInvocationsPageResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `meta` | Optional<[ListResponseMeta](#listresponsemeta)> | no | `nil` |  |
| `results` | Array<[TestInvocationSummaryResponseModel](#testinvocationsummaryresponsemodel)> | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` | Cursor for the next page of results |
| `has_more` | bool | **yes** | **required** | Whether there are more results available |

### GetTestSuiteInvocationResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `agent_id` | Optional<str> | no | `nil` |  |
| `branch_id` | Optional<str> | no | `nil` |  |
| `created_at` | Optional<int> | no | `nil` |  |
| `folder_id` | Optional<str> | no | `nil` |  |
| `test_runs` | Array<[UnitTestRunResponseModel](#unittestrunresponsemodel)> | **yes** | **required** |  |

### GetTestsPageResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tests` | Array<[UnitTestSummaryResponseModel](#unittestsummaryresponsemodel)> | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` |  |
| `has_more` | bool | **yes** | **required** |  |

### GetTestsSummariesByIdsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tests` | Hash<str, [UnitTestSummaryResponseModel](#unittestsummaryresponsemodel)> | **yes** | **required** | Dictionary mapping test IDs to their summary information |

### GetToolCallUnitTestResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataOutput](#testfromconversationmetadataoutput)> | no | `nil` | Metadata of a conversation this test was created from (if applicable). |
| `dynamic_variables` | Optional<Hash<str, Optional<GetToolCallUnitTestResponseModelDynamicVariablesValue>>> | no | `nil` | Dynamic variables to replace in the agent config during testing |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelOutput](#conversationhistorytranscriptcommonmodeloutput)>> | no | `nil` |  |
| `tool_call_parameters` | Optional<[UnitTestToolCallEvaluationModelOutput](#unittesttoolcallevaluationmodeloutput)> | no | `nil` | How to evaluate the agent's tool call (if any). If empty, the tool call is not evaluated. |
| `check_any_tool_matches` | Optional<bool> | no | `nil` | If set to True this test will pass if any tool call returned by the LLM matches the criteria. Otherwise it will fail if more than one tool is returned by the agent. |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |

### GetToolDependentAgentsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agents` | Array<[GetToolDependentAgentsResponseModelAgentsItem](#gettooldependentagentsresponsemodelagentsitem)> | **yes** | **required** |  |
| `branches` | Optional<Array<[DependentBranchInfo](#dependentbranchinfo)>> | no | `nil` |  |
| `next_cursor` | Optional<str> | no | `nil` |  |
| `has_more` | bool | **yes** | **required** |  |

### GetToolExecutionsPageResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `executions` | Array<[ToolExecutionResponseModel](#toolexecutionresponsemodel)> | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` |  |
| `has_more` | bool | **yes** | **required** |  |

### GetVoicesResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voices` | Array<[Voice](#voice)> | **yes** | **required** | A list of available voices. |

### GetVoicesV2Response

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voices` | Array<[Voice](#voice)> | **yes** | **required** | The list of voices matching the query. |
| `has_more` | bool | **yes** | **required** | Indicates whether there are more voices available in subsequent pages. Use this flag (and next_page_token) for reliable pagination instead of relying on total_count. |
| `total_count` | int | **yes** | **required** | The total count of voices matching the query. This value is a live snapshot that reflects the current state of the database and may change between requests as users create, modify, or delete voices. For reliable pagination, use the has_more flag instead of relying on this value. Only request this field when you actually need the total count (e.g., for display purposes), as calculating it incurs a performance cost. |
| `next_page_token` | Optional<str> | no | `nil` | Token to retrieve the next page of results. Pass this value to the next request to continue pagination. Null if there are no more results. |

### GetWhatsAppAccountResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `business_account_id` | str | **yes** | **required** |  |
| `phone_number_id` | str | **yes** | **required** |  |
| `business_account_name` | str | **yes** | **required** |  |
| `phone_number_name` | str | **yes** | **required** |  |
| `phone_number` | str | **yes** | **required** |  |
| `assigned_agent_id` | Optional<str> | no | `nil` |  |
| `enable_messaging` | Optional<bool> | no | `nil` |  |
| `enable_audio_message_response` | Optional<bool> | no | `nil` |  |
| `assigned_agent_name` | Optional<str> | no | `nil` |  |
| `is_token_expired` | Optional<bool> | no | `nil` |  |

### GetWorkspaceSecretsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `secrets` | Array<[ConvAiWorkspaceStoredSecretConfig](#convaiworkspacestoredsecretconfig)> | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` | Cursor for fetching the next page of secrets |

### GuardrailsV1Input

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | Optional<Literal<'1'>> | no | `nil` |  |
| `focus` | Optional<[FocusGuardrail](#focusguardrail)> | no | `nil` |  |
| `prompt_injection` | Optional<[PromptInjectionGuardrail](#promptinjectionguardrail)> | no | `nil` |  |
| `content` | Optional<[ContentGuardrailInput](#contentguardrailinput)> | no | `nil` |  |
| `custom` | Optional<[CustomGuardrailInput](#customguardrailinput)> | no | `nil` |  |

### GuardrailsV1Output

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | Optional<Literal<'1'>> | no | `nil` |  |
| `focus` | Optional<[FocusGuardrail](#focusguardrail)> | no | `nil` |  |
| `prompt_injection` | Optional<[PromptInjectionGuardrail](#promptinjectionguardrail)> | no | `nil` |  |
| `content` | Optional<[ContentGuardrailOutput](#contentguardrailoutput)> | no | `nil` |  |
| `custom` | Optional<[CustomGuardrailOutput](#customguardrailoutput)> | no | `nil` |  |

### HistoryAlignmentResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `characters` | Array<str> | **yes** | **required** | The characters in the alignment. |
| `character_start_times_seconds` | Array<float> | **yes** | **required** | The start times of the characters in seconds. |
| `character_end_times_seconds` | Array<float> | **yes** | **required** | The end times of the characters in seconds. |

### HistoryAlignmentsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `alignment` | [HistoryAlignmentResponseModel](#historyalignmentresponsemodel) | **yes** | **required** | The alignment of the text. |
| `normalized_alignment` | [HistoryAlignmentResponseModel](#historyalignmentresponsemodel) | **yes** | **required** | The normalized alignment of the text. |

### HistoryItemResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `state` | Optional<Any> | no | `nil` |  |
| `voice_category` | Optional<Any> | no | `nil` |  |

### HtmlExportOptions

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `include_speakers` | Optional<bool> | no | `nil` |  |
| `include_timestamps` | Optional<bool> | no | `nil` |  |
| `segment_on_silence_longer_than_s` | Optional<float> | no | `nil` |  |
| `max_segment_duration_s` | Optional<float> | no | `nil` |  |
| `max_segment_chars` | Optional<int> | no | `nil` |  |

### HttpValidationError

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `detail` | Optional<Array<[ValidationError](#validationerror)>> | no | `nil` |  |

### ImageAvatar

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `url` | Optional<str> | no | `nil` | The URL of the avatar |

### InboundSipTrunkConfigRequestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `allowed_addresses` | Optional<Array<str>> | no | `nil` | List of IP addresses that are allowed to use the trunk. Each item in the list can be an individual IP address or a Classless Inter-Domain Routing notation representing a CIDR block. |
| `allowed_numbers` | Optional<Array<str>> | no | `nil` | List of phone numbers that are allowed to use the trunk. |
| `media_encryption` | Optional<[SipMediaEncryptionEnum](#sipmediaencryptionenum)> | no | `nil` | Whether or not to encrypt media (data layer). |
| `credentials` | Optional<[SipTrunkCredentialsRequestModel](#siptrunkcredentialsrequestmodel)> | no | `nil` | Optional digest authentication credentials (username/password). |
| `remote_domains` | Optional<Array<str>> | no | `nil` | Domains of remote SIP servers used to validate TLS certificates. |

### InitialiseContext

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | str | **yes** | **required** | The initial text to synthesize. Should end with a single space. |
| `voice_settings` | Optional<[RealtimeVoiceSettings](#realtimevoicesettings)> | no | `nil` |  |
| `generation_config` | Optional<[GenerationConfig](#generationconfig)> | no | `nil` |  |
| `pronunciation_dictionary_locators` | Optional<Array<[PronunciationDictionaryLocator](#pronunciationdictionarylocator)>> | no | `nil` | Optional list of pronunciation dictionary locators to be used for this context. |
| `xi_api_key` | Optional<str> | no | `nil` | Your ElevenLabs API key. Required if not provided in the WebSocket connection's header or query parameters. This applies to the (re)initialization of this specific context. |
| `authorization` | Optional<str> | no | `nil` | Your authorization bearer token. Required if not provided in the WebSocket connection's header or query parameters. This applies to the (re)initialization of this specific context. |
| `context_id` | Optional<str> | no | `nil` | An identifier for the text-to-speech context. If omitted, a default context ID may be assigned by the server. If provided, this message will create a new context with this ID or re-initialize an existing one with the new settings and text. |

### InitializeConnection

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | Literal<' '> | no | `' '` | The initial text that must be sent is a blank space. |
| `voice_settings` | Optional<[RealtimeVoiceSettings](#realtimevoicesettings)> | no | `nil` |  |
| `generation_config` | Optional<[GenerationConfig](#generationconfig)> | no | `nil` |  |
| `pronunciation_dictionary_locators` | Optional<Array<[PronunciationDictionaryLocator](#pronunciationdictionarylocator)>> | no | `nil` | Optional list of pronunciation dictionary locators. If provided, these dictionaries will be used to     modify pronunciation of matching text. Must only be provided in the first message.          Note: Pronunciation dictionary matches will only be respected within a provided chunk. |
| `xi_api_key` | Annotated[Optional<str>, FieldMetadata(alias='xi-api-key')> | no | `nil` | Your ElevenLabs API key. This can only be included in the first message and is not needed if present in the header. |
| `authorization` | Optional<str> | no | `nil` | Your authorization bearer token. This can only be included in the first message and is not needed if present in the header. |

### InitializeConnectionMulti

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | Literal<' '> | no | `' '` | Must be a single space character to initiate the context. |
| `voice_settings` | Optional<[RealtimeVoiceSettings](#realtimevoicesettings)> | no | `nil` |  |
| `generation_config` | Optional<[GenerationConfig](#generationconfig)> | no | `nil` |  |
| `pronunciation_dictionary_locators` | Optional<Array<[PronunciationDictionaryLocator](#pronunciationdictionarylocator)>> | no | `nil` | Optional pronunciation dictionaries for this context. |
| `xi_api_key` | Optional<str> | no | `nil` | Your ElevenLabs API key (if not in header). For this context's first message only. |
| `authorization` | Optional<str> | no | `nil` | Your authorization bearer token (if not in header). For this context's first message only. |
| `context_id` | Optional<str> | no | `nil` | A unique identifier for the first context created in the websocket. If not provided, a default context will be used. |

### InputAudioChunkPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'input_audio_chunk'> | no | `'input_audio_chunk'` | The message type identifier. |
| `audio_base_64` | str | **yes** | **required** | Base64-encoded audio data. |
| `commit` | bool | **yes** | **required** | Whether to commit the transcription after this chunk. |
| `sample_rate` | int | **yes** | **required** | Sample rate of the audio in Hz. |
| `previous_text` | Optional<str> | no | `nil` | Send text context to the model. Can only be sent alongside the first audio chunk. If sent in a subsequent chunk, an error will be returned. |

### InvoiceResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `amount_due_cents` | int | **yes** | **required** | The amount due in cents. |
| `subtotal_cents` | Optional<int> | no | `nil` | The subtotal amount in cents before tax (exclusive of tax and discounts). |
| `tax_cents` | Optional<int> | no | `nil` | The tax amount in cents. |
| `discount_percent_off` | Optional<float> | no | `nil` | Deprecated. Use [discounts] instead. The discount applied to the invoice. E.g. [20.0f] for 20% off. |
| `discount_amount_off` | Optional<float> | no | `nil` | Deprecated. Use [discounts] instead. The discount applied to the invoice. E.g. [20.0f] for 20 cents off. |
| `discounts` | Array<[DiscountResponseModel](#discountresponsemodel)> | **yes** | **required** | The discounts applied to the invoice. |
| `next_payment_attempt_unix` | int | **yes** | **required** | The Unix timestamp of the next payment attempt. -1 when there is no next payment attempt. |
| `payment_intent_status` | Optional<[InvoiceResponseModelPaymentIntentStatus](#invoiceresponsemodelpaymentintentstatus)> | no | `nil` | Deprecated. Use [payment_intent_statusses] instead. The status of this invoice's first payment intent. None when there is no payment intent. |
| `payment_intent_statusses` | Array<[InvoiceResponseModelPaymentIntentStatussesItem](#invoiceresponsemodelpaymentintentstatussesitem)> | **yes** | **required** | The statuses of this invoice's payment intents. Empty list when there are no payment intents. |

### KeepContextAlive

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | Literal<''> | no | `''` | An empty string. This text is ignored by the server but its presence resets the inactivity timeout for the specified context. |
| `context_id` | str | **yes** | **required** | The identifier of the context to keep alive. |

### KnowledgeBaseContentSearchResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `results` | Array<[KnowledgeBaseContentSearchResult](#knowledgebasecontentsearchresult)> | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` |  |

### KnowledgeBaseContentSearchResult

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `document` | [KnowledgeBaseContentSearchResultDocument](#knowledgebasecontentsearchresultdocument) | **yes** | **required** |  |
| `search_snippet` | Optional<Array<[SearchHighlightSegment](#searchhighlightsegment)>> | no | `nil` |  |
| `score` | float | **yes** | **required** |  |

### KnowledgeBaseDocumentChunkResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `content` | str | **yes** | **required** |  |

### KnowledgeBaseDocumentMetadataResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `last_updated_at_unix_secs` | int | **yes** | **required** |  |
| `size_bytes` | int | **yes** | **required** |  |

### KnowledgeBaseFolderPathSegmentResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `name` | Optional<str> | no | `nil` |  |

### KnowledgeBaseFolderPathSegmentSummaryResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |

### KnowledgeBaseLocator

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | [KnowledgeBaseDocumentType](#knowledgebasedocumenttype) | **yes** | **required** | The type of the knowledge base |
| `name` | str | **yes** | **required** | The name of the knowledge base |
| `id` | str | **yes** | **required** | The ID of the knowledge base |
| `usage_mode` | Optional<[DocumentUsageModeEnum](#documentusagemodeenum)> | no | `nil` | The usage mode of the knowledge base |

### KnowledgeBaseSourceFileUrlResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `signed_url` | str | **yes** | **required** | Signed URL to download the source file directly |

### KnowledgeBaseSummaryBatchSuccessfulResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `data` | [KnowledgeBaseSummaryBatchSuccessfulResponseModelData](#knowledgebasesummarybatchsuccessfulresponsemodeldata) | **yes** | **required** |  |

### LanguageAddedResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | int | **yes** | **required** |  |

### LanguageDetectionToolConfig

_(no fields)_

### LanguageDetectionToolResultModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |
| `language` | Optional<str> | no | `nil` |  |

### LanguagePresetInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `overrides` | [ConversationConfigClientOverrideInput](#conversationconfigclientoverrideinput) | **yes** | **required** | The overrides for the language preset |
| `first_message_translation` | Optional<[LanguagePresetTranslation](#languagepresettranslation)> | no | `nil` | The translation of the first message |
| `soft_timeout_translation` | Optional<[LanguagePresetTranslation](#languagepresettranslation)> | no | `nil` | The translation of the soft timeout message |

### LanguagePresetOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `overrides` | [ConversationConfigClientOverrideOutput](#conversationconfigclientoverrideoutput) | **yes** | **required** | The overrides for the language preset |
| `first_message_translation` | Optional<[LanguagePresetTranslation](#languagepresettranslation)> | no | `nil` | The translation of the first message |
| `soft_timeout_translation` | Optional<[LanguagePresetTranslation](#languagepresettranslation)> | no | `nil` | The translation of the soft timeout message |

### LanguagePresetTranslation

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source_hash` | str | **yes** | **required** |  |
| `text` | str | **yes** | **required** |  |

### LanguageResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `language_id` | str | **yes** | **required** | The unique identifier of the language. |
| `name` | str | **yes** | **required** | The name of the language. |

### LibraryVoiceResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `public_owner_id` | str | **yes** | **required** | The public owner id of the voice. |
| `voice_id` | str | **yes** | **required** | The id of the voice. |
| `date_unix` | int | **yes** | **required** | The date the voice was added to the library in Unix time. |
| `name` | str | **yes** | **required** | The name of the voice. |
| `accent` | str | **yes** | **required** | The accent of the voice. |
| `gender` | str | **yes** | **required** | The gender of the voice. |
| `age` | str | **yes** | **required** | The age of the voice. |
| `descriptive` | str | **yes** | **required** | The descriptive of the voice. |
| `use_case` | str | **yes** | **required** | The use case of the voice. |
| `category` | [LibraryVoiceResponseModelCategory](#libraryvoiceresponsemodelcategory) | **yes** | **required** | The category of the voice. |
| `language` | Optional<str> | no | `nil` | The language of the voice. |
| `locale` | Optional<str> | no | `nil` | The locale of the voice. |
| `description` | Optional<str> | no | `nil` | The description of the voice. |
| `preview_url` | Optional<str> | no | `nil` | The preview URL of the voice. |
| `usage_character_count_1_y` | Annotated[int, FieldMetadata(alias='usage_character_count_1y')> | **yes** | **required** | The usage character count of the voice in the last year. |
| `usage_character_count_7_d` | Annotated[int, FieldMetadata(alias='usage_character_count_7d')> | **yes** | **required** | The usage character count of the voice in the last 7 days. |
| `play_api_usage_character_count_1_y` | Annotated[int, FieldMetadata(alias='play_api_usage_character_count_1y')> | **yes** | **required** | The play API usage character count of the voice in the last year. |
| `cloned_by_count` | int | **yes** | **required** | The number of times the voice has been cloned. |
| `rate` | Optional<float> | no | `nil` | The rate multiplier of the voice. |
| `fiat_rate` | Optional<float> | no | `nil` | The rate of the voice in USD per 1000 credits. null if default |
| `free_users_allowed` | bool | **yes** | **required** | Whether free users are allowed to use the voice. |
| `live_moderation_enabled` | bool | **yes** | **required** | Whether live moderation is enabled for the voice. |
| `featured` | bool | **yes** | **required** | Whether the voice is featured. |
| `verified_languages` | Optional<Array<[VerifiedVoiceLanguageResponseModel](#verifiedvoicelanguageresponsemodel)>> | no | `nil` | The verified languages of the voice. |
| `notice_period` | Optional<int> | no | `nil` | The notice period of the voice. |
| `instagram_username` | Optional<str> | no | `nil` | The Instagram username of the voice. |
| `twitter_username` | Optional<str> | no | `nil` | The Twitter username of the voice. |
| `youtube_username` | Optional<str> | no | `nil` | The YouTube username of the voice. |
| `tiktok_username` | Optional<str> | no | `nil` | The TikTok username of the voice. |
| `image_url` | Optional<str> | no | `nil` | The image URL of the voice. |
| `is_added_by_user` | Optional<bool> | no | `nil` | Whether the voice was added by the user. |
| `is_bookmarked` | Optional<bool> | no | `nil` | Whether the voice is bookmarked by the current user. Only relevant when is_added_by_user is True. |

### ListAgentRulesParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'list_agent_rules'>> | no | `nil` |  |

### ListAssetsParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `list_kwargs` | Optional<Hash<str, Any>> | no | `nil` |  |
| `smb_tool_type` | Optional<Literal<'list_assets'>> | no | `nil` |  |

### ListAuthConnectionsResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_connections` | Array<[ListAuthConnectionsResponseAuthConnectionsItem](#listauthconnectionsresponseauthconnectionsitem)> | **yes** | **required** |  |

### ListCalendarEventsParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'list_calendar_events'>> | no | `nil` |  |

### ListClientInteractionsParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'list_client_interactions'>> | no | `nil` |  |

### ListClientsParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'list_clients'>> | no | `nil` |  |

### ListHolidaysParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'list_holidays'>> | no | `nil` |  |

### ListLocationsParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'list_locations'>> | no | `nil` |  |

### ListMcpToolsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `success` | bool | **yes** | **required** | Indicates if the operation was successful. |
| `tools` | Array<[Tool](#tool)> | **yes** | **required** | A list of tools available on the MCP server. |
| `error_message` | Optional<str> | no | `nil` | Error message if the operation was not successful. |

### ListProductsParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `list_kwargs` | Optional<Hash<str, Any>> | no | `nil` |  |
| `smb_tool_type` | Optional<Literal<'list_products'>> | no | `nil` |  |

### ListRentalServicesParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `list_kwargs` | Optional<Hash<str, Any>> | no | `nil` |  |
| `smb_tool_type` | Optional<Literal<'list_rental_services'>> | no | `nil` |  |

### ListResponseAgentBranchSummary

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `meta` | Optional<[ListResponseMeta](#listresponsemeta)> | no | `nil` |  |
| `results` | Array<[AgentBranchSummary](#agentbranchsummary)> | **yes** | **required** |  |

### ListResponseMeta

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `total` | Optional<int> | no | `nil` |  |
| `page` | Optional<int> | no | `nil` |  |
| `page_size` | Optional<int> | no | `nil` |  |

### ListServicesParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `list_kwargs` | Optional<Hash<str, Any>> | no | `nil` |  |
| `smb_tool_type` | Optional<Literal<'list_services'>> | no | `nil` |  |

### ListStaffParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `list_kwargs` | Optional<Hash<str, Any>> | no | `nil` |  |
| `smb_tool_type` | Optional<Literal<'list_staff'>> | no | `nil` |  |

### ListWhatsAppAccountsResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `items` | Array<[GetWhatsAppAccountResponse](#getwhatsappaccountresponse)> | **yes** | **required** |  |

### LiteralJsonSchemaProperty

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | [LiteralJsonSchemaPropertyType](#literaljsonschemapropertytype) | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` | The description of the property. When set, the LLM will provide the value based on this description. Mutually exclusive with dynamic_variable, is_system_provided, and constant_value. |
| `enum` | Optional<Array<str>> | no | `nil` | List of allowed string values for string type parameters |
| `is_system_provided` | Optional<bool> | no | `nil` | If true, the value will be populated by the system at runtime. Used by API Integration Webhook tools for templating. Mutually exclusive with description, dynamic_variable, and constant_value. |
| `dynamic_variable` | Optional<str> | no | `nil` | The name of the dynamic variable to use for this property's value. Mutually exclusive with description, is_system_provided, and constant_value. |
| `constant_value` | Optional<LiteralJsonSchemaPropertyConstantValue> | no | `nil` | A constant value to use for this property. Mutually exclusive with description, dynamic_variable, and is_system_provided. |

### LlmCategoryUsage

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `irreversible_generation` | Optional<[LlmUsageOutput](#llmusageoutput)> | no | `nil` |  |
| `initiated_generation` | Optional<[LlmUsageOutput](#llmusageoutput)> | no | `nil` |  |

### LlmDeprecationConfigModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `warning_start_days` | int | **yes** | **required** | Number of days before the provider deprecation date when warnings start being shown. |
| `fallback_start_days` | int | **yes** | **required** | Number of days before the provider deprecation date when traffic starts being routed to the replacement model. |
| `fallback_complete_days` | int | **yes** | **required** | Number of days before the provider deprecation date when all traffic is routed to the replacement model. |
| `fallback_start_percentage` | int | **yes** | **required** | Percentage of traffic routed to the replacement model when fallback begins. |
| `fallback_complete_percentage` | int | **yes** | **required** | Percentage of traffic routed to the replacement model when fallback is complete. |

### LlmDeprecationInfoModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `llm` | [Llm](#llm) | **yes** | **required** | The identifier of the deprecated LLM model. |
| `is_deprecated` | bool | **yes** | **required** | Whether this model is currently deprecated. True if the model is immediately deprecated or within the warning period. |
| `is_in_warning_period` | Optional<bool> | no | `nil` | Whether this model is currently in the warning period before deprecation. |
| `is_in_fallback_period` | Optional<bool> | no | `nil` | Whether traffic is currently being progressively routed to the replacement model. |
| `fallback_percentage` | Optional<int> | no | `nil` | Current percentage of traffic being routed to the replacement model (0-100). |
| `provider_deprecation_date` | Optional<dt.datetime> | no | `nil` | The date when the model provider will deprecate this model. Null for immediately deprecated models. |
| `replacement_model` | Optional<[Llm](#llm)> | no | `nil` | The model that replaces this deprecated model. Traffic will be automatically routed to this model. |
| `deprecation_config` | Optional<[LlmDeprecationConfigModel](#llmdeprecationconfigmodel)> | no | `nil` | Custom deprecation timing configuration for this model. Null if using the default configuration. |

### LlmInfoModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `llm` | [Llm](#llm) | **yes** | **required** | The model identifier. |
| `is_checkpoint` | bool | **yes** | **required** | Whether this is a pinned checkpoint version of a model rather than a top-level alias. |
| `max_tokens_limit` | int | **yes** | **required** | Maximum number of output tokens the model can generate. |
| `max_context_limit` | int | **yes** | **required** | Maximum number of input context tokens the model supports. |
| `supports_image_input` | bool | **yes** | **required** | Whether the model supports image file inputs during conversations. |
| `supports_document_input` | bool | **yes** | **required** | Whether the model supports document (PDF) file inputs during conversations. |
| `supports_parallel_tool_calls` | bool | **yes** | **required** | Whether the model supports calling multiple tools in parallel. |
| `available_reasoning_efforts` | Optional<Array<[LlmReasoningEffort](#llmreasoningeffort)>> | no | `nil` | Available reasoning effort levels for this model. Null if the model does not support configurable reasoning. |
| `deprecation_info` | Optional<[LlmDeprecationInfoModel](#llmdeprecationinfomodel)> | no | `nil` | Deprecation information if this model is deprecated or scheduled for deprecation. Null if the model is not affected. |

### LlmInfoModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `llm` | [Llm](#llm) | **yes** | **required** | The model identifier. |
| `is_checkpoint` | bool | **yes** | **required** | Whether this is a pinned checkpoint version of a model rather than a top-level alias. |
| `max_tokens_limit` | int | **yes** | **required** | Maximum number of output tokens the model can generate. |
| `max_context_limit` | int | **yes** | **required** | Maximum number of input context tokens the model supports. |
| `supports_image_input` | bool | **yes** | **required** | Whether the model supports image file inputs during conversations. |
| `supports_document_input` | bool | **yes** | **required** | Whether the model supports document (PDF) file inputs during conversations. |
| `supports_parallel_tool_calls` | bool | **yes** | **required** | Whether the model supports calling multiple tools in parallel. |
| `available_reasoning_efforts` | Optional<Array<[LlmReasoningEffort](#llmreasoningeffort)>> | no | `nil` | Available reasoning effort levels for this model. Null if the model does not support configurable reasoning. |
| `deprecation_info` | Optional<[LlmDeprecationInfoModel](#llmdeprecationinfomodel)> | no | `nil` | Deprecation information if this model is deprecated or scheduled for deprecation. Null if the model is not affected. |

### LlmInputOutputTokensUsage

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `input` | Optional<[LlmTokensCategoryUsage](#llmtokenscategoryusage)> | no | `nil` |  |
| `input_cache_read` | Optional<[LlmTokensCategoryUsage](#llmtokenscategoryusage)> | no | `nil` |  |
| `input_cache_write` | Optional<[LlmTokensCategoryUsage](#llmtokenscategoryusage)> | no | `nil` |  |
| `output_total` | Optional<[LlmTokensCategoryUsage](#llmtokenscategoryusage)> | no | `nil` |  |

### LlmListResponseModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `llms` | Array<[LlmInfoModelInput](#llminfomodelinput)> | **yes** | **required** | List of all available LLM models that can be used with agents. |
| `default_deprecation_config` | [LlmDeprecationConfigModel](#llmdeprecationconfigmodel) | **yes** | **required** | The default deprecation timing configuration used for models without a custom override. |

### LlmListResponseModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `llms` | Array<[LlmInfoModelOutput](#llminfomodeloutput)> | **yes** | **required** | List of all available LLM models that can be used with agents. |
| `default_deprecation_config` | [LlmDeprecationConfigModel](#llmdeprecationconfigmodel) | **yes** | **required** | The default deprecation timing configuration used for models without a custom override. |

### LlmLiteralJsonSchemaProperty

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | [LlmLiteralJsonSchemaPropertyType](#llmliteraljsonschemapropertytype) | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `enum` | Optional<Array<str>> | no | `nil` | List of allowed string values for string type parameters |

### LlmParameterEvaluationStrategy

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `description` | str | **yes** | **required** | A description of the evaluation strategy to use for the test. |

### LlmSchemaOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `prompt` | Optional<str> | no | `nil` | Prompt override for the LLM. If not provided, the original schema description is used. |

### LlmTokensCategoryUsage

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tokens` | Optional<int> | no | `nil` |  |
| `price` | Optional<float> | no | `nil` |  |

### LlmUsageCalculatorLlmResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `llm` | [Llm](#llm) | **yes** | **required** |  |
| `price_per_minute` | float | **yes** | **required** |  |

### LlmUsageCalculatorResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `llm_prices` | Array<[LlmUsageCalculatorLlmResponseModel](#llmusagecalculatorllmresponsemodel)> | **yes** | **required** |  |

### LlmUsageInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `model_usage` | Optional<Hash<str, [LlmInputOutputTokensUsage](#llminputoutputtokensusage)>> | no | `nil` |  |

### LlmUsageOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `model_usage` | Optional<Hash<str, [LlmInputOutputTokensUsage](#llminputoutputtokensusage)>> | no | `nil` |  |

### ManualVerificationFileResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `file_id` | str | **yes** | **required** | The ID of the file. |
| `file_name` | str | **yes** | **required** | The name of the file. |
| `mime_type` | str | **yes** | **required** | The MIME type of the file. |
| `size_bytes` | int | **yes** | **required** | The size of the file in bytes. |
| `upload_date_unix` | int | **yes** | **required** | The date of the file in Unix time. |

### ManualVerificationResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `extra_text` | str | **yes** | **required** | The extra text of the manual verification. |
| `request_time_unix` | int | **yes** | **required** | The date of the manual verification in Unix time. |
| `files` | Array<[ManualVerificationFileResponse](#manualverificationfileresponse)> | **yes** | **required** | The files of the manual verification. |

### MatchAnythingParameterEvaluationStrategy

_(no fields)_

### McpServerConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `approval_policy` | Optional<[McpApprovalPolicy](#mcpapprovalpolicy)> | no | `nil` |  |
| `tool_approval_hashes` | Optional<Array<[McpToolApprovalHash](#mcptoolapprovalhash)>> | no | `nil` | List of tool approval hashes for per-tool approval when approval_policy is REQUIRE_APPROVAL_PER_TOOL |
| `transport` | Optional<[McpServerTransport](#mcpservertransport)> | no | `nil` | The transport type used to connect to the MCP server |
| `url` | McpServerConfigInputUrl | **yes** | **required** | The URL of the MCP server, if this contains a secret please store as a workspace secret, otherwise store as a plain string. Must use https |
| `secret_token` | Optional<McpServerConfigInputSecretToken> | no | `nil` | The secret token (Authorization header) stored as a workspace secret or in-place secret |
| `request_headers` | Optional<Hash<str, McpServerConfigInputRequestHeadersValue>> | no | `nil` | The headers included in the request |
| `auth_connection` | Optional<McpServerConfigInputAuthConnection> | no | `nil` | Optional auth connection to use for authentication with this MCP server |
| `name` | str | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` | If true, all tools from this MCP server will require pre-tool execution speech |
| `disable_interruptions` | Optional<bool> | no | `nil` | If true, the user will not be able to interrupt the agent while any tool from this MCP server is running. |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` | Predefined tool call sound type to play during tool execution for all tools from this MCP server |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` | Determines when the tool call sound should play for all tools from this MCP server |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` | Determines when and how all tools from this MCP server execute: 'immediate' executes the tool right away when requested by the LLM, 'post_tool_speech' waits for the agent to finish speaking before executing, 'async' runs the tool in the background without blocking - best for long-running operations. |
| `tool_config_overrides` | Optional<Array<[McpToolConfigOverrideInput](#mcptoolconfigoverrideinput)>> | no | `nil` | List of per-tool configuration overrides that override the server-level defaults for specific tools |
| `disable_compression` | Optional<bool> | no | `nil` | Whether to disable HTTP compression for this MCP server. Enable this if the server does not support compressed responses. |

### McpServerConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `approval_policy` | Optional<[McpApprovalPolicy](#mcpapprovalpolicy)> | no | `nil` |  |
| `tool_approval_hashes` | Optional<Array<[McpToolApprovalHash](#mcptoolapprovalhash)>> | no | `nil` | List of tool approval hashes for per-tool approval when approval_policy is REQUIRE_APPROVAL_PER_TOOL |
| `transport` | Optional<[McpServerTransport](#mcpservertransport)> | no | `nil` | The transport type used to connect to the MCP server |
| `url` | McpServerConfigOutputUrl | **yes** | **required** | The URL of the MCP server, if this contains a secret please store as a workspace secret, otherwise store as a plain string. Must use https |
| `secret_token` | Optional<McpServerConfigOutputSecretToken> | no | `nil` | The secret token (Authorization header) stored as a workspace secret or in-place secret |
| `request_headers` | Optional<Hash<str, McpServerConfigOutputRequestHeadersValue>> | no | `nil` | The headers included in the request |
| `auth_connection` | Optional<McpServerConfigOutputAuthConnection> | no | `nil` | Optional auth connection to use for authentication with this MCP server |
| `name` | str | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` | If true, all tools from this MCP server will require pre-tool execution speech |
| `disable_interruptions` | Optional<bool> | no | `nil` | If true, the user will not be able to interrupt the agent while any tool from this MCP server is running. |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` | Predefined tool call sound type to play during tool execution for all tools from this MCP server |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` | Determines when the tool call sound should play for all tools from this MCP server |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` | Determines when and how all tools from this MCP server execute: 'immediate' executes the tool right away when requested by the LLM, 'post_tool_speech' waits for the agent to finish speaking before executing, 'async' runs the tool in the background without blocking - best for long-running operations. |
| `tool_config_overrides` | Optional<Array<[McpToolConfigOverrideOutput](#mcptoolconfigoverrideoutput)>> | no | `nil` | List of per-tool configuration overrides that override the server-level defaults for specific tools |
| `disable_compression` | Optional<bool> | no | `nil` | Whether to disable HTTP compression for this MCP server. Enable this if the server does not support compressed responses. |

### McpServerMetadataResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `created_at` | int | **yes** | **required** |  |
| `owner_user_id` | Optional<str> | no | `nil` |  |

### McpServerResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `config` | [McpServerConfigOutput](#mcpserverconfigoutput) | **yes** | **required** |  |
| `access_info` | Optional<[ResourceAccessInfo](#resourceaccessinfo)> | no | `nil` | The access information of the MCP Server |
| `dependent_agents` | Optional<Array<[McpServerResponseModelDependentAgentsItem](#mcpserverresponsemodeldependentagentsitem)>> | no | `nil` | List of agents that depend on this MCP Server. |
| `metadata` | [McpServerMetadataResponseModel](#mcpservermetadataresponsemodel) | **yes** | **required** | The metadata of the MCP Server |

### McpServersResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `mcp_servers` | Array<[McpServerResponseModel](#mcpserverresponsemodel)> | **yes** | **required** |  |

### McpToolApprovalHash

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tool_name` | str | **yes** | **required** | The name of the MCP tool |
| `tool_hash` | str | **yes** | **required** | SHA256 hash of the tool's parameters and description |
| `approval_policy` | Optional<[McpToolApprovalPolicy](#mcptoolapprovalpolicy)> | no | `nil` | The approval policy for this tool |

### McpToolConfigOverrideInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tool_name` | str | **yes** | **required** | The name of the MCP tool |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` | If set, overrides the server's force_pre_tool_speech setting for this tool |
| `disable_interruptions` | Optional<bool> | no | `nil` | If set, overrides the server's disable_interruptions setting for this tool |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` | If set, overrides the server's tool_call_sound setting for this tool |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` | If set, overrides the server's tool_call_sound_behavior setting for this tool |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` | If set, overrides the server's execution_mode setting for this tool |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` | Dynamic variable assignments for this MCP tool |
| `input_overrides` | Optional<Hash<str, Optional<[McpToolConfigOverrideInputInputOverridesValue](#mcptoolconfigoverrideinputinputoverridesvalue)>>> | no | `nil` | Mapping of json path to input override configuration |
| `response_mocks` | Optional<Array<[ToolResponseMockConfigInput](#toolresponsemockconfiginput)>> | no | `nil` | Mock responses with optional parameter conditions. Evaluated top-to-bottom; first match wins. |

### McpToolConfigOverrideOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tool_name` | str | **yes** | **required** | The name of the MCP tool |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` | If set, overrides the server's force_pre_tool_speech setting for this tool |
| `disable_interruptions` | Optional<bool> | no | `nil` | If set, overrides the server's disable_interruptions setting for this tool |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` | If set, overrides the server's tool_call_sound setting for this tool |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` | If set, overrides the server's tool_call_sound_behavior setting for this tool |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` | If set, overrides the server's execution_mode setting for this tool |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` | Dynamic variable assignments for this MCP tool |
| `input_overrides` | Optional<Hash<str, Optional<[McpToolConfigOverrideOutputInputOverridesValue](#mcptoolconfigoverrideoutputinputoverridesvalue)>>> | no | `nil` | Mapping of json path to input override configuration |
| `response_mocks` | Optional<Array<[ToolResponseMockConfigOutput](#toolresponsemockconfigoutput)>> | no | `nil` | Mock responses with optional parameter conditions. Evaluated top-to-bottom; first match wins. |

### MessagesSearchResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `meta` | Optional<[ListResponseMeta](#listresponsemeta)> | no | `nil` |  |
| `results` | Array<[MessagesSearchResult](#messagessearchresult)> | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` | Cursor for the next page of results |
| `has_more` | bool | **yes** | **required** | Whether there are more results available |

### MessagesSearchResult

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_id` | str | **yes** | **required** |  |
| `agent_id` | str | **yes** | **required** |  |
| `agent_name` | Optional<str> | no | `nil` |  |
| `transcript_index` | int | **yes** | **required** |  |
| `chunk_text` | str | **yes** | **required** |  |
| `score` | float | **yes** | **required** |  |
| `conversation_start_time_unix_secs` | int | **yes** | **required** |  |

### MetricRecord

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `elapsed_time` | float | **yes** | **required** |  |

### Model

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `model_id` | str | **yes** | **required** | The unique identifier of the model. |
| `name` | Optional<str> | no | `nil` | The name of the model. |
| `can_be_finetuned` | Optional<bool> | no | `nil` | Whether the model can be finetuned. |
| `can_do_text_to_speech` | Optional<bool> | no | `nil` | Whether the model can do text-to-speech. |
| `can_do_voice_conversion` | Optional<bool> | no | `nil` | Whether the model can do voice conversion. |
| `can_use_style` | Optional<bool> | no | `nil` | Whether the model can use style. |
| `can_use_speaker_boost` | Optional<bool> | no | `nil` | Whether the model can use speaker boost. |
| `serves_pro_voices` | Optional<bool> | no | `nil` | Whether the model serves pro voices. |
| `token_cost_factor` | Optional<float> | no | `nil` | The cost factor for the model. |
| `description` | Optional<str> | no | `nil` | The description of the model. |
| `requires_alpha_access` | Optional<bool> | no | `nil` | Whether the model requires alpha access. |
| `max_characters_request_free_user` | Optional<int> | no | `nil` | The maximum number of characters that can be requested by a free user. |
| `max_characters_request_subscribed_user` | Optional<int> | no | `nil` | The maximum number of characters that can be requested by a subscribed user. |
| `maximum_text_length_per_request` | Optional<int> | no | `nil` | The maximum length of text that can be requested for this model. |
| `languages` | Optional<Array<[LanguageResponse](#languageresponse)>> | no | `nil` | The languages supported by the model. |
| `model_rates` | Optional<[ModelRatesResponseModel](#modelratesresponsemodel)> | no | `nil` | The rates for the model. |
| `concurrency_group` | Optional<str> | no | `nil` | The concurrency group for the model. |

### ModelRatesResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `character_cost_multiplier` | float | **yes** | **required** | The cost multiplier for characters. |
| `cost_discount_multiplier` | Optional<float> | no | `nil` | Discount multiplier applied to cost estimates. Defaults to 1.0 (no discount). |

### ModelSettingsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `stability` | Optional<float> | no | `nil` | Determines how stable the voice is and the randomness between each generation. Lower values introduce broader emotional range for the voice. Higher values can result in a monotonous voice with limited emotion. |

### ModerationConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `sexual` | Optional<[ThresholdGuardrail](#thresholdguardrail)> | no | `nil` |  |
| `violence` | Optional<[ThresholdGuardrail](#thresholdguardrail)> | no | `nil` |  |
| `violence_graphic` | Optional<[ThresholdGuardrail](#thresholdguardrail)> | no | `nil` |  |
| `harassment` | Optional<[ThresholdGuardrail](#thresholdguardrail)> | no | `nil` |  |
| `harassment_threatening` | Optional<[ThresholdGuardrail](#thresholdguardrail)> | no | `nil` |  |
| `hate` | Optional<[ThresholdGuardrail](#thresholdguardrail)> | no | `nil` |  |
| `hate_threatening` | Optional<[ThresholdGuardrail](#thresholdguardrail)> | no | `nil` |  |
| `self_harm_instructions` | Optional<[ThresholdGuardrail](#thresholdguardrail)> | no | `nil` |  |
| `self_harm` | Optional<[ThresholdGuardrail](#thresholdguardrail)> | no | `nil` |  |
| `self_harm_intent` | Optional<[ThresholdGuardrail](#thresholdguardrail)> | no | `nil` |  |
| `sexual_minors` | Optional<[ThresholdGuardrail](#thresholdguardrail)> | no | `nil` |  |

### ModerationGuardrailInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `execution_mode` | Optional<[GuardrailExecutionMode](#guardrailexecutionmode)> | no | `nil` |  |
| `config` | Optional<[ModerationConfig](#moderationconfig)> | no | `nil` |  |

### ModerationGuardrailOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `execution_mode` | Optional<[GuardrailExecutionMode](#guardrailexecutionmode)> | no | `nil` |  |
| `config` | Optional<[ModerationConfig](#moderationconfig)> | no | `nil` |  |

### MtlsAuthResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### MultiSourceConfigJson

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source_names` | Optional<Array<str>> | no | `nil` | List of source names to use (e.g., ['chunks', 'products']) |
| `source_overrides` | Optional<Array<[SourceConfigJson](#sourceconfigjson)>> | no | `nil` | Per-source parameter overrides |
| `merging_strategy` | Optional<[MergingStrategy](#mergingstrategy)> | no | `nil` | How to merge results from multiple sources |
| `final_top_k` | Optional<int> | no | `nil` | Final number of chunks after merging |
| `use_decomposition` | Optional<bool> | no | `nil` | Decompose complex queries |
| `use_reformulation` | Optional<bool> | no | `nil` | LLM reformulates query |
| `synthesize_response` | Optional<bool> | no | `nil` | LLM generates answer vs raw chunks |

### MultichannelSpeechToTextResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `transcripts` | Array<[SpeechToTextChunkResponseModel](#speechtotextchunkresponsemodel)> | **yes** | **required** | List of transcripts, one for each audio channel. Each transcript contains the text and word-level details for its respective channel. |
| `transcription_id` | Optional<str> | no | `nil` | The transcription ID of the response. |
| `audio_duration_secs` | Optional<float> | no | `nil` | The duration of the audio that was transcribed across all channels in seconds. |

### MultipartMusicResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `metadata` | [DetailedMusicResponse](#detailedmusicresponse) | **yes** | **required** | JSON metadata about the generated audio |
| `audio` | str | **yes** | **required** | Binary audio data in the requested format |

### MusicExploreSongSourceContext

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `music_explore_song_id` | str | **yes** | **required** |  |
| `title` | Optional<str> | no | `nil` |  |
| `description` | Optional<str> | no | `nil` |  |
| `bpm` | Optional<int> | no | `nil` |  |
| `vocals` | Optional<str> | no | `nil` |  |
| `lyrics` | Optional<str> | no | `nil` |  |

### MusicPrompt

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `positive_global_styles` | Array<str> | **yes** | **required** | The styles and musical directions that should be present in the entire song. Use English language for best result. |
| `negative_global_styles` | Array<str> | **yes** | **required** | The styles and musical directions that should not be present in the entire song. Use English language for best result. |
| `sections` | Array<[SongSection](#songsection)> | **yes** | **required** | The sections of the song. |

### MusicUploadResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `song_id` | str | **yes** | **required** | Unique identifier for the uploaded song |
| `composition_plan` | Optional<[MusicPrompt](#musicprompt)> | no | `nil` | The composition plan extracted from the uploaded song. Only present if `extract_composition_plan` was True in the request body |

### NoCoachingSettings

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'none'>> | no | `nil` |  |
| `memory_base_id` | Optional<str> | no | `nil` |  |

### NormalizedAlignment

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `char_start_times_ms` | Annotated[Optional<Array<int>>, FieldMetadata(alias='charStartTimesMs')> | no | `nil` | A list of starting times (in milliseconds) for each character in the normalized text as it     corresponds to the audio. For instance, the character 'H' starts at time 0 ms in the audio.     Note these times are relative to the returned chunk from the model, and not the     full audio response. |
| `char_durations_ms` | Annotated[Optional<Array<int>>, FieldMetadata(alias='charDurationsMs')> | no | `nil` | A list of durations (in milliseconds) for each character in the normalized text as it     corresponds to the audio. For instance, the character 'H' lasts for 3 ms in the audio.     Note these times are relative to the returned chunk from the model, and not the     full audio response. |
| `chars` | Optional<Array<str>> | no | `nil` | A list of characters in the normalized text sequence. For instance, the first character is 'H'.     Note that this list may contain spaces, punctuation, and other special characters.     The length of this list should be the same as the lengths of `charStartTimesMs` and `charDurationsMs`. |

### OAuth2ClientCredsResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `client_id` | str | **yes** | **required** |  |
| `token_url` | str | **yes** | **required** |  |
| `scopes` | Optional<Array<str>> | no | `nil` |  |
| `extra_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `basic_auth_in_header` | Optional<bool> | no | `nil` | If True, send client credentials in Authorization header as Basic Auth instead of request body |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### OAuth2JwtResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `algorithm` | Optional<[OAuth2JwtResponseAlgorithm](#oauth2jwtresponsealgorithm)> | no | `nil` | JWT signing algorithm |
| `key_id` | Optional<str> | no | `nil` | Key ID (kid) for JWT header - useful for key rotation |
| `issuer` | str | **yes** | **required** | JWT issuer (iss claim) |
| `audience` | str | **yes** | **required** | JWT audience (aud claim) |
| `subject` | str | **yes** | **required** | JWT subject (sub claim) |
| `expiration_seconds` | Optional<int> | no | `nil` | Token expiration time in seconds |
| `extra_params` | Optional<Hash<str, str>> | no | `nil` | Additional custom claims to include in the JWT |
| `token_url` | str | **yes** | **required** | Token endpoint URL for exchanging JWT for access token |
| `scopes` | Optional<Array<str>> | no | `nil` | OAuth2 scopes to request when exchanging JWT for access token |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### ObjectJsonSchemaPropertyInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'object'>> | no | `nil` |  |
| `required` | Optional<Array<str>> | no | `nil` |  |
| `description` | Optional<str> | no | `nil` |  |
| `properties` | Optional<Hash<str, 'ObjectJsonSchemaPropertyInputPropertiesValue'>> | no | `nil` |  |
| `required_constraints` | Optional<[RequiredConstraints](#requiredconstraints)> | no | `nil` |  |

### ObjectJsonSchemaPropertyOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'object'>> | no | `nil` |  |
| `required` | Optional<Array<str>> | no | `nil` |  |
| `description` | Optional<str> | no | `nil` |  |
| `properties` | Optional<Hash<str, 'ObjectJsonSchemaPropertyOutputPropertiesValue'>> | no | `nil` |  |
| `required_constraints` | Optional<[RequiredConstraints](#requiredconstraints)> | no | `nil` |  |

### OrbAvatar

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `color_1` | Optional<str> | no | `nil` | The first color of the avatar |
| `color_2` | Optional<str> | no | `nil` | The second color of the avatar |

### OrchestratorToolMockBehaviorConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `mocking_strategy` | Optional<[MockingStrategy](#mockingstrategy)> | no | `nil` | Which tools to mock: 'all' mocks every mockable tool, 'selected' mocks only those in mocked_tool_names/mocked_tool_ids, 'none' disables mocking. |
| `fallback_strategy` | Optional<[MockNoMatchBehavior](#mocknomatchbehavior)> | no | `nil` | Behavior when no mock matches a tool call. |
| `mocked_tool_names` | Optional<Array<str>> | no | `nil` | Tool names to mock. Only used when mocking_strategy is 'selected'. |

### OutboundCallRecipient

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | Optional<str> | no | `nil` |  |
| `phone_number` | Optional<str> | no | `nil` |  |
| `whatsapp_user_id` | Optional<str> | no | `nil` |  |
| `conversation_initiation_client_data` | Optional<[ConversationInitiationClientDataRequestInput](#conversationinitiationclientdatarequestinput)> | no | `nil` |  |

### OutboundCallRecipientResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `phone_number` | Optional<str> | no | `nil` |  |
| `whatsapp_user_id` | Optional<str> | no | `nil` |  |
| `status` | [BatchCallRecipientStatus](#batchcallrecipientstatus) | **yes** | **required** |  |
| `created_at_unix` | int | **yes** | **required** |  |
| `updated_at_unix` | int | **yes** | **required** |  |
| `conversation_id` | Optional<str> | no | `nil` |  |
| `conversation_initiation_client_data` | Optional<[ConversationInitiationClientDataInternal](#conversationinitiationclientdatainternal)> | no | `nil` |  |

### OutboundSipTrunkConfigRequestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `address` | str | **yes** | **required** | Hostname or IP the SIP INVITE is sent to. |
| `transport` | Optional<[SipTrunkTransportEnum](#siptrunktransportenum)> | no | `nil` | Protocol to use for SIP transport (signalling layer). |
| `media_encryption` | Optional<[SipMediaEncryptionEnum](#sipmediaencryptionenum)> | no | `nil` | Whether or not to encrypt media (data layer). |
| `headers` | Optional<Hash<str, str>> | no | `nil` | SIP X-* headers for INVITE request. These headers are sent as-is and may help identify this call. |
| `credentials` | Optional<[SipTrunkCredentialsRequestModel](#siptrunkcredentialsrequestmodel)> | no | `nil` | Optional digest authentication credentials (username/password). If not provided, ACL authentication is assumed. |

### PartialTranscriptPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'partial_transcript'> | no | `'partial_transcript'` | The message type identifier. |
| `text` | str | **yes** | **required** | Partial transcription text. |

### PatchWorkspaceWebhookResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the workspace webhook patch request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### PdfExportOptions

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `include_speakers` | Optional<bool> | no | `nil` |  |
| `include_timestamps` | Optional<bool> | no | `nil` |  |
| `segment_on_silence_longer_than_s` | Optional<float> | no | `nil` |  |
| `max_segment_duration_s` | Optional<float> | no | `nil` |  |
| `max_segment_chars` | Optional<int> | no | `nil` |  |

### PendingCancellationResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `kind` | Optional<Literal<'cancellation'>> | no | `nil` |  |
| `timestamp_seconds` | int | **yes** | **required** | The timestamp of the cancellation. |

### PendingClipTask

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | [PendingClipTaskType](#pendingcliptasktype) | **yes** | **required** |  |
| `progress` | Optional<float> | no | `nil` |  |
| `started_at_ms` | Optional<int> | no | `nil` |  |
| `updated_at_ms` | Optional<int> | no | `nil` |  |
| `metadata` | Optional<Hash<str, Any>> | no | `nil` |  |

### PendingSubscriptionSwitchResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `kind` | Optional<Literal<'change'>> | no | `nil` |  |
| `next_tier` | [PendingSubscriptionSwitchResponseModelNextTier](#pendingsubscriptionswitchresponsemodelnexttier) | **yes** | **required** | The tier to change to. |
| `next_billing_period` | [BillingPeriod](#billingperiod) | **yes** | **required** | The billing period to change to. |
| `timestamp_seconds` | int | **yes** | **required** | The timestamp of the change. |

### PhoneNumberAgentInfo

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** | The ID of the agent |
| `agent_name` | str | **yes** | **required** | The name of the agent |

### PhoneNumberDynamicVariableTransferDestination

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `phone_number` | str | **yes** | **required** |  |

### PhoneNumberTransfer

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `custom_sip_headers` | Optional<Array<[PhoneNumberTransferCustomSipHeadersItem](#phonenumbertransfercustomsipheadersitem)>> | no | `nil` | Custom SIP headers to include when transferring the call. Each header can be either a static value or a dynamic variable reference. |
| `transfer_destination` | [PhoneNumberTransferTransferDestination](#phonenumbertransfertransferdestination) | **yes** | **required** |  |
| `transfer_type` | Optional<[TransferTypeEnum](#transfertypeenum)> | no | `nil` |  |
| `post_dial_digits` | Optional<[PhoneNumberTransferPostDialDigits](#phonenumbertransferpostdialdigits)> | no | `nil` | DTMF digits to send after call connects (e.g., 'ww1234' for extension). Can be either a static value or a dynamic variable reference. Use 'w' for 0.5s pause. Only supported for Twilio transfers. |
| `phone_number` | Optional<str> | no | `nil` |  |
| `condition` | str | **yes** | **required** |  |

### PhoneNumberTransferDestination

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `phone_number` | str | **yes** | **required** |  |

### PlayDtmfResultErrorModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<Literal<'error'>> | no | `nil` |  |
| `error` | str | **yes** | **required** |  |
| `details` | Optional<str> | no | `nil` |  |

### PlayDtmfResultSuccessModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `dtmf_tones` | str | **yes** | **required** |  |
| `reason` | Optional<str> | no | `nil` |  |

### PlayDtmfToolConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `use_out_of_band_dtmf` | Optional<bool> | no | `nil` | If true, send DTMF tones out-of-band using RFC 4733 (useful for SIP calls only). If false, send DTMF as in-band audio tones (works for all call types). |
| `suppress_turn_after_dtmf` | Optional<bool> | no | `nil` | If true, the agent will not generate further speech after playing DTMF tones. This prevents the agent's speech from interfering with IVR systems. |

### PodcastBulletinMode

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `bulletin` | [PodcastBulletinModeData](#podcastbulletinmodedata) | **yes** | **required** | The voice settings for the bulletin. |

### PodcastBulletinModeData

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `host_voice_id` | str | **yes** | **required** | The ID of the host voice. |

### PodcastConversationMode

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation` | [PodcastConversationModeData](#podcastconversationmodedata) | **yes** | **required** | The voice settings for the conversation. |

### PodcastConversationModeData

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `host_voice_id` | str | **yes** | **required** | The ID of the host voice. |
| `guest_voice_id` | str | **yes** | **required** | The ID of the guest voice. |

### PodcastProjectResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `project` | [ProjectResponse](#projectresponse) | **yes** | **required** | The project associated with the created podcast. |

### PodcastTextSource

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'text'> | no | `'text'` | The type of source to create. |
| `text` | str | **yes** | **required** | The text to create the podcast from. |

### PodcastUrlSource

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'url'> | no | `'url'` | The type of source to create. |
| `url` | str | **yes** | **required** | The URL to create the podcast from. |

### PositionInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `x` | Optional<float> | no | `nil` |  |
| `y` | Optional<float> | no | `nil` |  |

### PositionOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `x` | float | **yes** | **required** |  |
| `y` | float | **yes** | **required** |  |

### PostAgentAvatarResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** |  |
| `avatar_url` | Optional<str> | no | `nil` |  |

### PostDialDigitsDynamicVariable

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | str | **yes** | **required** | The dynamic variable name to resolve |

### PostDialDigitsStatic

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | str | **yes** | **required** | DTMF digits to send after call connects (e.g., 'ww1234' for extension) |

### PostWorkspaceSecretResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'stored'> | no | `'stored'` |  |
| `secret_id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |

### PreviewAudioDbModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voice_id` | Optional<str> | no | `nil` |  |
| `text` | Optional<str> | no | `nil` |  |
| `audio_url` | str | **yes** | **required** |  |
| `hls_manifest_url` | Optional<str> | no | `nil` |  |
| `dash_manifest_url` | Optional<str> | no | `nil` |  |
| `is_auto_generated` | Optional<bool> | no | `nil` |  |
| `generated_at_unix` | Optional<int> | no | `nil` |  |

### PrivacyConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `record_voice` | Optional<bool> | no | `nil` | Whether to record the conversation |
| `retention_days` | Optional<int> | no | `nil` | The number of days to retain the conversation. -1 indicates there is no retention limit |
| `delete_transcript_and_pii` | Optional<bool> | no | `nil` | Whether to delete the transcript and PII |
| `delete_audio` | Optional<bool> | no | `nil` | Whether to delete the audio |
| `apply_to_existing_conversations` | Optional<bool> | no | `nil` | Whether to apply the privacy settings to existing conversations |
| `zero_retention_mode` | Optional<bool> | no | `nil` | Whether to enable zero retention mode - no PII data is stored |
| `conversation_history_redaction` | Optional<[ConversationHistoryRedactionConfig](#conversationhistoryredactionconfig)> | no | `nil` | Config for PII redaction in the conversation history |

### PrivacyConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `record_voice` | Optional<bool> | no | `nil` | Whether to record the conversation |
| `retention_days` | Optional<int> | no | `nil` | The number of days to retain the conversation. -1 indicates there is no retention limit |
| `delete_transcript_and_pii` | Optional<bool> | no | `nil` | Whether to delete the transcript and PII |
| `delete_audio` | Optional<bool> | no | `nil` | Whether to delete the audio |
| `apply_to_existing_conversations` | Optional<bool> | no | `nil` | Whether to apply the privacy settings to existing conversations |
| `zero_retention_mode` | Optional<bool> | no | `nil` | Whether to enable zero retention mode - no PII data is stored |
| `conversation_history_redaction` | Optional<[ConversationHistoryRedactionConfig](#conversationhistoryredactionconfig)> | no | `nil` | Config for PII redaction in the conversation history |

### PrivateKeyJwtResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `algorithm` | Optional<[PrivateKeyJwtResponseAlgorithm](#privatekeyjwtresponsealgorithm)> | no | `nil` | JWT signing algorithm |
| `key_id` | Optional<str> | no | `nil` | Key ID (kid) for JWT header - useful for key rotation |
| `issuer` | str | **yes** | **required** | JWT issuer (iss claim) |
| `audience` | str | **yes** | **required** | JWT audience (aud claim) |
| `subject` | str | **yes** | **required** | JWT subject (sub claim) |
| `expiration_seconds` | Optional<int> | no | `nil` | Token expiration time in seconds |
| `extra_params` | Optional<Hash<str, str>> | no | `nil` | Additional custom claims to include in the JWT |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### ProcedureRefResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `procedure_id` | str | **yes** | **required** | Procedure ID |
| `version_id` | Optional<str> | no | `nil` | Version ID of a version of the procedure. None for a procedure never versioned. |
| `name` | Optional<str> | no | `nil` | Procedure name |

### ProcedureSettings

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `compiler_mode` | Optional<[ProcedureCompilerMode](#procedurecompilermode)> | no | `nil` |  |

### ProjectCreationMetaResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `creation_progress` | float | **yes** | **required** | The progress of the project creation. |
| `status` | [ProjectCreationMetaResponseModelStatus](#projectcreationmetaresponsemodelstatus) | **yes** | **required** | The status of the project creation action. |
| `type` | [ProjectCreationMetaResponseModelType](#projectcreationmetaresponsemodeltype) | **yes** | **required** | The type of the project creation action. |

### ProjectExtendedResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `project_id` | str | **yes** | **required** | The ID of the project. |
| `name` | str | **yes** | **required** | The name of the project. |
| `create_date_unix` | int | **yes** | **required** | The creation date of the project. |
| `created_by_user_id` | Optional<str> | no | `nil` | The user ID who created the project. |
| `default_title_voice_id` | str | **yes** | **required** | The default title voice ID. |
| `default_paragraph_voice_id` | str | **yes** | **required** | The default paragraph voice ID. |
| `default_model_id` | str | **yes** | **required** | The default model ID. |
| `last_conversion_date_unix` | Optional<int> | no | `nil` | The last conversion date of the project. |
| `can_be_downloaded` | bool | **yes** | **required** | Whether the project can be downloaded. |
| `title` | Optional<str> | no | `nil` | The title of the project. |
| `author` | Optional<str> | no | `nil` | The author of the project. |
| `description` | Optional<str> | no | `nil` | The description of the project. |
| `genres` | Optional<Array<str>> | no | `nil` | List of genres of the project. |
| `cover_image_url` | Optional<str> | no | `nil` | The cover image URL of the project. |
| `target_audience` | Optional<[ProjectExtendedResponseModelTargetAudience](#projectextendedresponsemodeltargetaudience)> | no | `nil` | The target audience of the project. |
| `language` | Optional<str> | no | `nil` | Two-letter language code (ISO 639-1) of the language of the project. |
| `content_type` | Optional<str> | no | `nil` | The content type of the project, e.g. 'Novel' or 'Short Story' |
| `original_publication_date` | Optional<str> | no | `nil` | The original publication date of the project. |
| `mature_content` | Optional<bool> | no | `nil` | Whether the project contains mature content. |
| `isbn_number` | Optional<str> | no | `nil` | The ISBN number of the project. |
| `volume_normalization` | bool | **yes** | **required** | Whether the project uses volume normalization. |
| `state` | [ProjectState](#projectstate) | **yes** | **required** | The state of the project. |
| `access_level` | [ProjectExtendedResponseModelAccessLevel](#projectextendedresponsemodelaccesslevel) | **yes** | **required** | The access level of the project. |
| `fiction` | Optional<[ProjectExtendedResponseModelFiction](#projectextendedresponsemodelfiction)> | no | `nil` | Whether the project is fiction. |
| `quality_check_on` | bool | **yes** | **required** | Whether quality check is enabled for this project. |
| `quality_check_on_when_bulk_convert` | bool | **yes** | **required** | Whether quality check is enabled on the project when bulk converting. |
| `creation_meta` | Optional<[ProjectCreationMetaResponseModel](#projectcreationmetaresponsemodel)> | no | `nil` | The creation meta of the project. |
| `source_type` | Optional<[ProjectExtendedResponseModelSourceType](#projectextendedresponsemodelsourcetype)> | no | `nil` | The source type of the project. |
| `chapters_enabled` | Optional<bool> | no | `nil` | Whether chapters are enabled for the project. |
| `captions_enabled` | Optional<bool> | no | `nil` | Whether captions are enabled for the project. |
| `caption_style` | Optional<[CaptionStyleModel](#captionstylemodel)> | no | `nil` | Global styling to be applied to all captions |
| `caption_style_template_overrides` | Optional<Hash<str, Optional<[CaptionStyleModel](#captionstylemodel)>>> | no | `nil` | Styling changes that have been made to the provided templates |
| `public_share_id` | Optional<str> | no | `nil` | The public share ID of the project. |
| `aspect_ratio` | Optional<[ProjectExtendedResponseModelAspectRatio](#projectextendedresponsemodelaspectratio)> | no | `nil` | The aspect ratio of the project. |
| `agent_settings` | Optional<[StudioAgentSettingsModel](#studioagentsettingsmodel)> | no | `nil` | Agent-related settings for the project |
| `quality_preset` | [QualityPresetType](#qualitypresettype) | **yes** | **required** | The quality preset level of the project. |
| `chapters` | Array<[ChapterResponse](#chapterresponse)> | **yes** | **required** | List of chapters of the project and their metadata. |
| `pronunciation_dictionary_versions` | Array<[PronunciationDictionaryVersionResponseModel](#pronunciationdictionaryversionresponsemodel)> | **yes** | **required** | List of pronunciation dictionary versions of the project and their metadata. |
| `pronunciation_dictionary_locators` | Array<[PronunciationDictionaryLocatorResponseModel](#pronunciationdictionarylocatorresponsemodel)> | **yes** | **required** | List of pronunciation dictionary locators. |
| `apply_text_normalization` | [ProjectExtendedResponseModelApplyTextNormalization](#projectextendedresponsemodelapplytextnormalization) | **yes** | **required** | Whether text normalization is applied to the project. |
| `experimental` | Optional<Hash<str, Any>> | no | `nil` | Experimental features for the project. |
| `assets` | Array<[ProjectExtendedResponseModelAssetsItem](#projectextendedresponsemodelassetsitem)> | **yes** | **required** | List of uploaded assets e.g. videos, audios. |
| `voices` | Array<[ProjectVoiceResponseModel](#projectvoiceresponsemodel)> | **yes** | **required** | List of configured project voices. |
| `base_voices` | Optional<Array<[Voice](#voice)>> | no | `nil` | List of voices used by the project. |
| `publishing_read` | Optional<[DirectPublishingReadResponseModel](#directpublishingreadresponsemodel)> | no | `nil` | The ElevenReader data if the book was published. |

### ProjectExternalAudioResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `external_audio_id` | str | **yes** | **required** |  |
| `filename` | str | **yes** | **required** |  |
| `signed_url` | Optional<str> | no | `nil` |  |
| `offset_ms` | int | **yes** | **required** |  |
| `duration_ms` | int | **yes** | **required** |  |
| `start_time_ms` | int | **yes** | **required** |  |
| `end_time_ms` | int | **yes** | **required** |  |
| `order` | str | **yes** | **required** |  |
| `track_id` | str | **yes** | **required** |  |
| `created_at_ms` | int | **yes** | **required** |  |
| `updated_at_ms` | int | **yes** | **required** |  |
| `volume_gain_db` | Optional<float> | no | `nil` |  |
| `muted` | Optional<bool> | no | `nil` |  |
| `fade_in_ms` | Optional<int> | no | `nil` |  |
| `fade_out_ms` | Optional<int> | no | `nil` |  |
| `source_external_audio_id` | Optional<str> | no | `nil` |  |
| `source_asset_id` | Optional<str> | no | `nil` |  |
| `pending_block_ids` | Array<str> | **yes** | **required** |  |
| `pending_external_audio_ids` | Array<str> | **yes** | **required** |  |
| `speech_imported` | Optional<bool> | no | `nil` |  |
| `pending_task` | Optional<[PendingClipTask](#pendingcliptask)> | no | `nil` |  |
| `error` | Optional<str> | no | `nil` |  |
| `current_snapshot_id` | Optional<str> | no | `nil` |  |
| `source_context` | Optional<[ProjectExternalAudioResponseModelSourceContext](#projectexternalaudioresponsemodelsourcecontext)> | no | `nil` |  |
| `analysis` | Optional<[AudioAnalysis](#audioanalysis)> | no | `nil` |  |
| `import_speech_progress` | Optional<float> | no | `nil` |  |

### ProjectImageResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `image_id` | str | **yes** | **required** |  |
| `filename` | str | **yes** | **required** |  |
| `signed_url` | str | **yes** | **required** |  |
| `thumbnail_signed_url` | str | **yes** | **required** |  |
| `source` | Optional<Literal<'upload'>> | no | `nil` |  |
| `file_size_bytes` | int | **yes** | **required** |  |
| `width` | int | **yes** | **required** |  |
| `height` | int | **yes** | **required** |  |
| `track_id` | Optional<str> | no | `nil` |  |
| `offset_ms` | int | **yes** | **required** |  |
| `duration_ms` | int | **yes** | **required** |  |
| `order` | str | **yes** | **required** |  |
| `canvas_placement` | [CanvasPlacement](#canvasplacement) | **yes** | **required** |  |
| `animation` | Optional<[ClipAnimation](#clipanimation)> | no | `nil` |  |
| `opacity` | Optional<float> | no | `nil` |  |
| `created_at_ms` | int | **yes** | **required** |  |
| `updated_at_ms` | int | **yes** | **required** |  |
| `current_snapshot_id` | Optional<str> | no | `nil` |  |
| `source_asset_id` | Optional<str> | no | `nil` |  |

### ProjectMutedTracksResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `chapter_ids` | Array<str> | **yes** | **required** | List of chapter IDs that have muted tracks. |

### ProjectResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `project_id` | str | **yes** | **required** | The ID of the project. |
| `name` | str | **yes** | **required** | The name of the project. |
| `create_date_unix` | int | **yes** | **required** | The creation date of the project. |
| `created_by_user_id` | Optional<str> | no | `nil` | The user ID who created the project. |
| `default_title_voice_id` | str | **yes** | **required** | The default title voice ID. |
| `default_paragraph_voice_id` | str | **yes** | **required** | The default paragraph voice ID. |
| `default_model_id` | str | **yes** | **required** | The default model ID. |
| `last_conversion_date_unix` | Optional<int> | no | `nil` | The last conversion date of the project. |
| `can_be_downloaded` | bool | **yes** | **required** | Whether the project can be downloaded. |
| `title` | Optional<str> | no | `nil` | The title of the project. |
| `author` | Optional<str> | no | `nil` | The author of the project. |
| `description` | Optional<str> | no | `nil` | The description of the project. |
| `genres` | Optional<Array<str>> | no | `nil` | List of genres of the project. |
| `cover_image_url` | Optional<str> | no | `nil` | The cover image URL of the project. |
| `target_audience` | Optional<[ProjectResponseModelTargetAudience](#projectresponsemodeltargetaudience)> | no | `nil` | The target audience of the project. |
| `language` | Optional<str> | no | `nil` | Two-letter language code (ISO 639-1) of the language of the project. |
| `content_type` | Optional<str> | no | `nil` | The content type of the project, e.g. 'Novel' or 'Short Story' |
| `original_publication_date` | Optional<str> | no | `nil` | The original publication date of the project. |
| `mature_content` | Optional<bool> | no | `nil` | Whether the project contains mature content. |
| `isbn_number` | Optional<str> | no | `nil` | The ISBN number of the project. |
| `volume_normalization` | bool | **yes** | **required** | Whether the project uses volume normalization. |
| `state` | [ProjectState](#projectstate) | **yes** | **required** | The state of the project. |
| `access_level` | [ProjectResponseModelAccessLevel](#projectresponsemodelaccesslevel) | **yes** | **required** | The access level of the project. |
| `fiction` | Optional<[ProjectResponseModelFiction](#projectresponsemodelfiction)> | no | `nil` | Whether the project is fiction. |
| `quality_check_on` | bool | **yes** | **required** | Whether quality check is enabled for this project. |
| `quality_check_on_when_bulk_convert` | bool | **yes** | **required** | Whether quality check is enabled on the project when bulk converting. |
| `creation_meta` | Optional<[ProjectCreationMetaResponseModel](#projectcreationmetaresponsemodel)> | no | `nil` | The creation meta of the project. |
| `source_type` | Optional<[ProjectResponseModelSourceType](#projectresponsemodelsourcetype)> | no | `nil` | The source type of the project. |
| `chapters_enabled` | Optional<bool> | no | `nil` | Whether chapters are enabled for the project. |
| `captions_enabled` | Optional<bool> | no | `nil` | Whether captions are enabled for the project. |
| `caption_style` | Optional<[CaptionStyleModel](#captionstylemodel)> | no | `nil` | Global styling to be applied to all captions |
| `caption_style_template_overrides` | Optional<Hash<str, Optional<[CaptionStyleModel](#captionstylemodel)>>> | no | `nil` | Styling changes that have been made to the provided templates |
| `public_share_id` | Optional<str> | no | `nil` | The public share ID of the project. |
| `aspect_ratio` | Optional<[ProjectResponseModelAspectRatio](#projectresponsemodelaspectratio)> | no | `nil` | The aspect ratio of the project. |
| `agent_settings` | Optional<[StudioAgentSettingsModel](#studioagentsettingsmodel)> | no | `nil` | Agent-related settings for the project |

### ProjectSnapshotExtendedResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `project_snapshot_id` | str | **yes** | **required** | The ID of the project snapshot. |
| `project_id` | str | **yes** | **required** | The ID of the project. |
| `created_at_unix` | int | **yes** | **required** | The creation date of the project snapshot. |
| `name` | str | **yes** | **required** | The name of the project snapshot. |
| `audio_upload` | Optional<Hash<str, Any>> | no | `nil` | (Deprecated) |
| `zip_upload` | Optional<Hash<str, Any>> | no | `nil` | (Deprecated) |
| `character_alignments` | Array<[CharacterAlignmentModel](#characteralignmentmodel)> | **yes** | **required** |  |
| `audio_duration_secs` | float | **yes** | **required** | The total duration of the audio in seconds. |

### ProjectSnapshotResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `project_snapshot_id` | str | **yes** | **required** | The ID of the project snapshot. |
| `project_id` | str | **yes** | **required** | The ID of the project. |
| `created_at_unix` | int | **yes** | **required** | The creation date of the project snapshot. |
| `name` | str | **yes** | **required** | The name of the project snapshot. |
| `audio_upload` | Optional<Hash<str, Any>> | no | `nil` | (Deprecated) |
| `zip_upload` | Optional<Hash<str, Any>> | no | `nil` | (Deprecated) |

### ProjectSnapshotsResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `snapshots` | Array<[ProjectSnapshotResponse](#projectsnapshotresponse)> | **yes** | **required** | List of project snapshots. |

### ProjectVideoResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `video_id` | str | **yes** | **required** |  |
| `filename` | str | **yes** | **required** |  |
| `signed_url` | Optional<str> | no | `nil` |  |
| `signed_preview_url` | Optional<str> | no | `nil` |  |
| `offset_ms` | int | **yes** | **required** |  |
| `duration_ms` | int | **yes** | **required** |  |
| `volume_gain_db` | float | **yes** | **required** |  |
| `muted` | bool | **yes** | **required** |  |
| `fade_in_ms` | Optional<int> | no | `nil` |  |
| `fade_out_ms` | Optional<int> | no | `nil` |  |
| `width` | int | **yes** | **required** |  |
| `height` | int | **yes** | **required** |  |
| `codec` | str | **yes** | **required** |  |
| `order` | str | **yes** | **required** |  |
| `created_at_ms` | int | **yes** | **required** |  |
| `updated_at_ms` | int | **yes** | **required** |  |
| `error` | Optional<str> | no | `nil` |  |
| `thumbnail_interval_seconds` | float | **yes** | **required** |  |
| `thumbnail_size` | Array<int> | **yes** | **required** |  |
| `thumbnail_sheets` | Array<[ProjectVideoThumbnailSheetResponseModel](#projectvideothumbnailsheetresponsemodel)> | **yes** | **required** |  |
| `start_time_ms` | int | **yes** | **required** |  |
| `end_time_ms` | int | **yes** | **required** |  |
| `asset_preview_signed_url` | Optional<str> | no | `nil` |  |
| `source_video_id` | Optional<str> | no | `nil` |  |
| `source_asset_id` | Optional<str> | no | `nil` |  |
| `pending_block_ids` | Array<str> | **yes** | **required** |  |
| `pending_external_audio_ids` | Array<str> | **yes** | **required** |  |
| `speech_imported` | Optional<bool> | no | `nil` |  |
| `pending_task` | Optional<[PendingClipTask](#pendingcliptask)> | no | `nil` |  |
| `audio_track_ready` | Optional<bool> | no | `nil` |  |
| `export_format_ready` | Optional<bool> | no | `nil` |  |
| `current_snapshot_id` | Optional<str> | no | `nil` |  |
| `source_context` | Optional<[GenerationSourceContext](#generationsourcecontext)> | no | `nil` |  |
| `analysis` | Optional<[VideoAnalysis](#videoanalysis)> | no | `nil` |  |
| `canvas_placement` | Optional<[CanvasPlacement](#canvasplacement)> | no | `nil` |  |
| `animation` | Optional<[ClipAnimation](#clipanimation)> | no | `nil` |  |
| `playback_speed` | Optional<float> | no | `nil` |  |
| `opacity` | Optional<float> | no | `nil` |  |
| `track_id` | Optional<str> | no | `nil` |  |
| `preview_job_progress` | Optional<float> | no | `nil` |  |
| `import_speech_progress` | Optional<float> | no | `nil` |  |

### ProjectVideoThumbnailSheetResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `start_thumbnail_index` | int | **yes** | **required** |  |
| `thumbnail_count` | int | **yes** | **required** |  |
| `signed_cloud_url` | str | **yes** | **required** |  |

### ProjectVoiceResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voice_id` | str | **yes** | **required** |  |
| `alias` | str | **yes** | **required** |  |
| `stability` | float | **yes** | **required** |  |
| `similarity_boost` | float | **yes** | **required** |  |
| `style` | float | **yes** | **required** |  |
| `is_pinned` | bool | **yes** | **required** |  |
| `use_speaker_boost` | bool | **yes** | **required** |  |
| `volume_gain` | float | **yes** | **required** |  |
| `speed` | float | **yes** | **required** |  |

### PromptAgentApiModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `prompt` | Optional<str> | no | `nil` | The prompt for the agent |
| `llm` | Optional<[Llm](#llm)> | no | `nil` | The LLM to query with the prompt and the chat history. If using data residency, the LLM must be supported in the data residency environment |
| `reasoning_effort` | Optional<[LlmReasoningEffort](#llmreasoningeffort)> | no | `nil` | Reasoning effort of the model. Only available for some models. |
| `thinking_budget` | Optional<int> | no | `nil` | Max number of tokens used for thinking. Use 0 to turn off if supported by the model. |
| `temperature` | Optional<float> | no | `nil` | The temperature for the LLM |
| `max_tokens` | Optional<int> | no | `nil` | If greater than 0, maximum number of tokens the LLM can predict |
| `tool_ids` | Optional<Array<str>> | no | `nil` | A list of IDs of tools used by the agent |
| `built_in_tools` | Optional<[BuiltInToolsInput](#builtintoolsinput)> | no | `nil` | Built-in system tools to be used by the agent |
| `mcp_server_ids` | Optional<Array<str>> | no | `nil` | A list of MCP server ids to be used by the agent |
| `native_mcp_server_ids` | Optional<Array<str>> | no | `nil` | A list of Native MCP server ids to be used by the agent |
| `knowledge_base` | Optional<Array<[KnowledgeBaseLocator](#knowledgebaselocator)>> | no | `nil` | A list of knowledge bases to be used by the agent |
| `custom_llm` | Optional<[CustomLlm](#customllm)> | no | `nil` | Definition for a custom LLM if LLM field is set to 'CUSTOM_LLM' |
| `ignore_default_personality` | Optional<bool> | no | `nil` | Whether to remove the default personality lines from the system prompt |
| `rag` | Optional<[RagConfig](#ragconfig)> | no | `nil` | Configuration for RAG |
| `timezone` | Optional<str> | no | `nil` | Timezone for displaying current time in system prompt. If set, the current time will be included in the system prompt using this timezone. Must be a valid timezone name (e.g., 'America/New_York', 'Europe/London', 'UTC'). |
| `backup_llm_config` | Optional<[PromptAgentApiModelInputBackupLlmConfig](#promptagentapimodelinputbackupllmconfig)> | no | `nil` | Configuration for backup LLM cascading. Can be disabled, use system defaults, or specify custom order. |
| `cascade_timeout_seconds` | Optional<float> | no | `nil` | Time in seconds before cascading to backup LLM. Must be between 2 and 15 seconds. |
| `tools` | Optional<Array<[PromptAgentApiModelInputToolsItem](#promptagentapimodelinputtoolsitem)>> | no | `nil` | A list of tools that the agent can use over the course of the conversation, use tool_ids instead |

### PromptAgentApiModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `prompt` | Optional<str> | no | `nil` | The prompt for the agent |
| `llm` | Optional<[Llm](#llm)> | no | `nil` | The LLM to query with the prompt and the chat history. If using data residency, the LLM must be supported in the data residency environment |
| `reasoning_effort` | Optional<[LlmReasoningEffort](#llmreasoningeffort)> | no | `nil` | Reasoning effort of the model. Only available for some models. |
| `thinking_budget` | Optional<int> | no | `nil` | Max number of tokens used for thinking. Use 0 to turn off if supported by the model. |
| `temperature` | Optional<float> | no | `nil` | The temperature for the LLM |
| `max_tokens` | Optional<int> | no | `nil` | If greater than 0, maximum number of tokens the LLM can predict |
| `tool_ids` | Optional<Array<str>> | no | `nil` | A list of IDs of tools used by the agent |
| `built_in_tools` | Optional<[BuiltInToolsOutput](#builtintoolsoutput)> | no | `nil` | Built-in system tools to be used by the agent |
| `mcp_server_ids` | Optional<Array<str>> | no | `nil` | A list of MCP server ids to be used by the agent |
| `native_mcp_server_ids` | Optional<Array<str>> | no | `nil` | A list of Native MCP server ids to be used by the agent |
| `knowledge_base` | Optional<Array<[KnowledgeBaseLocator](#knowledgebaselocator)>> | no | `nil` | A list of knowledge bases to be used by the agent |
| `custom_llm` | Optional<[CustomLlm](#customllm)> | no | `nil` | Definition for a custom LLM if LLM field is set to 'CUSTOM_LLM' |
| `ignore_default_personality` | Optional<bool> | no | `nil` | Whether to remove the default personality lines from the system prompt |
| `rag` | Optional<[RagConfig](#ragconfig)> | no | `nil` | Configuration for RAG |
| `timezone` | Optional<str> | no | `nil` | Timezone for displaying current time in system prompt. If set, the current time will be included in the system prompt using this timezone. Must be a valid timezone name (e.g., 'America/New_York', 'Europe/London', 'UTC'). |
| `backup_llm_config` | Optional<[PromptAgentApiModelOutputBackupLlmConfig](#promptagentapimodeloutputbackupllmconfig)> | no | `nil` | Configuration for backup LLM cascading. Can be disabled, use system defaults, or specify custom order. |
| `cascade_timeout_seconds` | Optional<float> | no | `nil` | Time in seconds before cascading to backup LLM. Must be between 2 and 15 seconds. |
| `tools` | Optional<Array<[PromptAgentApiModelOutputToolsItem](#promptagentapimodeloutputtoolsitem)>> | no | `nil` | A list of tools that the agent can use over the course of the conversation, use tool_ids instead |

### PromptAgentApiModelOverrideConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `prompt` | Optional<bool> | no | `nil` | Whether to allow overriding the prompt field. |
| `llm` | Optional<bool> | no | `nil` | Whether to allow overriding the llm field. |
| `tool_ids` | Optional<bool> | no | `nil` | Whether to allow overriding the tool_ids field. |
| `native_mcp_server_ids` | Optional<bool> | no | `nil` | Whether to allow overriding the native_mcp_server_ids field. |
| `knowledge_base` | Optional<bool> | no | `nil` | Whether to allow overriding the knowledge_base field. |

### PromptAgentApiModelOverrideInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `prompt` | Optional<str> | no | `nil` | The prompt for the agent |
| `llm` | Optional<[Llm](#llm)> | no | `nil` | The LLM to query with the prompt and the chat history. If using data residency, the LLM must be supported in the data residency environment |
| `tool_ids` | Optional<Array<str>> | no | `nil` | A list of IDs of tools used by the agent |
| `native_mcp_server_ids` | Optional<Array<str>> | no | `nil` | A list of Native MCP server ids to be used by the agent |
| `knowledge_base` | Optional<Array<[KnowledgeBaseLocator](#knowledgebaselocator)>> | no | `nil` | A list of knowledge bases to be used by the agent |

### PromptAgentApiModelOverrideOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `prompt` | Optional<str> | no | `nil` | The prompt for the agent |
| `llm` | Optional<[Llm](#llm)> | no | `nil` | The LLM to query with the prompt and the chat history. If using data residency, the LLM must be supported in the data residency environment |
| `tool_ids` | Optional<Array<str>> | no | `nil` | A list of IDs of tools used by the agent |
| `native_mcp_server_ids` | Optional<Array<str>> | no | `nil` | A list of Native MCP server ids to be used by the agent |
| `knowledge_base` | Optional<Array<[KnowledgeBaseLocator](#knowledgebaselocator)>> | no | `nil` | A list of knowledge bases to be used by the agent |

### PromptAgentApiModelWorkflowOverrideInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `prompt` | Optional<str> | no | `nil` | The prompt for the agent |
| `llm` | Optional<[Llm](#llm)> | no | `nil` | The LLM to query with the prompt and the chat history. If using data residency, the LLM must be supported in the data residency environment |
| `reasoning_effort` | Optional<[LlmReasoningEffort](#llmreasoningeffort)> | no | `nil` | Reasoning effort of the model. Only available for some models. |
| `thinking_budget` | Optional<int> | no | `nil` | Max number of tokens used for thinking. Use 0 to turn off if supported by the model. |
| `temperature` | Optional<float> | no | `nil` | The temperature for the LLM |
| `max_tokens` | Optional<int> | no | `nil` | If greater than 0, maximum number of tokens the LLM can predict |
| `tool_ids` | Optional<Array<str>> | no | `nil` | A list of IDs of tools used by the agent |
| `built_in_tools` | Optional<[BuiltInToolsWorkflowOverrideInput](#builtintoolsworkflowoverrideinput)> | no | `nil` | Built-in system tools to be used by the agent |
| `mcp_server_ids` | Optional<Array<str>> | no | `nil` | A list of MCP server ids to be used by the agent |
| `native_mcp_server_ids` | Optional<Array<str>> | no | `nil` | A list of Native MCP server ids to be used by the agent |
| `knowledge_base` | Optional<Array<[KnowledgeBaseLocator](#knowledgebaselocator)>> | no | `nil` | A list of knowledge bases to be used by the agent |
| `custom_llm` | Optional<[CustomLlm](#customllm)> | no | `nil` | Definition for a custom LLM if LLM field is set to 'CUSTOM_LLM' |
| `ignore_default_personality` | Optional<bool> | no | `nil` | Whether to remove the default personality lines from the system prompt |
| `rag` | Optional<[RagConfigWorkflowOverride](#ragconfigworkflowoverride)> | no | `nil` | Configuration for RAG |
| `timezone` | Optional<str> | no | `nil` | Timezone for displaying current time in system prompt. If set, the current time will be included in the system prompt using this timezone. Must be a valid timezone name (e.g., 'America/New_York', 'Europe/London', 'UTC'). |
| `backup_llm_config` | Optional<PromptAgentApiModelWorkflowOverrideInputBackupLlmConfig> | no | `nil` | Configuration for backup LLM cascading. Can be disabled, use system defaults, or specify custom order. |
| `cascade_timeout_seconds` | Optional<float> | no | `nil` | Time in seconds before cascading to backup LLM. Must be between 2 and 15 seconds. |
| `tools` | Optional<Array<[PromptAgentApiModelWorkflowOverrideInputToolsItem](#promptagentapimodelworkflowoverrideinputtoolsitem)>> | no | `nil` | A list of tools that the agent can use over the course of the conversation, use tool_ids instead |

### PromptAgentApiModelWorkflowOverrideOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `prompt` | Optional<str> | no | `nil` | The prompt for the agent |
| `llm` | Optional<[Llm](#llm)> | no | `nil` | The LLM to query with the prompt and the chat history. If using data residency, the LLM must be supported in the data residency environment |
| `reasoning_effort` | Optional<[LlmReasoningEffort](#llmreasoningeffort)> | no | `nil` | Reasoning effort of the model. Only available for some models. |
| `thinking_budget` | Optional<int> | no | `nil` | Max number of tokens used for thinking. Use 0 to turn off if supported by the model. |
| `temperature` | Optional<float> | no | `nil` | The temperature for the LLM |
| `max_tokens` | Optional<int> | no | `nil` | If greater than 0, maximum number of tokens the LLM can predict |
| `tool_ids` | Optional<Array<str>> | no | `nil` | A list of IDs of tools used by the agent |
| `built_in_tools` | Optional<[BuiltInToolsWorkflowOverrideOutput](#builtintoolsworkflowoverrideoutput)> | no | `nil` | Built-in system tools to be used by the agent |
| `mcp_server_ids` | Optional<Array<str>> | no | `nil` | A list of MCP server ids to be used by the agent |
| `native_mcp_server_ids` | Optional<Array<str>> | no | `nil` | A list of Native MCP server ids to be used by the agent |
| `knowledge_base` | Optional<Array<[KnowledgeBaseLocator](#knowledgebaselocator)>> | no | `nil` | A list of knowledge bases to be used by the agent |
| `custom_llm` | Optional<[CustomLlm](#customllm)> | no | `nil` | Definition for a custom LLM if LLM field is set to 'CUSTOM_LLM' |
| `ignore_default_personality` | Optional<bool> | no | `nil` | Whether to remove the default personality lines from the system prompt |
| `rag` | Optional<[RagConfigWorkflowOverride](#ragconfigworkflowoverride)> | no | `nil` | Configuration for RAG |
| `timezone` | Optional<str> | no | `nil` | Timezone for displaying current time in system prompt. If set, the current time will be included in the system prompt using this timezone. Must be a valid timezone name (e.g., 'America/New_York', 'Europe/London', 'UTC'). |
| `backup_llm_config` | Optional<PromptAgentApiModelWorkflowOverrideOutputBackupLlmConfig> | no | `nil` | Configuration for backup LLM cascading. Can be disabled, use system defaults, or specify custom order. |
| `cascade_timeout_seconds` | Optional<float> | no | `nil` | Time in seconds before cascading to backup LLM. Must be between 2 and 15 seconds. |
| `tools` | Optional<Array<[PromptAgentApiModelWorkflowOverrideOutputToolsItem](#promptagentapimodelworkflowoverrideoutputtoolsitem)>> | no | `nil` | A list of tools that the agent can use over the course of the conversation, use tool_ids instead |

### PromptAgentDbModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tools` | Optional<Any> | no | `nil` |  |

### PromptEvaluationCriteria

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** | The unique identifier for the evaluation criteria |
| `name` | str | **yes** | **required** |  |
| `type` | Optional<Literal<'prompt'>> | no | `nil` | The type of evaluation criteria |
| `conversation_goal_prompt` | str | **yes** | **required** | The prompt that the agent should use to evaluate the conversation |
| `use_knowledge_base` | Optional<bool> | no | `nil` | When evaluating the prompt, should the agent's knowledge base be used. |
| `scope` | Optional<[AnalysisScope](#analysisscope)> | no | `nil` | The scope of transcript context used when evaluating this criterion. 'conversation' uses the full transcript; 'agent' uses only the portion where the defining agent was active. |
| `llm` | Optional<[Llm](#llm)> | no | `nil` | LLM model to use for this evaluation criteria. If not set, uses agent's analysis_llm default. |

### PromptInjectionGuardrail

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_enabled` | Optional<bool> | no | `nil` |  |

### PronunciationDictionaryAliasRuleRequestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `string_to_replace` | str | **yes** | **required** | The string to replace. Must be a non-empty string. |
| `case_sensitive` | Optional<bool> | no | `nil` | Whether the rule should match case-sensitively. |
| `word_boundaries` | Optional<bool> | no | `nil` | Whether the rule should only match at word boundaries. |
| `alias` | str | **yes** | **required** | The alias for the string to be replaced. |

### PronunciationDictionaryAliasRuleResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `string_to_replace` | str | **yes** | **required** |  |
| `case_sensitive` | Optional<bool> | no | `nil` | Whether the rule matches case-sensitively. |
| `word_boundaries` | Optional<bool> | no | `nil` | Whether the rule only matches at word boundaries. |
| `alias` | str | **yes** | **required** |  |

### PronunciationDictionaryLocator

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `pronunciation_dictionary_id` | str | **yes** | **required** | The unique identifier of the pronunciation dictionary |
| `version_id` | str | **yes** | **required** | The version identifier of the pronunciation dictionary |

### PronunciationDictionaryLocatorResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `pronunciation_dictionary_id` | str | **yes** | **required** |  |
| `version_id` | Optional<str> | no | `nil` |  |

### PronunciationDictionaryPhonemeRuleRequestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `string_to_replace` | str | **yes** | **required** | The string to replace. Must be a non-empty string. |
| `case_sensitive` | Optional<bool> | no | `nil` | Whether the rule should match case-sensitively. |
| `word_boundaries` | Optional<bool> | no | `nil` | Whether the rule should only match at word boundaries. |
| `phoneme` | str | **yes** | **required** | The phoneme rule. |
| `alphabet` | str | **yes** | **required** | The alphabet to use with the phoneme rule. |

### PronunciationDictionaryPhonemeRuleResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `string_to_replace` | str | **yes** | **required** |  |
| `case_sensitive` | Optional<bool> | no | `nil` | Whether the rule matches case-sensitively. |
| `word_boundaries` | Optional<bool> | no | `nil` | Whether the rule only matches at word boundaries. |
| `phoneme` | str | **yes** | **required** |  |
| `alphabet` | str | **yes** | **required** |  |

### PronunciationDictionaryRulesResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** | The ID of the pronunciation dictionary. |
| `version_id` | str | **yes** | **required** | The version ID of the pronunciation dictionary. |
| `version_rules_num` | int | **yes** | **required** | The number of rules in the version of the pronunciation dictionary. |

### PronunciationDictionaryVersionLocator

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `pronunciation_dictionary_id` | str | **yes** | **required** | The ID of the pronunciation dictionary. |
| `version_id` | Optional<str> | no | `nil` | The ID of the version of the pronunciation dictionary. If not provided, the latest version will be used. |

### PronunciationDictionaryVersionResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version_id` | str | **yes** | **required** |  |
| `version_rules_num` | int | **yes** | **required** |  |
| `pronunciation_dictionary_id` | str | **yes** | **required** |  |
| `dictionary_name` | str | **yes** | **required** |  |
| `version_name` | str | **yes** | **required** |  |
| `permission_on_resource` | Optional<[PronunciationDictionaryVersionResponseModelPermissionOnResource](#pronunciationdictionaryversionresponsemodelpermissiononresource)> | no | `nil` |  |
| `created_by` | str | **yes** | **required** |  |
| `creation_time_unix` | int | **yes** | **required** |  |
| `archived_time_unix` | Optional<int> | no | `nil` |  |

### PydanticPronunciationDictionaryVersionLocator

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `pronunciation_dictionary_id` | str | **yes** | **required** | The ID of the pronunciation dictionary |
| `version_id` | Optional<str> | no | `nil` | The ID of the version of the pronunciation dictionary |

### QueryParamsJsonSchema

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `properties` | Hash<str, [LiteralJsonSchemaProperty](#literaljsonschemaproperty)> | **yes** | **required** |  |
| `required` | Optional<Array<str>> | no | `nil` |  |

### RagChunkMetadata

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `document_id` | str | **yes** | **required** |  |
| `chunk_id` | str | **yes** | **required** |  |
| `vector_distance` | float | **yes** | **required** |  |

### RagConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enabled` | Optional<bool> | no | `nil` |  |
| `embedding_model` | Optional<[EmbeddingModelEnum](#embeddingmodelenum)> | no | `nil` |  |
| `max_vector_distance` | Optional<float> | no | `nil` | Maximum vector distance of retrieved chunks. |
| `max_documents_length` | Optional<int> | no | `nil` | Maximum total length of document chunks retrieved from RAG. |
| `max_retrieved_rag_chunks_count` | Optional<int> | no | `nil` | Maximum number of RAG document chunks to initially retrieve from the vector store. These are then further filtered by vector distance and total length. |
| `num_candidates` | Optional<int> | no | `nil` | Number of candidates evaluated in ANN vector search. Higher number means better results, but higher latency. Minimum recommended value is 100. If disabled, the default value is used. |
| `query_rewrite_prompt_override` | Optional<str> | no | `nil` | Custom prompt for rewriting user queries before RAG retrieval. The conversation history will be automatically appended at the end. If not set, the default prompt will be used. |

### RagConfigWorkflowOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enabled` | Optional<bool> | no | `nil` |  |
| `embedding_model` | Optional<[EmbeddingModelEnum](#embeddingmodelenum)> | no | `nil` |  |
| `max_vector_distance` | Optional<float> | no | `nil` | Maximum vector distance of retrieved chunks. |
| `max_documents_length` | Optional<int> | no | `nil` | Maximum total length of document chunks retrieved from RAG. |
| `max_retrieved_rag_chunks_count` | Optional<int> | no | `nil` | Maximum number of RAG document chunks to initially retrieve from the vector store. These are then further filtered by vector distance and total length. |
| `num_candidates` | Optional<int> | no | `nil` | Number of candidates evaluated in ANN vector search. Higher number means better results, but higher latency. Minimum recommended value is 100. If disabled, the default value is used. |
| `query_rewrite_prompt_override` | Optional<str> | no | `nil` | Custom prompt for rewriting user queries before RAG retrieval. The conversation history will be automatically appended at the end. If not set, the default prompt will be used. |

### RagDocumentIndexResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `model` | [EmbeddingModelEnum](#embeddingmodelenum) | **yes** | **required** |  |
| `status` | [RagIndexStatus](#ragindexstatus) | **yes** | **required** |  |
| `progress_percentage` | float | **yes** | **required** |  |
| `document_model_index_usage` | [RagDocumentIndexUsage](#ragdocumentindexusage) | **yes** | **required** |  |

### RagDocumentIndexUsage

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `used_bytes` | int | **yes** | **required** |  |

### RagDocumentIndexesResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `indexes` | Array<[RagDocumentIndexResponseModel](#ragdocumentindexresponsemodel)> | **yes** | **required** |  |

### RagIndexBatchSuccessfulResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `data` | [RagDocumentIndexResponseModel](#ragdocumentindexresponsemodel) | **yes** | **required** |  |

### RagIndexOverviewEmbeddingModelResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `model` | [EmbeddingModelEnum](#embeddingmodelenum) | **yes** | **required** |  |
| `used_bytes` | int | **yes** | **required** |  |

### RagIndexOverviewResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `total_used_bytes` | int | **yes** | **required** |  |
| `total_max_bytes` | int | **yes** | **required** |  |
| `models` | Array<[RagIndexOverviewEmbeddingModelResponseModel](#ragindexoverviewembeddingmodelresponsemodel)> | **yes** | **required** |  |

### RagRetrievalInfo

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `chunks` | Array<[RagChunkMetadata](#ragchunkmetadata)> | **yes** | **required** |  |
| `embedding_model` | [EmbeddingModelEnum](#embeddingmodelenum) | **yes** | **required** |  |
| `retrieval_query` | str | **yes** | **required** |  |
| `rag_latency_secs` | float | **yes** | **required** |  |

### ReadLegalTerms

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `terms` | Optional<str> | no | `nil` |  |
| `start_date` | Optional<str> | no | `nil` |  |
| `end_date` | Optional<str> | no | `nil` |  |

### ReadMetadataChapterDbModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `chapter_name` | str | **yes** | **required** |  |
| `word_count` | int | **yes** | **required** |  |
| `char_count` | int | **yes** | **required** |  |
| `starting_char_offset` | int | **yes** | **required** |  |
| `has_parsed_html` | Optional<bool> | no | `nil` |  |
| `has_summary` | Optional<bool> | no | `nil` |  |
| `duration_seconds` | Optional<float> | no | `nil` |  |
| `file_number` | Optional<str> | no | `nil` |  |

### ReaderResourceResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `resource_type` | [ReaderResourceResponseModelResourceType](#readerresourceresponsemodelresourcetype) | **yes** | **required** | The type of resource. |
| `resource_id` | str | **yes** | **required** | The ID of the resource. |

### RealtimeVoiceSettings

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `stability` | Optional<float> | no | `nil` | Defines the stability for voice settings. |
| `similarity_boost` | Optional<float> | no | `nil` | Defines the similarity boost for voice settings. |
| `style` | Optional<float> | no | `nil` | Defines the style for voice settings. This parameter is available on V2+ models. |
| `use_speaker_boost` | Optional<bool> | no | `nil` | Defines the use speaker boost for voice settings. This parameter is available on V2+ models. |
| `speed` | Optional<float> | no | `nil` | Controls the speed of the generated speech. Values range from 0.7 to 1.2, with 1.0 being the default speed. |

### RecordingResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `recording_id` | str | **yes** | **required** | The ID of the recording. |
| `mime_type` | str | **yes** | **required** | The MIME type of the recording. |
| `size_bytes` | int | **yes** | **required** | The size of the recording in bytes. |
| `upload_date_unix` | int | **yes** | **required** | The date of the recording in Unix time. |
| `transcription` | str | **yes** | **required** | The transcription of the recording. |

### ReferenceVideo

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `generation_id` | Optional<str> | no | `nil` |  |
| `content_asset_id` | Optional<str> | no | `nil` |  |
| `template_node_id` | Optional<str> | no | `nil` |  |
| `studio_clip` | Optional<[StudioClipReference](#studioclipreference)> | no | `nil` |  |

### ReferencedToolCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** | The ID of the tool |
| `type` | [ReferencedToolCommonModelType](#referencedtoolcommonmodeltype) | **yes** | **required** | The type of the tool |

### RegexParameterEvaluationStrategy

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `pattern` | str | **yes** | **required** | A regex pattern to match the agent's response against. |

### RegionConfigRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `region_id` | [TwilioRegionId](#twilioregionid) | **yes** | **required** | Region ID |
| `token` | str | **yes** | **required** | Auth Token for this region |
| `edge_location` | [TwilioEdgeLocation](#twilioedgelocation) | **yes** | **required** | Edge location for this region |

### Render

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `version` | int | **yes** | **required** |  |
| `language` | Optional<str> | no | `nil` |  |
| `type` | Optional<[RenderType](#rendertype)> | no | `nil` |  |
| `media_ref` | Optional<[DubbingMediaReference](#dubbingmediareference)> | no | `nil` |  |
| `status` | [RenderStatus](#renderstatus) | **yes** | **required** |  |

### RequestPvcManualVerificationResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the request PVC manual verification request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### RequiredConstraint

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `required` | Array<str> | **yes** | **required** |  |

### RequiredConstraints

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `any_of` | Optional<Array<[RequiredConstraint](#requiredconstraint)>> | no | `nil` |  |
| `all_of` | Optional<Array<[RequiredConstraint](#requiredconstraint)>> | no | `nil` |  |

### ResourceAccessInfo

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_creator` | bool | **yes** | **required** | Whether the user making the request is the creator of the agent |
| `creator_name` | str | **yes** | **required** | Name of the agent's creator |
| `creator_email` | str | **yes** | **required** | Email of the agent's creator |
| `role` | [ResourceAccessInfoRole](#resourceaccessinforole) | **yes** | **required** | The role of the user making the request |

### ResourceMetadataResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `resource_id` | str | **yes** | **required** | The ID of the resource. |
| `resource_name` | Optional<str> | no | `nil` | The name of the resource, if available. |
| `resource_type` | [WorkspaceResourceType](#workspaceresourcetype) | **yes** | **required** | The type of the resource. |
| `creator_user_id` | Optional<str> | no | `nil` | The ID of the user who created the resource. |
| `anonymous_access_level_override` | Optional<[ResourceMetadataResponseModelAnonymousAccessLevelOverride](#resourcemetadataresponsemodelanonymousaccessleveloverride)> | no | `nil` | The access level for anonymous users. If None, the resource is not shared publicly. |
| `role_to_group_ids` | Hash<str, Array<str>> | **yes** | **required** | A mapping of roles to group IDs. When the resource is shared with a user, the group id is the user's id. |
| `share_options` | Array<[ShareOptionResponseModel](#shareoptionresponsemodel)> | **yes** | **required** | List of options for sharing the resource further in the workspace. These are users who don't have access to the resource yet. |

### ResponseFilter

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `mode` | Optional<[ResponseFilterMode](#responsefiltermode)> | no | `nil` | Controls how tool responses are filtered. 'all' returns entire response, 'allow' returns only specified paths, 'hide_all' hides the entire response. |
| `filters` | Optional<Array<str>> | no | `nil` | Dot notation paths to include when mode is 'allow' (e.g., ['ticket.id', 'ticket.status']). |
| `content_type` | Optional<Literal<'application/json'>> | no | `nil` | Content type for response filtering. Only 'application/json' responses are filtered. |

### ResponseUnitTestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataOutput](#testfromconversationmetadataoutput)> | no | `nil` | Metadata of a conversation this test was created from (if applicable). |
| `dynamic_variables` | Optional<Hash<str, Optional<ResponseUnitTestModelDynamicVariablesValue>>> | no | `nil` | Dynamic variables to replace in the agent config during testing |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelOutput](#conversationhistorytranscriptcommonmodeloutput)>> | no | `nil` |  |
| `success_condition` | Optional<str> | no | `nil` | A prompt that evaluates whether the agent's response is successful. Should return True or False. |
| `success_examples` | Optional<Array<[AgentSuccessfulResponseExample](#agentsuccessfulresponseexample)>> | no | `nil` | Non-empty list of example responses that should be considered successful |
| `failure_examples` | Optional<Array<[AgentFailureResponseExample](#agentfailureresponseexample)>> | no | `nil` | Non-empty list of example responses that should be considered failures |

### RetryTriggerAction

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `feedback` | Optional<str> | no | `nil` | Custom feedback to inject into the agent when retrying after guardrail trigger. |

### ReviewResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `review_status` | [ReviewResponseModelReviewStatus](#reviewresponsemodelreviewstatus) | **yes** | **required** |  |
| `reviewed_at_unix` | int | **yes** | **required** |  |
| `reviewed_by` | Optional<str> | no | `nil` |  |
| `reject_reasons` | Optional<Array<[ReviewResponseModelRejectReasonsItem](#reviewresponsemodelrejectreasonsitem)>> | no | `nil` |  |
| `scores_breakdown` | Optional<Hash<str, Optional<int>>> | no | `nil` |  |
| `rejected_details` | Optional<str> | no | `nil` |  |

### SafetyCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `ivc` | Optional<[SafetyEvaluation](#safetyevaluation)> | no | `nil` |  |
| `non_ivc` | Optional<[SafetyEvaluation](#safetyevaluation)> | no | `nil` |  |

### SafetyEvaluation

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_unsafe` | Optional<bool> | no | `nil` |  |
| `llm_reason` | Optional<str> | no | `nil` |  |
| `safety_prompt_version` | Optional<int> | no | `nil` |  |
| `matched_rule_id` | Optional<Array<[SafetyRule](#safetyrule)>> | no | `nil` |  |

### SafetyResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_blocked_ivc` | Optional<bool> | no | `nil` |  |
| `is_blocked_non_ivc` | Optional<bool> | no | `nil` |  |
| `ignore_safety_evaluation` | Optional<bool> | no | `nil` |  |

### SampleConfigDbModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_sample` | Optional<bool> | no | `nil` |  |
| `parent_id` | Optional<str> | no | `nil` |  |
| `parent_type` | Optional<[SampleConfigDbModelParentType](#sampleconfigdbmodelparenttype)> | no | `nil` |  |
| `chapter_ids` | Optional<Array<str>> | no | `nil` |  |

### SayNodeLiteralMessageInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'literal'>> | no | `nil` |  |
| `text` | str | **yes** | **required** | Literal text message to be spoken by the agent. |

### SayNodeLiteralMessageOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'literal'> | no | `'literal'` |  |
| `text` | str | **yes** | **required** | Literal text message to be spoken by the agent. |

### SayNodePromptMessageInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'prompt'>> | no | `nil` |  |
| `prompt` | str | **yes** | **required** | LLM prompt describing what message should be generated. |

### SayNodePromptMessageOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'prompt'> | no | `'prompt'` |  |
| `prompt` | str | **yes** | **required** | LLM prompt describing what message should be generated. |

### ScopedAnalysisResult

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `scope` | [AnalysisScope](#analysisscope) | **yes** | **required** | The scope of the analysis. 'conversation' uses the full transcript; 'agent' uses only the portion where the defining agent was active. |
| `source_agent_id` | str | **yes** | **required** |  |
| `source_branch_id` | Optional<str> | no | `nil` | Branch of the agent for this scoped block; disambiguates repeated agent_id. |
| `evaluation_criteria_results` | Optional<Hash<str, [ConversationHistoryEvaluationCriteriaResultCommonModel](#conversationhistoryevaluationcriteriaresultcommonmodel)>> | no | `nil` |  |
| `data_collection_results` | Optional<Hash<str, [DataCollectionResultCommonModel](#datacollectionresultcommonmodel)>> | no | `nil` |  |
| `successful` | [EvaluationSuccessResult](#evaluationsuccessresult) | **yes** | **required** |  |

### ScribeAuthErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'auth_error'> | no | `'auth_error'` | The message type identifier. |
| `error` | str | **yes** | **required** | Authentication error details. |

### ScribeChunkSizeExceededErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'chunk_size_exceeded'> | no | `'chunk_size_exceeded'` | The message type identifier. |
| `error` | str | **yes** | **required** | Chunk size exceeded error details. |

### ScribeErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'error'> | no | `'error'` | The message type identifier. |
| `error` | str | **yes** | **required** | Error message describing what went wrong. |

### ScribeInputErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'input_error'> | no | `'input_error'` | The message type identifier. |
| `error` | str | **yes** | **required** | Input error details. |

### ScribeInsufficientAudioActivityErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'insufficient_audio_activity'> | no | `'insufficient_audio_activity'` | The message type identifier. |
| `error` | str | **yes** | **required** | Insufficient audio activity error details. |

### ScribeQueueOverflowErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'queue_overflow'> | no | `'queue_overflow'` | The message type identifier. |
| `error` | str | **yes** | **required** | Queue overflow error details. |

### ScribeQuotaExceededErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'quota_exceeded'> | no | `'quota_exceeded'` | The message type identifier. |
| `error` | str | **yes** | **required** | Quota exceeded error details. |

### ScribeRateLimitedErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'rate_limited'> | no | `'rate_limited'` | The message type identifier. |
| `error` | str | **yes** | **required** | Rate limited error details. |

### ScribeResourceExhaustedErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'resource_exhausted'> | no | `'resource_exhausted'` | The message type identifier. |
| `error` | str | **yes** | **required** | Resource exhausted error details. |

### ScribeSessionTimeLimitExceededErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'session_time_limit_exceeded'> | no | `'session_time_limit_exceeded'` | The message type identifier. |
| `error` | str | **yes** | **required** | Session time limit exceeded error details. |

### ScribeThrottledErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'commit_throttled'> | no | `'commit_throttled'` | The message type identifier. |
| `error` | str | **yes** | **required** | Throttled error details. |

### ScribeTranscriberErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'transcriber_error'> | no | `'transcriber_error'` | The message type identifier. |
| `error` | str | **yes** | **required** | Transcriber error details. |

### ScribeUnacceptedTermsErrorPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'unaccepted_terms'> | no | `'unaccepted_terms'` | The message type identifier. |
| `error` | str | **yes** | **required** | Unaccepted terms error details. |

### SearchClientsParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'search_clients'>> | no | `nil` |  |

### SearchHighlightSegment

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | str | **yes** | **required** |  |
| `is_hit` | bool | **yes** | **required** |  |

### SectionSource

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `song_id` | str | **yes** | **required** | The ID of the song to source the section from. You can find the song ID in the response headers when you generate a song. |
| `range` | [TimeRange](#timerange) | **yes** | **required** | The range to extract from the source song. |
| `negative_ranges` | Optional<Array<[TimeRange](#timerange)>> | no | `nil` | The ranges to exclude from the 'range'. |

### SegmentCreateResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | int | **yes** | **required** |  |
| `new_segment` | str | **yes** | **required** |  |

### SegmentDeleteResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | int | **yes** | **required** |  |

### SegmentDubResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | int | **yes** | **required** |  |

### SegmentMigrationResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | int | **yes** | **required** |  |

### SegmentSubtitleFrame

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `start_time` | float | **yes** | **required** |  |
| `end_time` | float | **yes** | **required** |  |
| `lines` | Array<str> | **yes** | **required** |  |

### SegmentTranscriptionResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | int | **yes** | **required** |  |

### SegmentTranslationResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | int | **yes** | **required** |  |

### SegmentUpdateResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | int | **yes** | **required** |  |

### SegmentedJsonExportOptions

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `include_speakers` | Optional<bool> | no | `nil` |  |
| `include_timestamps` | Optional<bool> | no | `nil` |  |
| `segment_on_silence_longer_than_s` | Optional<float> | no | `nil` |  |
| `max_segment_duration_s` | Optional<float> | no | `nil` |  |
| `max_segment_chars` | Optional<int> | no | `nil` |  |

### SendText

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | str | **yes** | **required** | The text to be sent to the API for audio generation. Should always end with a single space string. |
| `try_trigger_generation` | Optional<bool> | no | `nil` | This is an advanced setting that most users shouldn't need to use. It relates to our generation schedule.          Use this to attempt to immediately trigger the generation of audio, overriding the `chunk_length_schedule`.     Unlike flush, `try_trigger_generation` will only generate audio if our     buffer contains more than a minimum     threshold of characters, this is to ensure a higher quality response from our model.          Note that overriding the chunk schedule to generate small amounts of     text may result in lower quality audio, therefore, only use this parameter if you     really need text to be processed immediately. We generally recommend keeping the default value of     `false` and adjusting the `chunk_length_schedule` in the `generation_config` instead. |
| `voice_settings` | Optional<[RealtimeVoiceSettings](#realtimevoicesettings)> | no | `nil` | The voice settings field can be provided in the first `InitializeConnection` message and then must either be not provided or not changed. |
| `generator_config` | Optional<[GenerationConfig](#generationconfig)> | no | `nil` | The generator config field can be provided in the first `InitializeConnection` message and then must either be not provided or not changed. |
| `flush` | Optional<bool> | no | `nil` | Flush forces the generation of audio. Set this value to true when you have finished sending text, but want to keep the websocket connection open.          This is useful when you want to ensure that the last chunk of audio is generated even when the length of text sent is smaller than the value set in chunk_length_schedule (e.g. 120 or 50). |

### SendTextMulti

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | str | **yes** | **required** | Text to synthesize. Should end with a single space. |
| `context_id` | Optional<str> | no | `nil` | The target context_id for this text. |
| `flush` | Optional<bool> | no | `nil` | If true, flushes the audio buffer for the specified context. If false, the text will be appended to the buffer to be generated. |

### SessionStartedPayload

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message_type` | Literal<'session_started'> | no | `'session_started'` | The message type identifier. |
| `session_id` | str | **yes** | **required** | Unique identifier for the session. |
| `config` | [SessionStartedPayloadConfig](#sessionstartedpayloadconfig) | **yes** | **required** | Configuration for the transcription session. |

### SessionStartedPayloadConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `sample_rate` | Optional<int> | no | `nil` | Sample rate of the audio in Hz. |
| `audio_format` | Optional<[AudioFormatEnum](#audioformatenum)> | no | `nil` |  |
| `language_code` | Optional<str> | no | `nil` | Language code in ISO 639-1 or ISO 639-3 format. |
| `commit_strategy` | Optional<[SessionStartedPayloadConfigCommitStrategy](#sessionstartedpayloadconfigcommitstrategy)> | no | `nil` | Strategy for committing transcriptions. |
| `vad_silence_threshold_secs` | Optional<float> | no | `nil` | Silence threshold in seconds. |
| `vad_threshold` | Optional<float> | no | `nil` | Threshold for voice activity detection. |
| `min_speech_duration_ms` | Optional<int> | no | `nil` | Minimum speech duration in milliseconds. |
| `min_silence_duration_ms` | Optional<int> | no | `nil` | Minimum silence duration in milliseconds. |
| `model_id` | Optional<str> | no | `nil` | ID of the model to use for transcription. |
| `enable_logging` | Optional<bool> | no | `nil` | When enable_logging is set to false zero retention mode will be used for the request. This will mean history features are unavailable for this request. Zero retention mode may only be used by enterprise customers. |
| `include_timestamps` | Optional<bool> | no | `nil` | Whether the session will include word-level timestamps in the committed transcript. |
| `include_language_detection` | Optional<bool> | no | `nil` | Whether the session will include language detection in the committed transcript. |

### SetBookingSlugParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'set_booking_slug'>> | no | `nil` |  |

### SfxSourceContext

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `sound_generation_history_item_id` | Optional<str> | no | `nil` |  |
| `text` | Optional<str> | no | `nil` |  |
| `generation_config` | Optional<Hash<str, Any>> | no | `nil` |  |

### ShareOptionResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** | The name of the principal. |
| `id` | str | **yes** | **required** | The ID of the principal. |
| `type` | [ShareOptionResponseModelType](#shareoptionresponsemodeltype) | **yes** | **required** | The type of the principal: user, group, or service account (under 'key'). |

### SimilarVoice

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voice_id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `category` | [VoiceCategory](#voicecategory) | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` |  |
| `preview_url` | Optional<str> | no | `nil` |  |

### SimilarVoicesForSpeakerResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voices` | Array<[SimilarVoice](#similarvoice)> | **yes** | **required** |  |

### SimulationTestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataOutput](#testfromconversationmetadataoutput)> | no | `nil` | Metadata of a conversation this test was created from (if applicable). |
| `dynamic_variables` | Optional<Hash<str, Optional<SimulationTestModelDynamicVariablesValue>>> | no | `nil` | Dynamic variables to replace in the agent config during testing |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelOutput](#conversationhistorytranscriptcommonmodeloutput)>> | no | `nil` |  |
| `success_condition` | Optional<str> | no | `nil` | A prompt that evaluates whether the agent's response is successful. Should return True or False. |
| `simulation_scenario` | Optional<str> | no | `nil` | Description of the simulation scenario and user persona for simulation tests. |
| `simulation_max_turns` | Optional<int> | no | `nil` | Maximum number of conversation turns for simulation tests. |
| `simulation_environment` | Optional<str> | no | `nil` | The environment to use when running this simulation test. If not provided, defaults to 'production'. |
| `tool_mock_config` | Optional<[SimulationToolMockBehaviorConfig](#simulationtoolmockbehaviorconfig)> | no | `nil` | Configuration for which tools to mock and fallback behavior. |

### SimulationToolMockBehaviorConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `mocking_strategy` | Optional<[MockingStrategy](#mockingstrategy)> | no | `nil` | Which tools to mock: 'all' mocks every mockable tool, 'selected' mocks only those in mocked_tool_names/mocked_tool_ids, 'none' disables mocking. |
| `fallback_strategy` | Optional<[MockNoMatchBehavior](#mocknomatchbehavior)> | no | `nil` | Behavior when no mock matches a tool call. |
| `mocked_tool_ids` | Optional<Array<str>> | no | `nil` | Tool IDs to mock. Resolved to tool names before being passed to the orchestrator. |

### SingleTestRunRequestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `test_id` | str | **yes** | **required** | ID of the test to run |
| `workflow_node_id` | Optional<str> | no | `nil` | ID of the workflow node to run the test on. If not provided, the test will be run on the agent's default workflow node. |
| `root_folder_id` | Optional<str> | no | `nil` | ID of the root folder to run the test on. If not provided, the test will be run on the agent's default folder. |
| `root_folder_name` | Optional<str> | no | `nil` | Name of the root folder to run the test on. If not provided, the test will be run on the agent's default folder. |

### SingleUseTokenResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `token` | str | **yes** | **required** | A time bound single use token that expires after 15 minutes. Will be consumed on use. |

### SipTrunkCredentialsRequestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `username` | str | **yes** | **required** | SIP trunk username |
| `password` | Optional<str> | no | `nil` | SIP trunk password - if not specified, then remain unchanged |

### SipTrunkOutboundCallResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `success` | bool | **yes** | **required** |  |
| `message` | str | **yes** | **required** |  |
| `conversation_id` | Optional<str> | no | `nil` |  |
| `sip_call_id` | Optional<str> | no | `nil` |  |

### SipUriDynamicVariableTransferDestination

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `sip_uri` | str | **yes** | **required** |  |

### SipUriTransferDestination

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `sip_uri` | str | **yes** | **required** |  |

### SkipTurnToolConfig

_(no fields)_

### SkipTurnToolResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |

### SoftTimeoutConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `timeout_seconds` | Optional<float> | no | `nil` | Time in seconds before showing the predefined message while waiting for LLM response. Set to -1 to disable. |
| `message` | Optional<str> | no | `nil` | Message to show when soft timeout is reached while waiting for LLM response |
| `use_llm_generated_message` | Optional<bool> | no | `nil` | If enabled, the soft timeout message will be generated dynamically instead of using the static message. |

### SoftTimeoutConfigOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message` | Optional<str> | no | `nil` | Message to show when soft timeout is reached while waiting for LLM response |

### SoftTimeoutConfigOverrideConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message` | Optional<bool> | no | `nil` | Whether to allow overriding the message field. |

### SoftTimeoutConfigWorkflowOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `timeout_seconds` | Optional<float> | no | `nil` | Time in seconds before showing the predefined message while waiting for LLM response. Set to -1 to disable. |
| `message` | Optional<str> | no | `nil` | Message to show when soft timeout is reached while waiting for LLM response |
| `use_llm_generated_message` | Optional<bool> | no | `nil` | If enabled, the soft timeout message will be generated dynamically instead of using the static message. |

### SongMetadata

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `title` | Optional<str> | no | `nil` | The title of the song |
| `description` | Optional<str> | no | `nil` | The description of the song |
| `genres` | Array<str> | **yes** | **required** | The genres of the song |
| `languages` | Array<str> | **yes** | **required** | The languages of the song |
| `is_explicit` | Optional<bool> | no | `nil` | Whether the song is explicit |

### SongSection

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `section_name` | str | **yes** | **required** | The name of the section. Must be between 1 and 100 characters. |
| `positive_local_styles` | Array<str> | **yes** | **required** | The styles and musical directions that should be present in this section. Use English language for best result. |
| `negative_local_styles` | Array<str> | **yes** | **required** | The styles and musical directions that should not be present in this section. Use English language for best result. |
| `duration_ms` | int | **yes** | **required** | The duration of the section in milliseconds. Must be between 3000ms and 120000ms. |
| `lines` | Array<str> | **yes** | **required** | The lyrics of the section. Max 200 characters per line. |
| `source_from` | Optional<[SectionSource](#sectionsource)> | no | `nil` | Optional source to extract the section from. Used for inpainting. Only available to enterprise clients with access to the inpainting feature. |

### SongSourceContext

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `song_id` | str | **yes** | **required** |  |
| `title` | Optional<str> | no | `nil` |  |
| `description` | Optional<str> | no | `nil` |  |
| `genres` | Optional<Array<str>> | no | `nil` |  |
| `languages` | Optional<Array<str>> | no | `nil` |  |
| `is_explicit` | Optional<bool> | no | `nil` |  |
| `bpm` | Optional<int> | no | `nil` |  |
| `generation_settings` | Optional<Hash<str, Any>> | no | `nil` |  |

### SourceConfigJson

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** | Source name (can be existing or new) |
| `db_name` | Optional<str> | no | `nil` | MongoDB database name. Default: eleven_customer_support |
| `collection_name` | Optional<str> | no | `nil` | MongoDB collection name. Required for new sources. |
| `k_dense` | Optional<int> | no | `nil` | Number of chunks from vector search |
| `k_keyword` | Optional<int> | no | `nil` | Number of chunks from BM25 search |
| `dense_weight` | Optional<float> | no | `nil` | Weight for vector results |
| `keyword_weight` | Optional<float> | no | `nil` | Weight for BM25 results |
| `source_weight` | Optional<float> | no | `nil` | Weight for cross-source merging |
| `vector_index_name` | Optional<str> | no | `nil` | Vector search index name. Default: 'default' |
| `embedding_field` | Optional<str> | no | `nil` | Field containing embeddings. Default: 'embedding' |
| `content_field` | Optional<str> | no | `nil` | Field containing text content. Default: 'content' |
| `enabled` | Optional<bool> | no | `nil` | Whether this source is active |

### SourceRetrievalConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `collection_name` | str | **yes** | **required** |  |
| `db_name` | Optional<str> | no | `nil` |  |
| `enabled` | Optional<bool> | no | `nil` |  |
| `k_dense` | Optional<int> | no | `nil` |  |
| `k_keyword` | Optional<int> | no | `nil` |  |
| `dense_weight` | Optional<float> | no | `nil` |  |
| `keyword_weight` | Optional<float> | no | `nil` |  |
| `source_weight` | Optional<float> | no | `nil` |  |
| `vector_index_name` | Optional<str> | no | `nil` |  |
| `embedding_field` | Optional<str> | no | `nil` |  |
| `content_field` | Optional<str> | no | `nil` |  |
| `filter_field` | Optional<str> | no | `nil` |  |
| `num_candidates_multiplier` | Optional<int> | no | `nil` |  |
| `result_fields` | Optional<Hash<str, Array<Any>>> | no | `nil` |  |

### SpeakerAudioResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `audio_base_64` | str | **yes** | **required** | The base64 encoded audio. |
| `media_type` | str | **yes** | **required** | The media type of the audio. |
| `duration_secs` | float | **yes** | **required** | The duration of the audio in seconds. |

### SpeakerCreatedResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | int | **yes** | **required** |  |
| `speaker_id` | str | **yes** | **required** |  |

### SpeakerResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `speaker_id` | str | **yes** | **required** | The ID of the speaker. |
| `duration_secs` | float | **yes** | **required** | The duration of the speaker segment in seconds. |
| `utterances` | Optional<Array<[UtteranceResponseModel](#utteranceresponsemodel)>> | no | `nil` | The utterances of the speaker. |

### SpeakerSegment

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `start_time` | float | **yes** | **required** |  |
| `end_time` | float | **yes** | **required** |  |
| `text` | str | **yes** | **required** |  |
| `subtitles` | Array<[SegmentSubtitleFrame](#segmentsubtitleframe)> | **yes** | **required** |  |
| `dubs` | Hash<str, [DubbedSegment](#dubbedsegment)> | **yes** | **required** |  |

### SpeakerSeparationResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voice_id` | str | **yes** | **required** | The ID of the voice. |
| `sample_id` | str | **yes** | **required** | The ID of the sample. |
| `status` | [SpeakerSeparationResponseModelStatus](#speakerseparationresponsemodelstatus) | **yes** | **required** | The status of the speaker separation. |
| `speakers` | Optional<Hash<str, Optional<[SpeakerResponseModel](#speakerresponsemodel)>>> | no | `nil` | The speakers of the sample. |
| `selected_speaker_ids` | Optional<Array<str>> | no | `nil` | The IDs of the selected speakers. |

### SpeakerTrack

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `media_ref` | [DubbingMediaReference](#dubbingmediareference) | **yes** | **required** |  |
| `speaker_name` | str | **yes** | **required** |  |
| `voices` | Hash<str, str> | **yes** | **required** |  |
| `segments` | Array<str> | **yes** | **required** |  |

### SpeakerUpdatedResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `version` | int | **yes** | **required** |  |

### SpeechHistoryItemResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `history_item_id` | str | **yes** | **required** | The ID of the history item. |
| `request_id` | Optional<str> | no | `nil` | The ID of the request. |
| `voice_id` | Optional<str> | no | `nil` | The ID of the voice used. |
| `model_id` | Optional<str> | no | `nil` | The ID of the model. |
| `voice_name` | Optional<str> | no | `nil` | The name of the voice. |
| `voice_category` | Optional<[SpeechHistoryItemResponseModelVoiceCategory](#speechhistoryitemresponsemodelvoicecategory)> | no | `nil` | The category of the voice. Either 'premade', 'cloned', 'generated' or 'professional'. |
| `text` | Optional<str> | no | `nil` | The text used to generate the audio item. |
| `date_unix` | int | **yes** | **required** | Unix timestamp of when the item was created. |
| `character_count_change_from` | int | **yes** | **required** | The character count change from. |
| `character_count_change_to` | int | **yes** | **required** | The character count change to. |
| `content_type` | str | **yes** | **required** | The content type of the generated item. |
| `state` | Any | **yes** | **required** |  |
| `settings` | Optional<Hash<str, Any>> | no | `nil` | The settings of the history item. |
| `feedback` | Optional<[FeedbackItem](#feedbackitem)> | no | `nil` | Feedback associated with the generated item. Returns null if no feedback has been provided. |
| `share_link_id` | Optional<str> | no | `nil` | The ID of the share link. |
| `source` | Optional<[SpeechHistoryItemResponseModelSource](#speechhistoryitemresponsemodelsource)> | no | `nil` | The source of the history item. Either TTS (text to speech), STS (speech to text), AN (audio native), Projects, Dubbing, PlayAPI, PD (pronunciation dictionary) or ConvAI (Agents Platform). |
| `alignments` | Optional<[HistoryAlignmentsResponseModel](#historyalignmentsresponsemodel)> | no | `nil` | The alignments of the history item. |
| `dialogue` | Optional<Array<[DialogueInputResponseModel](#dialogueinputresponsemodel)>> | no | `nil` | The dialogue (voice and text pairs) used to generate the audio item. If this is set then the top level `text` and `voice_id` fields will be empty. |
| `output_format` | Optional<str> | no | `nil` | The output format the audio was originally generated in. |

### SpeechToTextCharacterResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | str | **yes** | **required** | The character that was transcribed. |
| `start` | Optional<float> | no | `nil` | The start time of the character in seconds. |
| `end` | Optional<float> | no | `nil` | The end time of the character in seconds. |

### SpeechToTextChunkResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `language_code` | str | **yes** | **required** | The detected language code (e.g. 'eng' for English). |
| `language_probability` | float | **yes** | **required** | The confidence score of the language detection (0 to 1). |
| `text` | str | **yes** | **required** | The raw text of the transcription. |
| `words` | Array<[SpeechToTextWordResponseModel](#speechtotextwordresponsemodel)> | **yes** | **required** | List of words with their timing information. |
| `channel_index` | Optional<int> | no | `nil` | The channel index this transcript belongs to (for multichannel audio). |
| `additional_formats` | Optional<Array<Optional<[AdditionalFormatResponseModel](#additionalformatresponsemodel)>>> | no | `nil` | Requested additional formats of the transcript. |
| `transcription_id` | Optional<str> | no | `nil` | The transcription ID of the response. |
| `entities` | Optional<Array<[DetectedEntity](#detectedentity)>> | no | `nil` | List of detected entities with their text, type, and character positions in the transcript. |
| `audio_duration_secs` | Optional<float> | no | `nil` | The duration of the audio that was transcribed in seconds. |

### SpeechToTextWebhookResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `message` | str | **yes** | **required** | The message of the webhook response. |
| `request_id` | str | **yes** | **required** | The request ID of the webhook response. |
| `transcription_id` | Optional<str> | no | `nil` | The transcription ID of the webhook response. |

### SpeechToTextWordResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | str | **yes** | **required** | The word or sound that was transcribed. |
| `start` | Optional<float> | no | `nil` | The start time of the word or sound in seconds. |
| `end` | Optional<float> | no | `nil` | The end time of the word or sound in seconds. |
| `type` | [SpeechToTextWordResponseModelType](#speechtotextwordresponsemodeltype) | **yes** | **required** | The type of the word or sound. 'audio_event' is used for non-word sounds like laughter or footsteps. |
| `speaker_id` | Optional<str> | no | `nil` | Unique identifier for the speaker of this word. |
| `logprob` | float | **yes** | **required** | The log of the probability with which this word was predicted. Logprobs are in range [-infinity, 0], higher logprobs indicate a higher confidence the model has in its predictions. |
| `characters` | Optional<Array<[SpeechToTextCharacterResponseModel](#speechtotextcharacterresponsemodel)>> | no | `nil` | The characters that make up the word and their timing information. |

### SrtExportOptions

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `max_characters_per_line` | Optional<int> | no | `nil` |  |
| `include_speakers` | Optional<bool> | no | `nil` |  |
| `include_timestamps` | Optional<bool> | no | `nil` |  |
| `segment_on_silence_longer_than_s` | Optional<float> | no | `nil` |  |
| `max_segment_duration_s` | Optional<float> | no | `nil` |  |
| `max_segment_chars` | Optional<int> | no | `nil` |  |

### StartPvcVoiceTrainingResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the start PVC voice training request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### StartSpeakerSeparationResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the start speaker seperation request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### StreamingAudioChunkWithTimestampsAndVoiceSegmentsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `audio_base_64` | Annotated[str, FieldMetadata(alias='audio_base64')> | **yes** | **required** | Base64 encoded audio data |
| `alignment` | Optional<[CharacterAlignmentResponseModel](#characteralignmentresponsemodel)> | no | `nil` | Timestamp information for each character in the original text |
| `normalized_alignment` | Optional<[CharacterAlignmentResponseModel](#characteralignmentresponsemodel)> | no | `nil` | Timestamp information for each character in the normalized text |
| `voice_segments` | Array<[VoiceSegment](#voicesegment)> | **yes** | **required** | Voice segments for the audio |

### StreamingAudioChunkWithTimestampsResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `audio_base_64` | Annotated[str, FieldMetadata(alias='audio_base64')> | **yes** | **required** | Base64 encoded audio data |
| `alignment` | Optional<[CharacterAlignmentResponseModel](#characteralignmentresponsemodel)> | no | `nil` | Timestamp information for each character in the original text |
| `normalized_alignment` | Optional<[CharacterAlignmentResponseModel](#characteralignmentresponsemodel)> | no | `nil` | Timestamp information for each character in the normalized text |

### StudioAgentSettingsModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tool_settings` | Optional<Hash<str, [StudioAgentToolSettingsModel](#studioagenttoolsettingsmodel)>> | no | `nil` |  |

### StudioAgentToolSettingsModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `skip_confirmation` | Optional<bool> | no | `nil` |  |

### StudioClipReference

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `project_id` | str | **yes** | **required** |  |
| `chapter_id` | str | **yes** | **required** |  |
| `clip_type` | [StudioClipReferenceClipType](#studioclipreferencecliptype) | **yes** | **required** |  |
| `clip_id` | str | **yes** | **required** |  |
| `block_id` | Optional<str> | no | `nil` |  |
| `preview_url` | Optional<str> | no | `nil` |  |

### StudioTextStyleOutlineModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enabled` | bool | **yes** | **required** |  |
| `color` | str | **yes** | **required** |  |
| `opacity` | float | **yes** | **required** |  |
| `width` | float | **yes** | **required** |  |

### StudioTextStyleShadowModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enabled` | bool | **yes** | **required** |  |
| `color` | str | **yes** | **required** |  |
| `opacity` | float | **yes** | **required** |  |
| `blur` | float | **yes** | **required** |  |
| `offset_x` | float | **yes** | **required** |  |
| `offset_y` | float | **yes** | **required** |  |

### Subscription

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tier` | str | **yes** | **required** | The tier of the user's subscription. |
| `character_count` | int | **yes** | **required** | The number of characters used by the user. |
| `character_limit` | int | **yes** | **required** | The maximum number of characters allowed in the current billing period. |
| `max_character_limit_extension` | Optional<int> | no | `nil` | Deprecated: use `max_credit_limit_extension`. Maximum number of characters that the character limit can be exceeded by. Managed by the workspace admin. |
| `max_credit_limit_extension` | ExtendedSubscriptionResponseModelMaxCreditLimitExtension | **yes** | **required** | Maximum number of credits that the credit limit can be exceeded by. Managed by the workspace admin. `"unlimited"` means no cap, `0` means usage-based billing is disabled. |
| `can_extend_character_limit` | bool | **yes** | **required** | Whether the workspace is entitled to enter overages (usage-based billing). |
| `allowed_to_extend_character_limit` | bool | **yes** | **required** | Deprecated: use `max_credit_limit_extension != 0`. Whether the user is allowed to extend their character limit. |
| `next_character_count_reset_unix` | Optional<int> | no | `nil` | The Unix timestamp of the next character count reset. |
| `voice_slots_used` | int | **yes** | **required** | The number of voice slots used by the user. |
| `professional_voice_slots_used` | int | **yes** | **required** | The number of professional voice slots used by the workspace/user if single seat. |
| `voice_limit` | int | **yes** | **required** | The maximum number of voice slots allowed for the user. |
| `max_voice_add_edits` | Optional<int> | no | `nil` | The maximum number of voice add/edits allowed for the user. |
| `voice_add_edit_counter` | int | **yes** | **required** | The number of voice add/edits used by the user. |
| `professional_voice_limit` | int | **yes** | **required** | The maximum number of professional voices allowed for the user. |
| `can_extend_voice_limit` | bool | **yes** | **required** | Whether the user can extend their voice limit. |
| `can_use_instant_voice_cloning` | bool | **yes** | **required** | Whether the user can use instant voice cloning. |
| `can_use_professional_voice_cloning` | bool | **yes** | **required** | Whether the user can use professional voice cloning. |
| `currency` | Optional<[ExtendedSubscriptionResponseModelCurrency](#extendedsubscriptionresponsemodelcurrency)> | no | `nil` | The currency of the user's subscription. |
| `status` | [SubscriptionStatusType](#subscriptionstatustype) | **yes** | **required** | The status of the user's subscription. |
| `billing_period` | Optional<[BillingPeriod](#billingperiod)> | no | `nil` | The billing period of the user's subscription. |
| `character_refresh_period` | Optional<[CharacterRefreshPeriod](#characterrefreshperiod)> | no | `nil` | The character refresh period of the user's subscription. |
| `next_invoice` | Optional<[InvoiceResponse](#invoiceresponse)> | no | `nil` | The next invoice for the user. |
| `open_invoices` | Array<[InvoiceResponse](#invoiceresponse)> | **yes** | **required** | The open invoices for the user. |
| `has_open_invoices` | bool | **yes** | **required** | Whether the user has open invoices. |
| `pending_change` | Optional<ExtendedSubscriptionResponseModelPendingChange> | no | `nil` | The pending change for the user. |
| `has_used_starter_coupon_on_account` | Optional<bool> | no | `nil` | True if any workspace owned by this user's auth account has redeemed the starter first-month discount coupon. |
| `has_used_creator_coupon_on_account` | Optional<bool> | no | `nil` | True if any workspace owned by this user's auth account has redeemed the creator first-month discount coupon. |

### SubscriptionResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tier` | str | **yes** | **required** | The tier of the user's subscription. |
| `character_count` | int | **yes** | **required** | The number of characters used by the user. |
| `character_limit` | int | **yes** | **required** | The maximum number of characters allowed in the current billing period. |
| `max_character_limit_extension` | Optional<int> | no | `nil` | Deprecated: use `max_credit_limit_extension`. Maximum number of characters that the character limit can be exceeded by. Managed by the workspace admin. |
| `max_credit_limit_extension` | SubscriptionResponseModelMaxCreditLimitExtension | **yes** | **required** | Maximum number of credits that the credit limit can be exceeded by. Managed by the workspace admin. `"unlimited"` means no cap, `0` means usage-based billing is disabled. |
| `can_extend_character_limit` | bool | **yes** | **required** | Whether the workspace is entitled to enter overages (usage-based billing). |
| `allowed_to_extend_character_limit` | bool | **yes** | **required** | Deprecated: use `max_credit_limit_extension != 0`. Whether the user is allowed to extend their character limit. |
| `next_character_count_reset_unix` | Optional<int> | no | `nil` | The Unix timestamp of the next character count reset. |
| `voice_slots_used` | int | **yes** | **required** | The number of voice slots used by the user. |
| `professional_voice_slots_used` | int | **yes** | **required** | The number of professional voice slots used by the workspace/user if single seat. |
| `voice_limit` | int | **yes** | **required** | The maximum number of voice slots allowed for the user. |
| `max_voice_add_edits` | Optional<int> | no | `nil` | The maximum number of voice add/edits allowed for the user. |
| `voice_add_edit_counter` | int | **yes** | **required** | The number of voice add/edits used by the user. |
| `professional_voice_limit` | int | **yes** | **required** | The maximum number of professional voices allowed for the user. |
| `can_extend_voice_limit` | bool | **yes** | **required** | Whether the user can extend their voice limit. |
| `can_use_instant_voice_cloning` | bool | **yes** | **required** | Whether the user can use instant voice cloning. |
| `can_use_professional_voice_cloning` | bool | **yes** | **required** | Whether the user can use professional voice cloning. |
| `currency` | Optional<[SubscriptionResponseModelCurrency](#subscriptionresponsemodelcurrency)> | no | `nil` | The currency of the user's subscription. |
| `status` | [SubscriptionStatusType](#subscriptionstatustype) | **yes** | **required** | The status of the user's subscription. |
| `billing_period` | Optional<[BillingPeriod](#billingperiod)> | no | `nil` | The billing period of the user's subscription. |
| `character_refresh_period` | Optional<[CharacterRefreshPeriod](#characterrefreshperiod)> | no | `nil` | The character refresh period of the user's subscription. |

### SuggestedAudioTag

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tag` | str | **yes** | **required** | Audio tag to use (for best performance, 1-2 words, e.g., 'happy', 'excited') |
| `description` | Optional<str> | no | `nil` | Optional description of when to use this tag |

### SupportedVoice

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | str | **yes** | **required** |  |
| `voice_id` | str | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` |  |
| `language` | Optional<str> | no | `nil` |  |
| `model_family` | Optional<[TtsModelFamily](#ttsmodelfamily)> | no | `nil` |  |
| `optimize_streaming_latency` | Optional<TtsOptimizeStreamingLatency> | no | `nil` |  |
| `stability` | Optional<float> | no | `nil` |  |
| `speed` | Optional<float> | no | `nil` |  |
| `similarity_boost` | Optional<float> | no | `nil` |  |

### SystemToolConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'system'>> | no | `nil` | The type of tool |
| `name` | str | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` | Description of when the tool should be used and what it does. Leave empty to use the default description that's optimized for the specific tool type. |
| `response_timeout_secs` | Optional<int> | no | `nil` | The maximum time in seconds to wait for the tool call to complete. |
| `disable_interruptions` | Optional<bool> | no | `nil` | If true, the user will not be able to interrupt the agent while this tool is running. |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` | If true, the agent will speak before the tool call. |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` | Configuration for extracting values from tool responses and assigning them to dynamic variables |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` | Predefined tool call sound type to play during tool execution. If not specified, no tool call sound will be played. |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` | Determines when the tool call sound should play. 'auto' only plays when there's pre-tool speech, 'always' plays for every tool call. |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` | Controls how tool errors are processed before being shared with the agent. 'auto' determines handling based on tool type (summarized for native integrations, hide for others), 'summarized' sends an LLM-generated summary, 'passthrough' sends the raw error, 'hide' does not share the error with the agent. |
| `params` | [SystemToolConfigInputParams](#systemtoolconfiginputparams) | **yes** | **required** |  |

### SystemToolConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'system'>> | no | `nil` | The type of tool |
| `name` | str | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` | Description of when the tool should be used and what it does. Leave empty to use the default description that's optimized for the specific tool type. |
| `response_timeout_secs` | Optional<int> | no | `nil` | The maximum time in seconds to wait for the tool call to complete. |
| `disable_interruptions` | Optional<bool> | no | `nil` | If true, the user will not be able to interrupt the agent while this tool is running. |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` | If true, the agent will speak before the tool call. |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` | Configuration for extracting values from tool responses and assigning them to dynamic variables |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` | Predefined tool call sound type to play during tool execution. If not specified, no tool call sound will be played. |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` | Determines when the tool call sound should play. 'auto' only plays when there's pre-tool speech, 'always' plays for every tool call. |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` | Controls how tool errors are processed before being shared with the agent. 'auto' determines handling based on tool type (summarized for native integrations, hide for others), 'summarized' sends an LLM-generated summary, 'passthrough' sends the raw error, 'hide' does not share the error with the agent. |
| `params` | [SystemToolConfigOutputParams](#systemtoolconfigoutputparams) | **yes** | **required** |  |

### TelephonyCallConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `ringing_timeout_secs` | Optional<int> | no | `nil` | How long to ring the recipient before giving up, in seconds. Note that this will also be limited by the provider's own constraints. |

### TestConditionRationaleCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `messages` | Optional<Array<str>> | no | `nil` | List of individual parameter evaluation messages or reasons |
| `summary` | Optional<str> | no | `nil` | High-level summary of the evaluation result |

### TestConditionResultCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result` | [EvaluationSuccessResult](#evaluationsuccessresult) | **yes** | **required** |  |
| `rationale` | Optional<[TestConditionRationaleCommonModel](#testconditionrationalecommonmodel)> | no | `nil` |  |

### TestFromConversationMetadataInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_id` | str | **yes** | **required** |  |
| `agent_id` | str | **yes** | **required** |  |
| `branch_id` | Optional<str> | no | `nil` |  |
| `workflow_node_id` | Optional<str> | no | `nil` |  |
| `original_agent_reply` | Optional<Array<[ConversationHistoryTranscriptCommonModelInput](#conversationhistorytranscriptcommonmodelinput)>> | no | `nil` |  |

### TestFromConversationMetadataOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_id` | str | **yes** | **required** |  |
| `agent_id` | str | **yes** | **required** |  |
| `branch_id` | Optional<str> | no | `nil` |  |
| `workflow_node_id` | Optional<str> | no | `nil` |  |
| `original_agent_reply` | Optional<Array<[ConversationHistoryTranscriptCommonModelOutput](#conversationhistorytranscriptcommonmodeloutput)>> | no | `nil` |  |

### TestInvocationSummaryResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** | The ID of the test invocation |
| `agent_id` | Optional<str> | no | `nil` | The ID of the agent this test invocation belongs to |
| `branch_id` | Optional<str> | no | `nil` | The ID of the branch this test invocation was run on |
| `created_at_unix_secs` | int | **yes** | **required** | Creation time of the test invocation in unix seconds |
| `test_run_count` | int | **yes** | **required** | Number of test runs in this invocation |
| `passed_count` | int | **yes** | **required** | Number of test runs that passed |
| `failed_count` | int | **yes** | **required** | Number of test runs that failed |
| `pending_count` | int | **yes** | **required** | Number of test runs that are pending |
| `title` | str | **yes** | **required** | Title of the test invocation - either the single test name or count of tests |
| `access_info` | Optional<[ResourceAccessInfo](#resourceaccessinfo)> | no | `nil` | The access information of the test invocation |

### TestRunMetadata

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `workspace_id` | str | **yes** | **required** |  |
| `test_name` | str | **yes** | **required** |  |
| `ran_by_user_email` | str | **yes** | **required** |  |
| `test_type` | Optional<[TestRunMetadataTestType](#testrunmetadatatesttype)> | no | `nil` |  |

### TestToolResultModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |

### TestsFeatureUsageCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enabled` | Optional<bool> | no | `nil` |  |
| `tests_ran_after_last_modification` | Optional<bool> | no | `nil` |  |
| `tests_ran_in_last_7_days` | Optional<bool> | no | `nil` |  |

### ThresholdGuardrail

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `is_enabled` | Optional<bool> | no | `nil` |  |
| `threshold` | Optional<float> | no | `nil` |  |

### TimeRange

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `start_ms` | int | **yes** | **required** |  |
| `end_ms` | int | **yes** | **required** |  |

### ToDialogueSettingsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `stability` | Optional<float> | no | `nil` | Determines how stable the voice is and the randomness between each generation. Lower values introduce broader emotional range for the voice. Higher values can result in a monotonous voice with limited emotion. |
| `speed` | Optional<float> | no | `nil` |  |

### TokenResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `token` | str | **yes** | **required** |  |

### Tool

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `title` | Optional<str> | no | `nil` |  |
| `description` | Optional<str> | no | `nil` |  |
| `input_schema` | Annotated[Hash<str, Any>, FieldMetadata(alias='inputSchema')> | **yes** | **required** |  |
| `output_schema` | Annotated[Optional<Hash<str, Any>>, FieldMetadata(alias='outputSchema')> | no | `nil` |  |
| `annotations` | Optional<[ToolAnnotations](#toolannotations)> | no | `nil` |  |
| `meta` | Annotated[Optional<Hash<str, Any>>, FieldMetadata(alias='_meta')> | no | `nil` |  |

### ToolAnnotations

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `title` | Optional<str> | no | `nil` |  |
| `read_only_hint` | Annotated[Optional<bool>, FieldMetadata(alias='readOnlyHint')> | no | `nil` |  |
| `destructive_hint` | Annotated[Optional<bool>, FieldMetadata(alias='destructiveHint')> | no | `nil` |  |
| `idempotent_hint` | Annotated[Optional<bool>, FieldMetadata(alias='idempotentHint')> | no | `nil` |  |
| `open_world_hint` | Annotated[Optional<bool>, FieldMetadata(alias='openWorldHint')> | no | `nil` |  |

### ToolCallUnitTestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataOutput](#testfromconversationmetadataoutput)> | no | `nil` | Metadata of a conversation this test was created from (if applicable). |
| `dynamic_variables` | Optional<Hash<str, Optional<ToolCallUnitTestModelDynamicVariablesValue>>> | no | `nil` | Dynamic variables to replace in the agent config during testing |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelOutput](#conversationhistorytranscriptcommonmodeloutput)>> | no | `nil` |  |
| `tool_call_parameters` | Optional<[UnitTestToolCallEvaluationModelOutput](#unittesttoolcallevaluationmodeloutput)> | no | `nil` | How to evaluate the agent's tool call (if any). If empty, the tool call is not evaluated. |
| `check_any_tool_matches` | Optional<bool> | no | `nil` | If set to True this test will pass if any tool call returned by the LLM matches the criteria. Otherwise it will fail if more than one tool is returned by the agent. |

### ToolExecutionResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tool_id` | str | **yes** | **required** | The ID of the tool that was executed |
| `tool_request_id` | str | **yes** | **required** | The request/call ID associated with this tool execution |
| `conversation_id` | str | **yes** | **required** | The ID of the conversation where the tool was executed |
| `agent_id` | str | **yes** | **required** | The ID of the agent that ran the tool |
| `branch_id` | Optional<str> | no | `nil` | The branch ID if the agent has branches |
| `timestamp` | float | **yes** | **required** | Unix timestamp when the tool was executed |
| `latency_secs` | float | **yes** | **required** | How long the tool execution took |
| `is_error` | Optional<bool> | no | `nil` | Whether the tool execution failed |
| `request_payload` | Optional<str> | no | `nil` | LLM-extracted parameters sent to the tool (JSON string) |
| `response_payload` | Optional<str> | no | `nil` | Response returned by the tool |
| `error_message` | Optional<str> | no | `nil` | Error message if the tool execution failed |
| `error_type` | Optional<str> | no | `nil` | Error category (internal, customer_config, customer_auth, external_server, external_client, client_timeout, unknown) |
| `id` | str | **yes** | **required** |  |
| `tool_call_details` | Optional<[ToolExecutionResponseModelToolCallDetails](#toolexecutionresponsemodeltoolcalldetails)> | no | `nil` |  |

### ToolMockConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `default_return_value` | Optional<str> | no | `nil` |  |
| `default_is_error` | Optional<bool> | no | `nil` |  |

### ToolRequestModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tool_config` | [ToolRequestModelToolConfig](#toolrequestmodeltoolconfig) | **yes** | **required** | Configuration for the tool |
| `response_mocks` | Optional<Array<[ToolResponseMockConfigInput](#toolresponsemockconfiginput)>> | no | `nil` | Mock responses with optional parameter conditions. Evaluated top-to-bottom; first match wins. |

### ToolResponseMockConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `parameter_conditions` | Optional<Array<[UnitTestToolCallParameter](#unittesttoolcallparameter)>> | no | `nil` | If the list is empty, the mock will always activate. |
| `mock_result` | str | **yes** | **required** | The return value the LLM sees when this mock is active. |

### ToolResponseMockConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `parameter_conditions` | Optional<Array<[UnitTestToolCallParameter](#unittesttoolcallparameter)>> | no | `nil` | If the list is empty, the mock will always activate. |
| `mock_result` | str | **yes** | **required** | The return value the LLM sees when this mock is active. |

### ToolResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** |  |
| `tool_config` | [ToolResponseModelToolConfig](#toolresponsemodeltoolconfig) | **yes** | **required** | The type of tool |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `usage_stats` | [ToolUsageStatsResponseModel](#toolusagestatsresponsemodel) | **yes** | **required** |  |
| `response_mocks` | Optional<Array<[ToolResponseMockConfigOutput](#toolresponsemockconfigoutput)>> | no | `nil` | Mock responses with optional parameter conditions. Evaluated top-to-bottom; first match wins. |

### ToolUsageStatsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `total_calls` | Optional<int> | no | `nil` | The total number of calls to the tool |
| `avg_latency_secs` | float | **yes** | **required** |  |

### ToolsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tools` | Array<[ToolResponseModel](#toolresponsemodel)> | **yes** | **required** |  |
| `next_cursor` | Optional<str> | no | `nil` |  |
| `has_more` | bool | **yes** | **required** |  |

### TranscriptionWord

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | Optional<str> | no | `nil` | The transcribed word. |
| `start` | Optional<float> | no | `nil` | Start time in seconds. |
| `end` | Optional<float> | no | `nil` | End time in seconds. |
| `type` | Optional<[TranscriptionWordType](#transcriptionwordtype)> | no | `nil` | The type of word. |
| `speaker_id` | Optional<str> | no | `nil` | The ID of the speaker if available. |
| `logprob` | Optional<float> | no | `nil` | Confidence score for this word. |
| `characters` | Optional<Array<str>> | no | `nil` | The characters in the word. |

### TransferBranchInfoDefaultingToMain

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `branch_id` | str | **yes** | **required** |  |

### TransferBranchInfoTrafficSplit

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `branch_id` | str | **yes** | **required** |  |
| `traffic_percentage` | float | **yes** | **required** |  |

### TransferToAgentToolConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `transfers` | Array<[AgentTransfer](#agenttransfer)> | **yes** | **required** |  |

### TransferToAgentToolResultErrorModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<Literal<'error'>> | no | `nil` |  |
| `from_agent` | str | **yes** | **required** |  |
| `error` | str | **yes** | **required** |  |

### TransferToAgentToolResultSuccessModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `from_agent` | str | **yes** | **required** |  |
| `to_agent` | str | **yes** | **required** |  |
| `condition` | str | **yes** | **required** |  |
| `delay_ms` | Optional<int> | no | `nil` |  |
| `transfer_message` | Optional<str> | no | `nil` |  |
| `enable_transferred_agent_first_message` | Optional<bool> | no | `nil` |  |
| `branch_info` | Optional<[TransferToAgentToolResultSuccessModelBranchInfo](#transfertoagenttoolresultsuccessmodelbranchinfo)> | no | `nil` |  |

### TransferToNumberResultErrorModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<Literal<'error'>> | no | `nil` |  |
| `error` | str | **yes** | **required** |  |
| `details` | Optional<str> | no | `nil` |  |

### TransferToNumberResultSipSuccessModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `transfer_number` | str | **yes** | **required** |  |
| `reason` | Optional<str> | no | `nil` |  |
| `note` | Optional<str> | no | `nil` |  |

### TransferToNumberResultTwilioSuccessModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `transfer_number` | str | **yes** | **required** |  |
| `reason` | Optional<str> | no | `nil` |  |
| `client_message` | Optional<str> | no | `nil` |  |
| `agent_message` | str | **yes** | **required** |  |
| `conference_name` | str | **yes** | **required** |  |
| `post_dial_digits` | Optional<str> | no | `nil` |  |
| `note` | Optional<str> | no | `nil` |  |

### TransferToNumberToolConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `transfers` | Array<[PhoneNumberTransfer](#phonenumbertransfer)> | **yes** | **required** |  |
| `enable_client_message` | Optional<bool> | no | `nil` | Whether to play a message to the client while they wait for transfer. Defaults to true for backward compatibility. |

### TransferToNumberToolConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `transfers` | Array<[PhoneNumberTransfer](#phonenumbertransfer)> | **yes** | **required** |  |
| `enable_client_message` | Optional<bool> | no | `nil` | Whether to play a message to the client while they wait for transfer. Defaults to true for backward compatibility. |

### TtsConversationalConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `model_id` | Optional<[TtsConversationalModel](#ttsconversationalmodel)> | no | `nil` | The model to use for TTS |
| `voice_id` | Optional<str> | no | `nil` | The voice ID to use for TTS |
| `supported_voices` | Optional<Array<[SupportedVoice](#supportedvoice)>> | no | `nil` | Additional supported voices for the agent |
| `expressive_mode` | Optional<bool> | no | `nil` | When enabled, applies expressive audio tags prompt. Automatically disabled for non-v3 models. |
| `suggested_audio_tags` | Optional<Array<[SuggestedAudioTag](#suggestedaudiotag)>> | no | `nil` | Suggested audio tags to boost expressive speech (for eleven_v3 and eleven_v3_conversational models). The agent can still use other tags not listed here. |
| `agent_output_audio_format` | Optional<[TtsOutputFormat](#ttsoutputformat)> | no | `nil` | The audio format to use for TTS |
| `optimize_streaming_latency` | Optional<TtsOptimizeStreamingLatency> | no | `nil` | The optimization for streaming latency |
| `stability` | Optional<float> | no | `nil` | The stability of generated speech |
| `speed` | Optional<float> | no | `nil` | The speed of generated speech |
| `similarity_boost` | Optional<float> | no | `nil` | The similarity boost for generated speech |
| `text_normalisation_type` | Optional<[TextNormalisationType](#textnormalisationtype)> | no | `nil` | Method for converting numbers to words before converting text to speech. If set to SYSTEM_PROMPT, the system prompt will be updated to include normalization instructions. If set to ELEVENLABS, the text will be normalized after generation, incurring slight additional latency. |
| `pronunciation_dictionary_locators` | Optional<Array<[PydanticPronunciationDictionaryVersionLocator](#pydanticpronunciationdictionaryversionlocator)>> | no | `nil` | The pronunciation dictionary locators |

### TtsConversationalConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `model_id` | Optional<[TtsConversationalModel](#ttsconversationalmodel)> | no | `nil` | The model to use for TTS |
| `voice_id` | Optional<str> | no | `nil` | The voice ID to use for TTS |
| `supported_voices` | Optional<Array<[SupportedVoice](#supportedvoice)>> | no | `nil` | Additional supported voices for the agent |
| `expressive_mode` | Optional<bool> | no | `nil` | When enabled, applies expressive audio tags prompt. Automatically disabled for non-v3 models. |
| `suggested_audio_tags` | Optional<Array<[SuggestedAudioTag](#suggestedaudiotag)>> | no | `nil` | Suggested audio tags to boost expressive speech (for eleven_v3 and eleven_v3_conversational models). The agent can still use other tags not listed here. |
| `agent_output_audio_format` | Optional<[TtsOutputFormat](#ttsoutputformat)> | no | `nil` | The audio format to use for TTS |
| `optimize_streaming_latency` | Optional<TtsOptimizeStreamingLatency> | no | `nil` | The optimization for streaming latency |
| `stability` | Optional<float> | no | `nil` | The stability of generated speech |
| `speed` | Optional<float> | no | `nil` | The speed of generated speech |
| `similarity_boost` | Optional<float> | no | `nil` | The similarity boost for generated speech |
| `text_normalisation_type` | Optional<[TextNormalisationType](#textnormalisationtype)> | no | `nil` | Method for converting numbers to words before converting text to speech. If set to SYSTEM_PROMPT, the system prompt will be updated to include normalization instructions. If set to ELEVENLABS, the text will be normalized after generation, incurring slight additional latency. |
| `pronunciation_dictionary_locators` | Optional<Array<[PydanticPronunciationDictionaryVersionLocator](#pydanticpronunciationdictionaryversionlocator)>> | no | `nil` | The pronunciation dictionary locators |

### TtsConversationalConfigOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voice_id` | Optional<str> | no | `nil` | The voice ID to use for TTS |
| `stability` | Optional<float> | no | `nil` | The stability of generated speech |
| `speed` | Optional<float> | no | `nil` | The speed of generated speech |
| `similarity_boost` | Optional<float> | no | `nil` | The similarity boost for generated speech |

### TtsConversationalConfigOverrideConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voice_id` | Optional<bool> | no | `nil` | Whether to allow overriding the voice_id field. |
| `stability` | Optional<bool> | no | `nil` | Whether to allow overriding the stability field. |
| `speed` | Optional<bool> | no | `nil` | Whether to allow overriding the speed field. |
| `similarity_boost` | Optional<bool> | no | `nil` | Whether to allow overriding the similarity_boost field. |

### TtsConversationalConfigWorkflowOverrideInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `model_id` | Optional<[TtsConversationalModel](#ttsconversationalmodel)> | no | `nil` | The model to use for TTS |
| `voice_id` | Optional<str> | no | `nil` | The voice ID to use for TTS |
| `supported_voices` | Optional<Array<[SupportedVoice](#supportedvoice)>> | no | `nil` | Additional supported voices for the agent |
| `expressive_mode` | Optional<bool> | no | `nil` | When enabled, applies expressive audio tags prompt. Automatically disabled for non-v3 models. |
| `suggested_audio_tags` | Optional<Array<[SuggestedAudioTag](#suggestedaudiotag)>> | no | `nil` | Suggested audio tags to boost expressive speech (for eleven_v3 and eleven_v3_conversational models). The agent can still use other tags not listed here. |
| `agent_output_audio_format` | Optional<[TtsOutputFormat](#ttsoutputformat)> | no | `nil` | The audio format to use for TTS |
| `optimize_streaming_latency` | Optional<TtsOptimizeStreamingLatency> | no | `nil` | The optimization for streaming latency |
| `stability` | Optional<float> | no | `nil` | The stability of generated speech |
| `speed` | Optional<float> | no | `nil` | The speed of generated speech |
| `similarity_boost` | Optional<float> | no | `nil` | The similarity boost for generated speech |
| `text_normalisation_type` | Optional<[TextNormalisationType](#textnormalisationtype)> | no | `nil` | Method for converting numbers to words before converting text to speech. If set to SYSTEM_PROMPT, the system prompt will be updated to include normalization instructions. If set to ELEVENLABS, the text will be normalized after generation, incurring slight additional latency. |
| `pronunciation_dictionary_locators` | Optional<Array<[PydanticPronunciationDictionaryVersionLocator](#pydanticpronunciationdictionaryversionlocator)>> | no | `nil` | The pronunciation dictionary locators |

### TtsConversationalConfigWorkflowOverrideOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `model_id` | Optional<[TtsConversationalModel](#ttsconversationalmodel)> | no | `nil` | The model to use for TTS |
| `voice_id` | Optional<str> | no | `nil` | The voice ID to use for TTS |
| `supported_voices` | Optional<Array<[SupportedVoice](#supportedvoice)>> | no | `nil` | Additional supported voices for the agent |
| `expressive_mode` | Optional<bool> | no | `nil` | When enabled, applies expressive audio tags prompt. Automatically disabled for non-v3 models. |
| `suggested_audio_tags` | Optional<Array<[SuggestedAudioTag](#suggestedaudiotag)>> | no | `nil` | Suggested audio tags to boost expressive speech (for eleven_v3 and eleven_v3_conversational models). The agent can still use other tags not listed here. |
| `agent_output_audio_format` | Optional<[TtsOutputFormat](#ttsoutputformat)> | no | `nil` | The audio format to use for TTS |
| `optimize_streaming_latency` | Optional<TtsOptimizeStreamingLatency> | no | `nil` | The optimization for streaming latency |
| `stability` | Optional<float> | no | `nil` | The stability of generated speech |
| `speed` | Optional<float> | no | `nil` | The speed of generated speech |
| `similarity_boost` | Optional<float> | no | `nil` | The similarity boost for generated speech |
| `text_normalisation_type` | Optional<[TextNormalisationType](#textnormalisationtype)> | no | `nil` | Method for converting numbers to words before converting text to speech. If set to SYSTEM_PROMPT, the system prompt will be updated to include normalization instructions. If set to ELEVENLABS, the text will be normalized after generation, incurring slight additional latency. |
| `pronunciation_dictionary_locators` | Optional<Array<[PydanticPronunciationDictionaryVersionLocator](#pydanticpronunciationdictionaryversionlocator)>> | no | `nil` | The pronunciation dictionary locators |

### TurnConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `turn_timeout` | Optional<float> | no | `nil` | Maximum wait time for the user's reply before re-engaging the user |
| `initial_wait_time` | Optional<float> | no | `nil` | How long the agent will wait for the user to start the conversation if the first message is empty. If not set, uses the regular turn_timeout. |
| `silence_end_call_timeout` | Optional<float> | no | `nil` | Maximum wait time since the user last spoke before terminating the call |
| `soft_timeout_config` | Optional<[SoftTimeoutConfig](#softtimeoutconfig)> | no | `nil` | Configuration for soft timeout functionality. Provides immediate feedback during longer LLM responses. |
| `turn_eagerness` | Optional<[TurnEagerness](#turneagerness)> | no | `nil` | Controls how eager the agent is to respond. Low = less eager (waits longer), Standard = default eagerness, High = more eager (responds sooner) |
| `spelling_patience` | Optional<[SpellingPatience](#spellingpatience)> | no | `nil` | Controls if the agent should be more patient when user is spelling numbers and named entities. Auto = model based, Off = never wait extra |
| `speculative_turn` | Optional<bool> | no | `nil` | When enabled, starts generating LLM responses during silence before full turn confidence is reached, reducing perceived latency. May increase LLM costs. |
| `retranscribe_on_turn_timeout` | Optional<bool> | no | `nil` | When enabled, if VAD detects no speech, attempts to re-transcribe accumulated audio at turn timeout. Disables silence discount billing for affected turns. |

### TurnConfigOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `soft_timeout_config` | Optional<[SoftTimeoutConfigOverride](#softtimeoutconfigoverride)> | no | `nil` | Configuration for soft timeout functionality. Provides immediate feedback during longer LLM responses. |

### TurnConfigOverrideConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `soft_timeout_config` | Optional<[SoftTimeoutConfigOverrideConfig](#softtimeoutconfigoverrideconfig)> | no | `nil` | Configures overrides for nested fields. |

### TurnConfigWorkflowOverride

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `turn_timeout` | Optional<float> | no | `nil` | Maximum wait time for the user's reply before re-engaging the user |
| `initial_wait_time` | Optional<float> | no | `nil` | How long the agent will wait for the user to start the conversation if the first message is empty. If not set, uses the regular turn_timeout. |
| `silence_end_call_timeout` | Optional<float> | no | `nil` | Maximum wait time since the user last spoke before terminating the call |
| `soft_timeout_config` | Optional<[SoftTimeoutConfigWorkflowOverride](#softtimeoutconfigworkflowoverride)> | no | `nil` | Configuration for soft timeout functionality. Provides immediate feedback during longer LLM responses. |
| `turn_eagerness` | Optional<[TurnEagerness](#turneagerness)> | no | `nil` | Controls how eager the agent is to respond. Low = less eager (waits longer), Standard = default eagerness, High = more eager (responds sooner) |
| `spelling_patience` | Optional<[SpellingPatience](#spellingpatience)> | no | `nil` | Controls if the agent should be more patient when user is spelling numbers and named entities. Auto = model based, Off = never wait extra |
| `speculative_turn` | Optional<bool> | no | `nil` | When enabled, starts generating LLM responses during silence before full turn confidence is reached, reducing perceived latency. May increase LLM costs. |
| `retranscribe_on_turn_timeout` | Optional<bool> | no | `nil` | When enabled, if VAD detects no speech, attempts to re-transcribe accumulated audio at turn timeout. Disables silence discount billing for affected turns. |

### TwilioOutboundCallResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `success` | bool | **yes** | **required** |  |
| `message` | str | **yes** | **required** |  |
| `conversation_id` | Optional<str> | no | `nil` |  |
| `call_sid` | Annotated[Optional<str>, FieldMetadata(alias='callSid')> | no | `nil` |  |

### TxtExportOptions

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `max_characters_per_line` | Optional<int> | no | `nil` |  |
| `include_speakers` | Optional<bool> | no | `nil` |  |
| `include_timestamps` | Optional<bool> | no | `nil` |  |
| `segment_on_silence_longer_than_s` | Optional<float> | no | `nil` |  |
| `max_segment_duration_s` | Optional<float> | no | `nil` |  |
| `max_segment_chars` | Optional<int> | no | `nil` |  |

### UnitTestRunResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `test_run_id` | str | **yes** | **required** |  |
| `test_info` | Optional<[UnitTestRunResponseModelTestInfo](#unittestrunresponsemodeltestinfo)> | no | `nil` |  |
| `test_invocation_id` | str | **yes** | **required** |  |
| `agent_id` | str | **yes** | **required** |  |
| `branch_id` | Optional<str> | no | `nil` |  |
| `workflow_node_id` | Optional<str> | no | `nil` |  |
| `status` | [TestRunStatus](#testrunstatus) | **yes** | **required** |  |
| `agent_responses` | Optional<Array<[ConversationHistoryTranscriptCommonModelOutput](#conversationhistorytranscriptcommonmodeloutput)>> | no | `nil` |  |
| `test_id` | str | **yes** | **required** |  |
| `test_name` | Optional<str> | no | `nil` |  |
| `condition_result` | Optional<[TestConditionResultCommonModel](#testconditionresultcommonmodel)> | no | `nil` |  |
| `last_updated_at_unix` | Optional<int> | no | `nil` |  |
| `metadata` | Optional<[TestRunMetadata](#testrunmetadata)> | no | `nil` |  |
| `root_folder_id` | Optional<str> | no | `nil` |  |
| `root_folder_name` | Optional<str> | no | `nil` |  |
| `environment` | Optional<str> | no | `nil` |  |

### UnitTestSummaryResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `id` | str | **yes** | **required** | The ID of the test |
| `name` | str | **yes** | **required** | Name of the test |
| `access_info` | Optional<[ResourceAccessInfo](#resourceaccessinfo)> | no | `nil` | The access information of the test |
| `created_at_unix_secs` | int | **yes** | **required** | Creation time of the test in unix seconds |
| `last_updated_at_unix_secs` | int | **yes** | **required** | Last update time of the test in unix seconds |
| `type` | [TestType](#testtype) | **yes** | **required** | Type of the test or entity |
| `entity_type` | Optional<[AgentTestEntityType](#agenttestentitytype)> | no | `nil` | The type of entity (test or folder) |
| `folder_parent_id` | Optional<str> | no | `nil` | The ID of the parent folder |
| `folder_path` | Optional<Array<[AgentTestFolderPathSegmentResponseModel](#agenttestfolderpathsegmentresponsemodel)>> | no | `nil` | The folder path segments from root to this entity |
| `children_count` | Optional<int> | no | `nil` | Number of direct children (tests and subfolders) for folders only |

### UnitTestToolCallEvaluationModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `parameters` | Optional<Array<[UnitTestToolCallParameter](#unittesttoolcallparameter)>> | no | `nil` | Parameters to evaluate for the agent's tool call. If empty, the tool call parameters are not evaluated. |
| `referenced_tool` | Optional<[ReferencedToolCommonModel](#referencedtoolcommonmodel)> | no | `nil` | The tool to evaluate a call against. |
| `verify_absence` | Optional<bool> | no | `nil` | Whether to verify that the tool was NOT called. |
| `workflow_node_transition` | Optional<[UnitTestWorkflowNodeTransitionEvaluationNodeId](#unittestworkflownodetransitionevaluationnodeid)> | no | `nil` | Configuration for testing workflow node transitions. When set, the test will verify the agent transitions to the specified workflow node. |

### UnitTestToolCallEvaluationModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `parameters` | Optional<Array<[UnitTestToolCallParameter](#unittesttoolcallparameter)>> | no | `nil` | Parameters to evaluate for the agent's tool call. If empty, the tool call parameters are not evaluated. |
| `referenced_tool` | Optional<[ReferencedToolCommonModel](#referencedtoolcommonmodel)> | no | `nil` | The tool to evaluate a call against. |
| `verify_absence` | Optional<bool> | no | `nil` | Whether to verify that the tool was NOT called. |
| `workflow_node_transition` | Optional<[UnitTestWorkflowNodeTransitionEvaluationNodeId](#unittestworkflownodetransitionevaluationnodeid)> | no | `nil` | Configuration for testing workflow node transitions. When set, the test will verify the agent transitions to the specified workflow node. |

### UnitTestToolCallParameter

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `eval` | [UnitTestToolCallParameterEval](#unittesttoolcallparametereval) | **yes** | **required** |  |
| `path` | str | **yes** | **required** |  |

### UnitTestWorkflowNodeTransitionEvaluationNodeId

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<Literal<'node_id'>> | no | `nil` |  |
| `agent_id` | str | **yes** | **required** | The ID of the agent whose workflow contains the target node. |
| `target_node_id` | str | **yes** | **required** | The ID of the workflow node that the agent should transition to. |

### UpdateAgentRuleParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_agent_rule'>> | no | `nil` |  |

### UpdateAssetParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_asset'>> | no | `nil` |  |

### UpdateBookingPageSettingsParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_booking_page_settings'>> | no | `nil` |  |

### UpdateBusinessInfoParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_business_info'>> | no | `nil` |  |

### UpdateCalendarEventParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_calendar_event'>> | no | `nil` |  |

### UpdateClientParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_client'>> | no | `nil` |  |

### UpdateCustomerFacingConfigParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_customer_facing_config'>> | no | `nil` |  |

### UpdateHolidayParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_holiday'>> | no | `nil` |  |

### UpdateLocationParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_location'>> | no | `nil` |  |

### UpdateProductParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_product'>> | no | `nil` |  |

### UpdateRentalServiceParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_rental_service'>> | no | `nil` |  |

### UpdateResponseUnitTestRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataInput](#testfromconversationmetadatainput)> | no | `nil` | Metadata of a conversation this test was created from (if applicable). |
| `dynamic_variables` | Optional<Hash<str, Optional<UpdateResponseUnitTestRequestDynamicVariablesValue>>> | no | `nil` | Dynamic variables to replace in the agent config during testing |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelInput](#conversationhistorytranscriptcommonmodelinput)>> | no | `nil` |  |
| `success_condition` | Optional<str> | no | `nil` | A prompt that evaluates whether the agent's response is successful. Should return True or False. |
| `success_examples` | Optional<Array<[AgentSuccessfulResponseExample](#agentsuccessfulresponseexample)>> | no | `nil` | Non-empty list of example responses that should be considered successful |
| `failure_examples` | Optional<Array<[AgentFailureResponseExample](#agentfailureresponseexample)>> | no | `nil` | Non-empty list of example responses that should be considered failures |
| `name` | str | **yes** | **required** |  |
| `parent_folder_id` | Optional<str> | no | `nil` | The ID of the parent folder. If not provided, the test will be moved to the root level. |

### UpdateServiceParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_service'>> | no | `nil` |  |

### UpdateSimulationTestRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataInput](#testfromconversationmetadatainput)> | no | `nil` | Metadata of a conversation this test was created from (if applicable). |
| `dynamic_variables` | Optional<Hash<str, Optional<UpdateSimulationTestRequestDynamicVariablesValue>>> | no | `nil` | Dynamic variables to replace in the agent config during testing |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelInput](#conversationhistorytranscriptcommonmodelinput)>> | no | `nil` |  |
| `success_condition` | Optional<str> | no | `nil` | A prompt that evaluates whether the agent's response is successful. Should return True or False. |
| `simulation_scenario` | Optional<str> | no | `nil` | Description of the simulation scenario and user persona for simulation tests. |
| `simulation_max_turns` | Optional<int> | no | `nil` | Maximum number of conversation turns for simulation tests. |
| `simulation_environment` | Optional<str> | no | `nil` | The environment to use when running this simulation test. If not provided, defaults to 'production'. |
| `tool_mock_config` | Optional<[SimulationToolMockBehaviorConfig](#simulationtoolmockbehaviorconfig)> | no | `nil` | Configuration for which tools to mock and fallback behavior. |
| `name` | str | **yes** | **required** |  |
| `parent_folder_id` | Optional<str> | no | `nil` | The ID of the parent folder. If not provided, the test will be moved to the root level. |

### UpdateStaffParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `smb_tool_type` | Optional<Literal<'update_staff'>> | no | `nil` |  |

### UpdateToolCallUnitTestRequest

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataInput](#testfromconversationmetadatainput)> | no | `nil` | Metadata of a conversation this test was created from (if applicable). |
| `dynamic_variables` | Optional<Hash<str, Optional<UpdateToolCallUnitTestRequestDynamicVariablesValue>>> | no | `nil` | Dynamic variables to replace in the agent config during testing |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelInput](#conversationhistorytranscriptcommonmodelinput)>> | no | `nil` |  |
| `tool_call_parameters` | Optional<[UnitTestToolCallEvaluationModelInput](#unittesttoolcallevaluationmodelinput)> | no | `nil` | How to evaluate the agent's tool call (if any). If empty, the tool call is not evaluated. |
| `check_any_tool_matches` | Optional<bool> | no | `nil` | If set to True this test will pass if any tool call returned by the LLM matches the criteria. Otherwise it will fail if more than one tool is returned by the agent. |
| `name` | str | **yes** | **required** |  |
| `parent_folder_id` | Optional<str> | no | `nil` | The ID of the parent folder. If not provided, the test will be moved to the root level. |

### UpdateWorkspaceMemberResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the workspace member update request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### UrlAvatar

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `custom_url` | Optional<str> | no | `nil` | The custom URL of the avatar |

### UsageCharactersResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `time` | Array<int> | **yes** | **required** | The time axis with unix timestamps for each day. |
| `usage` | Hash<str, Array<float>> | **yes** | **required** | The usage of each breakdown type along the time axis. |

### User

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `user_id` | str | **yes** | **required** | The unique identifier of the user. |
| `subscription` | [SubscriptionResponse](#subscriptionresponse) | **yes** | **required** | Details of the user's subscription. |
| `is_new_user` | bool | **yes** | **required** | Whether the user is new. This field is deprecated and will be removed in the future. Use 'created_at' instead. |
| `xi_api_key` | Optional<str> | no | `nil` | The API key of the user. |
| `can_use_delayed_payment_methods` | bool | **yes** | **required** | This field is deprecated and will be removed in a future major version. Instead use subscription.trust_on_invoice_creation. |
| `is_onboarding_completed` | bool | **yes** | **required** | Whether the user's onboarding is completed. |
| `is_onboarding_checklist_completed` | bool | **yes** | **required** | Whether the user's onboarding checklist is completed. |
| `show_compliance_terms` | Optional<bool> | no | `nil` | Whether to show compliance terms (ToS, Privacy Policy, biometric consent) during onboarding. Set for users signing up from the marketing site. |
| `first_name` | Optional<str> | no | `nil` | First name of the user. |
| `is_api_key_hashed` | Optional<bool> | no | `nil` | Whether the user's API key is hashed. |
| `xi_api_key_preview` | Optional<str> | no | `nil` | The preview of the user's API key. |
| `referral_link_code` | Optional<str> | no | `nil` | The referral link code of the user. |
| `partnerstack_partner_default_link` | Optional<str> | no | `nil` | The Partnerstack partner default link of the user. |
| `created_at` | int | **yes** | **required** | The unix timestamp of the user's creation. 0 if the user was created before the unix timestamp was added. |
| `seat_type` | [SeatType](#seattype) | **yes** | **required** | The seat type of the user. |

### UserFeedback

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `score` | [UserFeedbackScore](#userfeedbackscore) | **yes** | **required** |  |
| `time_in_call_secs` | int | **yes** | **required** |  |

### UtteranceResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `start` | float | **yes** | **required** | The start time of the utterance in seconds. |
| `end` | float | **yes** | **required** | The end time of the utterance in seconds. |

### VadConfig

_(no fields)_

### VadConfigWorkflowOverride

_(no fields)_

### ValidationError

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `loc` | Array<ValidationErrorLocItem> | **yes** | **required** |  |
| `msg` | str | **yes** | **required** |  |
| `type` | str | **yes** | **required** |  |

### VerificationAttemptResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | str | **yes** | **required** | The text of the verification attempt. |
| `date_unix` | int | **yes** | **required** | The date of the verification attempt in Unix time. |
| `accepted` | bool | **yes** | **required** | Whether the verification attempt was accepted. |
| `similarity` | float | **yes** | **required** | The similarity of the verification attempt. |
| `levenshtein_distance` | float | **yes** | **required** | The Levenshtein distance of the verification attempt. |
| `recording` | Optional<[RecordingResponse](#recordingresponse)> | no | `nil` | The recording of the verification attempt. |

### VerifiedVoiceLanguageResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `language` | str | **yes** | **required** | The language of the voice. |
| `model_id` | str | **yes** | **required** | The voice's model ID. |
| `accent` | Optional<str> | no | `nil` | The voice's accent, if applicable. |
| `locale` | Optional<str> | no | `nil` | The voice's locale, if applicable. |
| `preview_url` | Optional<str> | no | `nil` | The voice's preview URL, if applicable. |

### VerifyPvcVoiceCaptchaResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | str | **yes** | **required** | The status of the verify PVC captcha request. If the request was successful, the status will be 'ok'. Otherwise an error message with status 500 will be returned. |

### VideoAnalysis

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | [VideoAnalysisStatus](#videoanalysisstatus) | **yes** | **required** |  |
| `data` | Optional<[VideoAnalysisResult](#videoanalysisresult)> | no | `nil` |  |
| `updated_at_ms` | Optional<int> | no | `nil` |  |

### VideoAnalysisResult

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `title` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `content_type` | Optional<str> | no | `nil` |  |
| `overall_pacing` | Optional<str> | no | `nil` |  |
| `subjects` | Optional<Array<[VideoSubject](#videosubject)>> | no | `nil` |  |
| `segments` | Optional<Array<[VideoSegment](#videosegment)>> | no | `nil` |  |
| `key_moments` | Optional<Array<[VideoKeyMoment](#videokeymoment)>> | no | `nil` |  |

### VideoKeyMoment

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `timestamp_ms` | int | **yes** | **required** |  |
| `type` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |

### VideoSegment

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `start_ms` | int | **yes** | **required** |  |
| `end_ms` | int | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `subjects` | Optional<Array<str>> | no | `nil` |  |
| `shot_type` | Optional<str> | no | `nil` |  |
| `camera_movement` | Optional<str> | no | `nil` |  |
| `transition_in` | Optional<str> | no | `nil` |  |
| `has_speech` | Optional<bool> | no | `nil` |  |
| `has_music` | Optional<bool> | no | `nil` |  |
| `pacing` | Optional<str> | no | `nil` |  |

### VideoSubject

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |

### VisitedAgentRef

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `agent_id` | str | **yes** | **required** |  |
| `branch_id` | Optional<str> | no | `nil` |  |

### Voice

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voice_id` | str | **yes** | **required** | The ID of the voice. |
| `name` | Optional<str> | no | `nil` | The name of the voice. |
| `samples` | Optional<Array<[VoiceSample](#voicesample)>> | no | `nil` | List of samples associated with the voice. |
| `category` | Optional<[VoiceResponseModelCategory](#voiceresponsemodelcategory)> | no | `nil` | The category of the voice. |
| `fine_tuning` | Optional<[FineTuningResponse](#finetuningresponse)> | no | `nil` | Fine-tuning information for the voice. |
| `labels` | Optional<Hash<str, str>> | no | `nil` | Labels associated with the voice. |
| `description` | Optional<str> | no | `nil` | The description of the voice. |
| `preview_url` | Optional<str> | no | `nil` | The preview URL of the voice. |
| `available_for_tiers` | Optional<Array<str>> | no | `nil` | The tiers the voice is available for. |
| `settings` | Optional<[VoiceSettings](#voicesettings)> | no | `nil` | The settings of the voice. |
| `sharing` | Optional<[VoiceSharingResponse](#voicesharingresponse)> | no | `nil` | The sharing information of the voice. |
| `high_quality_base_model_ids` | Optional<Array<str>> | no | `nil` | The base model IDs for high-quality voices. |
| `verified_languages` | Optional<Array<[VerifiedVoiceLanguageResponseModel](#verifiedvoicelanguageresponsemodel)>> | no | `nil` | The verified languages of the voice. |
| `collection_ids` | Optional<Array<str>> | no | `nil` | The IDs of collections this voice belongs to. |
| `safety_control` | Optional<[VoiceResponseModelSafetyControl](#voiceresponsemodelsafetycontrol)> | no | `nil` | The safety controls of the voice. |
| `voice_verification` | Optional<[VoiceVerificationResponse](#voiceverificationresponse)> | no | `nil` | The voice verification of the voice. |
| `permission_on_resource` | Optional<str> | no | `nil` | The permission on the resource of the voice. |
| `is_owner` | Optional<bool> | no | `nil` | Whether the voice is owned by the user. |
| `is_legacy` | Optional<bool> | no | `nil` | Whether the voice is legacy. |
| `is_mixed` | Optional<bool> | no | `nil` | Whether the voice is mixed. |
| `favorited_at_unix` | Optional<int> | no | `nil` | Timestamp when the voice was marked as favorite in Unix time. |
| `created_at_unix` | Optional<int> | no | `nil` | The creation time of the voice in Unix time. |
| `is_bookmarked` | Optional<bool> | no | `nil` | Whether the voice is bookmarked by the current user. Only relevant for community (library-copied) voices. |
| `recording_quality` | Optional<[VoiceResponseModelRecordingQuality](#voiceresponsemodelrecordingquality)> | no | `nil` | The recording quality of the voice as determined by the review pipeline. |
| `labelling_status` | Optional<[VoiceResponseModelLabellingStatus](#voiceresponsemodellabellingstatus)> | no | `nil` | The review pipeline status of the voice. |
| `recording_quality_reason` | Optional<str> | no | `nil` | The reason for the recording quality assessment, as determined by the review pipeline. |

### VoiceDesignPreviewResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `previews` | Array<[VoicePreviewResponseModel](#voicepreviewresponsemodel)> | **yes** | **required** | The previews of the generated voices. |
| `text` | str | **yes** | **required** | The text used to preview the voices. |

### VoiceMailDetectionResultSuccessModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `voicemail_message` | Optional<str> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |

### VoicePreviewResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `audio_base_64` | str | **yes** | **required** | The base64 encoded audio of the preview. |
| `generated_voice_id` | str | **yes** | **required** | The ID of the generated voice. Use it to create a voice from the preview. |
| `media_type` | str | **yes** | **required** | The media type of the preview. |
| `duration_secs` | float | **yes** | **required** | The duration of the preview in seconds. |
| `language` | Optional<str> | no | `nil` | The language of the preview. |

### VoiceSample

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `sample_id` | Optional<str> | no | `nil` | The ID of the sample. |
| `file_name` | Optional<str> | no | `nil` | The name of the sample file. |
| `mime_type` | Optional<str> | no | `nil` | The MIME type of the sample file. |
| `size_bytes` | Optional<int> | no | `nil` | The size of the sample file in bytes. |
| `hash` | Optional<str> | no | `nil` | The hash of the sample file. |
| `duration_secs` | Optional<float> | no | `nil` |  |
| `remove_background_noise` | Optional<bool> | no | `nil` |  |
| `has_isolated_audio` | Optional<bool> | no | `nil` |  |
| `has_isolated_audio_preview` | Optional<bool> | no | `nil` |  |
| `speaker_separation` | Optional<[SpeakerSeparationResponseModel](#speakerseparationresponsemodel)> | no | `nil` |  |
| `trim_start` | Optional<int> | no | `nil` |  |
| `trim_end` | Optional<int> | no | `nil` |  |

### VoiceSamplePreviewResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `audio_base_64` | str | **yes** | **required** | The base64 encoded audio. |
| `voice_id` | str | **yes** | **required** | The ID of the voice. |
| `sample_id` | str | **yes** | **required** | The ID of the sample. |
| `media_type` | str | **yes** | **required** | The media type of the audio. |
| `duration_secs` | Optional<float> | no | `nil` | The duration of the audio in seconds. |

### VoiceSampleVisualWaveformResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `sample_id` | str | **yes** | **required** | The ID of the sample. |
| `visual_waveform` | Array<float> | **yes** | **required** | The visual waveform of the sample, represented as a list of floats. |

### VoiceSegment

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voice_id` | str | **yes** | **required** | The voice ID used for this segment |
| `start_time_seconds` | float | **yes** | **required** | Start time of this voice segment |
| `end_time_seconds` | float | **yes** | **required** | End time of this voice segment |
| `character_start_index` | int | **yes** | **required** | Start index in the characters array |
| `character_end_index` | int | **yes** | **required** | End index in the characters array (exclusive) |
| `dialogue_input_index` | int | **yes** | **required** | Line of the dialogue (script) that this segment is a part of. |

### VoiceSettings

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `stability` | Optional<float> | no | `nil` | Determines how stable the voice is and the randomness between each generation. Lower values introduce broader emotional range for the voice. Higher values can result in a monotonous voice with limited emotion. |
| `use_speaker_boost` | Optional<bool> | no | `nil` | This setting boosts the similarity to the original speaker. Using this setting requires a slightly higher computational load, which in turn increases latency. |
| `similarity_boost` | Optional<float> | no | `nil` | Determines how closely the AI should adhere to the original voice when attempting to replicate it. |
| `style` | Optional<float> | no | `nil` | Determines the style exaggeration of the voice. This setting attempts to amplify the style of the original speaker. It does consume additional computational resources and might increase latency if set to anything other than 0. |
| `speed` | Optional<float> | no | `nil` | Adjusts the speed of the voice. A value of 1.0 is the default speed, while values less than 1.0 slow down the speech, and values greater than 1.0 speed it up. |

### VoiceSharingModerationCheckResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `date_checked_unix` | Optional<int> | no | `nil` | The date the moderation check was made in Unix time. |
| `name_value` | Optional<str> | no | `nil` | The name value of the voice. |
| `name_check` | Optional<bool> | no | `nil` | Whether the name check was successful. |
| `description_value` | Optional<str> | no | `nil` | The description value of the voice. |
| `description_check` | Optional<bool> | no | `nil` | Whether the description check was successful. |
| `sample_ids` | Optional<Array<str>> | no | `nil` | A list of sample IDs. |
| `sample_checks` | Optional<Array<float>> | no | `nil` | A list of sample checks. |
| `captcha_ids` | Optional<Array<str>> | no | `nil` | A list of captcha IDs. |
| `captcha_checks` | Optional<Array<float>> | no | `nil` | A list of CAPTCHA check values. |

### VoiceSharingResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `status` | Optional<[VoiceSharingState](#voicesharingstate)> | no | `nil` | The status of the voice sharing. |
| `history_item_sample_id` | Optional<str> | no | `nil` | The sample ID of the history item. |
| `date_unix` | Optional<int> | no | `nil` | The date of the voice sharing in Unix time. |
| `whitelisted_emails` | Optional<Array<str>> | no | `nil` | A list of whitelisted emails. |
| `public_owner_id` | Optional<str> | no | `nil` | The ID of the public owner. |
| `original_voice_id` | Optional<str> | no | `nil` | The ID of the original voice. |
| `financial_rewards_enabled` | Optional<bool> | no | `nil` | Whether financial rewards are enabled. |
| `free_users_allowed` | Optional<bool> | no | `nil` | Whether free users are allowed. |
| `live_moderation_enabled` | Optional<bool> | no | `nil` | Whether live moderation is enabled. |
| `rate` | Optional<float> | no | `nil` | The rate of the voice sharing. |
| `fiat_rate` | Optional<float> | no | `nil` | The rate of the voice sharing in USD per 1000 credits. |
| `notice_period` | Optional<int> | no | `nil` | The notice period of the voice sharing. |
| `disable_at_unix` | Optional<int> | no | `nil` | The date of the voice sharing in Unix time. |
| `voice_mixing_allowed` | Optional<bool> | no | `nil` | Whether voice mixing is allowed. |
| `featured` | Optional<bool> | no | `nil` | Whether the voice is featured. |
| `category` | Optional<[VoiceSharingResponseModelCategory](#voicesharingresponsemodelcategory)> | no | `nil` | The category of the voice. |
| `reader_app_enabled` | Optional<bool> | no | `nil` | Whether the reader app is enabled. |
| `image_url` | Optional<str> | no | `nil` | The image URL of the voice. |
| `ban_reason` | Optional<str> | no | `nil` | The ban reason of the voice. |
| `liked_by_count` | Optional<int> | no | `nil` | The number of likes on the voice. |
| `cloned_by_count` | Optional<int> | no | `nil` | The number of clones on the voice. |
| `name` | Optional<str> | no | `nil` | The name of the voice. |
| `description` | Optional<str> | no | `nil` | The description of the voice. |
| `labels` | Optional<Hash<str, str>> | no | `nil` | The labels of the voice. |
| `review_status` | Optional<[ReviewStatus](#reviewstatus)> | no | `nil` | The review status of the voice. |
| `review_message` | Optional<str> | no | `nil` | The review message of the voice. |
| `enabled_in_library` | Optional<bool> | no | `nil` | Whether the voice is enabled in the library. |
| `instagram_username` | Optional<str> | no | `nil` | The Instagram username of the voice. |
| `twitter_username` | Optional<str> | no | `nil` | The Twitter/X username of the voice. |
| `youtube_username` | Optional<str> | no | `nil` | The YouTube username of the voice. |
| `tiktok_username` | Optional<str> | no | `nil` | The TikTok username of the voice. |
| `moderation_check` | Optional<[VoiceSharingModerationCheckResponseModel](#voicesharingmoderationcheckresponsemodel)> | no | `nil` | The moderation check of the voice. |
| `reader_restricted_on` | Optional<Array<[ReaderResourceResponseModel](#readerresourceresponsemodel)>> | no | `nil` | The reader restricted on of the voice. |

### VoiceStatisticsResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voice_id` | str | **yes** | **required** | The voice ID. |
| `characters_unconverted` | int | **yes** | **required** | The number of unconverted characters for this voice. |
| `characters_converted` | int | **yes** | **required** | The number of converted characters for this voice. |

### VoiceVerificationResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `requires_verification` | bool | **yes** | **required** | Whether the voice requires verification. |
| `is_verified` | bool | **yes** | **required** | Whether the voice has been verified. |
| `verification_failures` | Array<str> | **yes** | **required** | List of verification failures. |
| `verification_attempts_count` | int | **yes** | **required** | The number of verification attempts. |
| `language` | Optional<str> | no | `nil` | The language of the voice. |
| `verification_attempts` | Optional<Array<[VerificationAttemptResponse](#verificationattemptresponse)>> | no | `nil` | Number of times a verification was attempted. |

### VoicemailDetectionToolConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `voicemail_message` | Optional<str> | no | `nil` | Optional message to leave on voicemail when detected. If not provided, the call will end immediately when voicemail is detected. Supports dynamic variables (e.g., {{system__time}}, {{system__call_duration_secs}}, {{custom_variable}}). |

### WebhookHmacSettings

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_type` | Literal<'hmac'> | no | `'hmac'` | The authentication type for this webhook |
| `name` | str | **yes** | **required** | The display name for this webhook |
| `webhook_url` | str | **yes** | **required** | The HTTPS callback URL that will be called when this webhook is triggered |

### WebhookToolApiSchemaConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `request_headers` | Optional<Hash<str, WebhookToolApiSchemaConfigInputRequestHeadersValue>> | no | `nil` | Headers that should be included in the request |
| `url` | str | **yes** | **required** | The URL that the webhook will be sent to. May include path parameters, e.g. https://example.com/agents/{agent_id} |
| `method` | Optional<[WebhookToolApiSchemaConfigInputMethod](#webhooktoolapischemaconfiginputmethod)> | no | `nil` | The HTTP method to use for the webhook |
| `path_params_schema` | Optional<Hash<str, [LiteralJsonSchemaProperty](#literaljsonschemaproperty)>> | no | `nil` | Schema for path parameters, if any. The keys should match the placeholders in the URL. |
| `query_params_schema` | Optional<[QueryParamsJsonSchema](#queryparamsjsonschema)> | no | `nil` | Schema for any query params, if any. These will be added to end of the URL as query params. Note: properties in a query param must all be literal types |
| `request_body_schema` | Optional<'[ObjectJsonSchemaPropertyInput](#objectjsonschemapropertyinput)'> | no | `nil` | Schema for the body parameters, if any. Used for POST/PATCH/PUT requests. The schema should be an object which will be sent as the json body |
| `content_type` | Optional<[WebhookToolApiSchemaConfigInputContentType](#webhooktoolapischemaconfiginputcontenttype)> | no | `nil` | Content type for the request body. Only applies to POST/PUT/PATCH requests. |
| `auth_connection` | Optional<WebhookToolApiSchemaConfigInputAuthConnection> | no | `nil` | Optional auth connection to use for authentication with this webhook |

### WebhookToolApiSchemaConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `request_headers` | Optional<Hash<str, WebhookToolApiSchemaConfigOutputRequestHeadersValue>> | no | `nil` | Headers that should be included in the request |
| `url` | str | **yes** | **required** | The URL that the webhook will be sent to. May include path parameters, e.g. https://example.com/agents/{agent_id} |
| `method` | Optional<[WebhookToolApiSchemaConfigOutputMethod](#webhooktoolapischemaconfigoutputmethod)> | no | `nil` | The HTTP method to use for the webhook |
| `path_params_schema` | Optional<Hash<str, [LiteralJsonSchemaProperty](#literaljsonschemaproperty)>> | no | `nil` | Schema for path parameters, if any. The keys should match the placeholders in the URL. |
| `query_params_schema` | Optional<[QueryParamsJsonSchema](#queryparamsjsonschema)> | no | `nil` | Schema for any query params, if any. These will be added to end of the URL as query params. Note: properties in a query param must all be literal types |
| `request_body_schema` | Optional<'[ObjectJsonSchemaPropertyOutput](#objectjsonschemapropertyoutput)'> | no | `nil` | Schema for the body parameters, if any. Used for POST/PATCH/PUT requests. The schema should be an object which will be sent as the json body |
| `content_type` | Optional<[WebhookToolApiSchemaConfigOutputContentType](#webhooktoolapischemaconfigoutputcontenttype)> | no | `nil` | Content type for the request body. Only applies to POST/PUT/PATCH requests. |
| `auth_connection` | Optional<WebhookToolApiSchemaConfigOutputAuthConnection> | no | `nil` | Optional auth connection to use for authentication with this webhook |

### WebhookToolConfigInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** | Description of when the tool should be used and what it does. |
| `response_timeout_secs` | Optional<int> | no | `nil` | The maximum time in seconds to wait for the tool call to complete. Must be between 5 and 120 seconds (inclusive). |
| `disable_interruptions` | Optional<bool> | no | `nil` | If true, the user will not be able to interrupt the agent while this tool is running. |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` | If true, the agent will speak before the tool call. |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` | Configuration for extracting values from tool responses and assigning them to dynamic variables |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` | Predefined tool call sound type to play during tool execution. If not specified, no tool call sound will be played. |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` | Determines when the tool call sound should play. 'auto' only plays when there's pre-tool speech, 'always' plays for every tool call. |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` | Controls how tool errors are processed before being shared with the agent. 'auto' determines handling based on tool type (summarized for native integrations, hide for others), 'summarized' sends an LLM-generated summary, 'passthrough' sends the raw error, 'hide' does not share the error with the agent. |
| `dynamic_variables` | Optional<[DynamicVariablesConfigInput](#dynamicvariablesconfiginput)> | no | `nil` | Configuration for dynamic variables |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` | Determines when and how the tool executes: 'immediate' executes the tool right away when requested by the LLM, 'post_tool_speech' waits for the agent to finish speaking before executing, 'async' runs the tool in the background without blocking - best for long-running operations. |
| `api_schema` | [WebhookToolApiSchemaConfigInput](#webhooktoolapischemaconfiginput) | **yes** | **required** | The schema for the outgoing webhoook, including parameters and URL specification |

### WebhookToolConfigOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** | Description of when the tool should be used and what it does. |
| `response_timeout_secs` | Optional<int> | no | `nil` | The maximum time in seconds to wait for the tool call to complete. Must be between 5 and 120 seconds (inclusive). |
| `disable_interruptions` | Optional<bool> | no | `nil` | If true, the user will not be able to interrupt the agent while this tool is running. |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` | If true, the agent will speak before the tool call. |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` | Configuration for extracting values from tool responses and assigning them to dynamic variables |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` | Predefined tool call sound type to play during tool execution. If not specified, no tool call sound will be played. |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` | Determines when the tool call sound should play. 'auto' only plays when there's pre-tool speech, 'always' plays for every tool call. |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` | Controls how tool errors are processed before being shared with the agent. 'auto' determines handling based on tool type (summarized for native integrations, hide for others), 'summarized' sends an LLM-generated summary, 'passthrough' sends the raw error, 'hide' does not share the error with the agent. |
| `dynamic_variables` | Optional<[DynamicVariablesConfigOutput](#dynamicvariablesconfigoutput)> | no | `nil` | Configuration for dynamic variables |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` | Determines when and how the tool executes: 'immediate' executes the tool right away when requested by the LLM, 'post_tool_speech' waits for the agent to finish speaking before executing, 'async' runs the tool in the background without blocking - best for long-running operations. |
| `api_schema` | [WebhookToolApiSchemaConfigOutput](#webhooktoolapischemaconfigoutput) | **yes** | **required** | The schema for the outgoing webhoook, including parameters and URL specification |

### WebsocketTtsClientMessageMulti

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text` | Optional<str> | no | `nil` | Text to be synthesized.     For the first message establishing a new context (identified by `context_id`, or a default context if `context_id` is absent), this should be a single space character (' ').     For subsequent messages to an active context, this is the text to synthesize.     This field can be null or an empty string if the message is primarily for control (e.g., using `flush`, `close_context`, or `close_socket`). |
| `voice_settings` | Optional<[RealtimeVoiceSettings](#realtimevoicesettings)> | no | `nil` | Voice settings. Can only be provided in the first message for a given context_id (or first message overall if context_id is not used/default). |
| `generation_config` | Optional<[GenerationConfig](#generationconfig)> | no | `nil` | Generation config. Can only be provided in the first message for a given context_id (or first message overall if context_id is not used/default). |
| `xi_api_key` | Annotated[Optional<str>, FieldMetadata(alias='xi-api-key')> | no | `nil` | Your ElevenLabs API key. Can only be provided in the first message for a given context_id if not present in the header. |
| `authorization` | Optional<str> | no | `nil` | Your authorization bearer token. Can only be provided in the first message for a given context_id if not present in the header. |
| `flush` | Optional<bool> | no | `nil` | If true, flushes the audio buffer and returns the remaining audio for the specified `context_id`. |
| `pronunciation_dictionary_locators` | Optional<Array<[PronunciationDictionaryLocator](#pronunciationdictionarylocator)>> | no | `nil` | Optional list of pronunciation dictionary locators. Can only be provided in the first message for a given context_id. |
| `context_id` | Annotated[Optional<str>, FieldMetadata(alias='contextId')> | no | `nil` | An identifier for the text-to-speech context. Allows managing multiple independent audio generation streams over a single WebSocket connection. If omitted, a default context is used. |
| `close_context` | Optional<bool> | no | `nil` | If true, closes the specified `contextId`. No further audio will be generated for this context. The `text` field is ignored. |
| `close_socket` | Optional<bool> | no | `nil` | If true, flushes all contexts and closes the entire WebSocket connection. The `text` and `contextId` fields are ignored. |

### WebsocketTtsServerMessageMulti

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `audio` | Optional<str> | no | `nil` | A generated partial audio chunk, encoded using the selected output_format (e.g., MP3 as a base64 string). |
| `is_final` | Optional<bool> | no | `nil` | If true, indicates that this is the final message for the specified contextId. This is sent when a context is closed. `audio` will be null or empty. |
| `normalized_alignment` | Annotated[Optional<[NormalizedAlignment](#normalizedalignment)>, FieldMetadata(alias='normalized[Alignment](#alignment)')> | no | `nil` |  |
| `alignment` | Optional<[Alignment](#alignment)> | no | `nil` |  |
| `context_id` | Annotated[Optional<str>, FieldMetadata(alias='contextId')> | no | `nil` | The context identifier to which this message pertains. |

### WhatsAppAuthResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `provider` | Optional<Literal<'whatsapp'>> | no | `nil` |  |
| `phone_number_id` | str | **yes** | **required** |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### WhatsAppConversationInfo

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `direction` | Optional<[WhatsAppConversationInfoDirection](#whatsappconversationinfodirection)> | no | `nil` |  |
| `whatsapp_phone_number_id` | Optional<str> | no | `nil` |  |
| `whatsapp_user_id` | str | **yes** | **required** |  |
| `awaiting_first_user_message` | Optional<bool> | no | `nil` |  |

### WhatsAppOutboundCallResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `success` | bool | **yes** | **required** |  |
| `message` | str | **yes** | **required** |  |
| `conversation_id` | Optional<str> | no | `nil` |  |

### WhatsAppOutboundMessageResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_id` | str | **yes** | **required** |  |

### WhatsAppTemplateBodyComponentParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `parameters` | Array<[WhatsAppTemplateTextParam](#whatsapptemplatetextparam)> | **yes** | **required** |  |

### WhatsAppTemplateButtonComponentParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `parameters` | Array<[WhatsAppTemplateTextParam](#whatsapptemplatetextparam)> | **yes** | **required** |  |
| `index` | int | **yes** | **required** |  |
| `sub_type` | str | **yes** | **required** |  |

### WhatsAppTemplateDocumentParam

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `document` | [WhatsAppTemplateDocumentParamDetails](#whatsapptemplatedocumentparamdetails) | **yes** | **required** |  |

### WhatsAppTemplateDocumentParamDetails

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `link` | str | **yes** | **required** |  |
| `filename` | Optional<str> | no | `nil` |  |

### WhatsAppTemplateHeaderComponentParams

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `parameters` | Array<[WhatsAppTemplateHeaderComponentParamsParametersItem](#whatsapptemplateheadercomponentparamsparametersitem)> | **yes** | **required** |  |

### WhatsAppTemplateImageParam

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `image` | [WhatsAppTemplateImageParamDetails](#whatsapptemplateimageparamdetails) | **yes** | **required** |  |

### WhatsAppTemplateImageParamDetails

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `link` | str | **yes** | **required** |  |

### WhatsAppTemplateLocationParam

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `location` | [WhatsAppTemplateLocationParamDetails](#whatsapptemplatelocationparamdetails) | **yes** | **required** |  |

### WhatsAppTemplateLocationParamDetails

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `latitude` | str | **yes** | **required** |  |
| `longitude` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `address` | str | **yes** | **required** |  |

### WhatsAppTemplateTextParam

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `parameter_name` | Optional<str> | no | `nil` |  |
| `type` | Optional<Literal<'text'>> | no | `nil` |  |
| `text` | str | **yes** | **required** |  |

### WidgetConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `variant` | Optional<[EmbedVariant](#embedvariant)> | no | `nil` | The variant of the widget |
| `placement` | Optional<[WidgetPlacement](#widgetplacement)> | no | `nil` | The placement of the widget on the screen |
| `expandable` | Optional<[WidgetExpandable](#widgetexpandable)> | no | `nil` | Whether the widget is expandable |
| `avatar` | Optional<[WidgetConfigOutputAvatar](#widgetconfigoutputavatar)> | no | `nil` | The avatar of the widget |
| `feedback_mode` | Optional<[WidgetFeedbackMode](#widgetfeedbackmode)> | no | `nil` | The feedback mode of the widget |
| `end_feedback` | Optional<[WidgetEndFeedbackConfig](#widgetendfeedbackconfig)> | no | `nil` | Configuration for feedback collected at the end of the conversation |
| `bg_color` | Optional<str> | no | `nil` | The background color of the widget |
| `text_color` | Optional<str> | no | `nil` | The text color of the widget |
| `btn_color` | Optional<str> | no | `nil` | The button color of the widget |
| `btn_text_color` | Optional<str> | no | `nil` | The button text color of the widget |
| `border_color` | Optional<str> | no | `nil` | The border color of the widget |
| `focus_color` | Optional<str> | no | `nil` | The focus color of the widget |
| `border_radius` | Optional<int> | no | `nil` | The border radius of the widget |
| `btn_radius` | Optional<int> | no | `nil` | The button radius of the widget |
| `action_text` | Optional<str> | no | `nil` | The action text of the widget |
| `start_call_text` | Optional<str> | no | `nil` | The start call text of the widget |
| `end_call_text` | Optional<str> | no | `nil` | The end call text of the widget |
| `expand_text` | Optional<str> | no | `nil` | The expand text of the widget |
| `listening_text` | Optional<str> | no | `nil` | The text to display when the agent is listening |
| `speaking_text` | Optional<str> | no | `nil` | The text to display when the agent is speaking |
| `shareable_page_text` | Optional<str> | no | `nil` | The text to display when sharing |
| `shareable_page_show_terms` | Optional<bool> | no | `nil` | Whether to show terms and conditions on the shareable page |
| `terms_text` | Optional<str> | no | `nil` | The text to display for terms and conditions |
| `terms_html` | Optional<str> | no | `nil` | The HTML to display for terms and conditions |
| `terms_key` | Optional<str> | no | `nil` | The key to display for terms and conditions |
| `show_avatar_when_collapsed` | Optional<bool> | no | `nil` | Whether to show the avatar when the widget is collapsed |
| `disable_banner` | Optional<bool> | no | `nil` | Whether to disable the banner |
| `override_link` | Optional<str> | no | `nil` | The override link for the widget |
| `markdown_link_allowed_hosts` | Optional<Array<[AllowlistItem](#allowlistitem)>> | no | `nil` | List of allowed hostnames for clickable markdown links. Use { hostname: '*' } to allow any domain. Empty means no links are allowed. |
| `markdown_link_include_www` | Optional<bool> | no | `nil` | Whether to automatically include www. variants of allowed hosts |
| `markdown_link_allow_http` | Optional<bool> | no | `nil` | Whether to allow http:// in addition to https:// for allowed hosts |
| `mic_muting_enabled` | Optional<bool> | no | `nil` | Whether to enable mic muting |
| `transcript_enabled` | Optional<bool> | no | `nil` | Whether the widget should show the conversation transcript as it goes on |
| `text_input_enabled` | Optional<bool> | no | `nil` | Whether the user should be able to send text messages |
| `conversation_mode_toggle_enabled` | Optional<bool> | no | `nil` | Whether to enable the conversation mode toggle in the widget |
| `default_expanded` | Optional<bool> | no | `nil` | Whether the widget should be expanded by default |
| `always_expanded` | Optional<bool> | no | `nil` | Whether the widget should always be expanded |
| `dismissible` | Optional<bool> | no | `nil` | Whether the widget can be dismissed by the user |
| `show_agent_status` | Optional<bool> | no | `nil` | Whether to show agent working/done/error status during tool use |
| `show_conversation_id` | Optional<bool> | no | `nil` | Whether to show the conversation ID after disconnection. |
| `strip_audio_tags` | Optional<bool> | no | `nil` | Whether to strip audio markup from messages. |
| `syntax_highlight_theme` | Optional<[WidgetConfigOutputSyntaxHighlightTheme](#widgetconfigoutputsyntaxhighlighttheme)> | no | `nil` | Theme for code block syntax highlighting. Defaults to auto-detection by the widget when not set. |
| `text_contents` | Optional<[WidgetTextContents](#widgettextcontents)> | no | `nil` | Text contents of the widget |
| `styles` | Optional<[WidgetStyles](#widgetstyles)> | no | `nil` | Styles for the widget |
| `language_selector` | Optional<bool> | no | `nil` | Whether to show the language selector |
| `supports_text_only` | Optional<bool> | no | `nil` | Whether the widget can switch to text only mode |
| `custom_avatar_path` | Optional<str> | no | `nil` | The custom avatar path |
| `language_presets` | Optional<Hash<str, [WidgetLanguagePreset](#widgetlanguagepreset)>> | no | `nil` | Language presets for the widget |

### WidgetConfigResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `variant` | Optional<[EmbedVariant](#embedvariant)> | no | `nil` | The variant of the widget |
| `placement` | Optional<[WidgetPlacement](#widgetplacement)> | no | `nil` | The placement of the widget on the screen |
| `expandable` | Optional<[WidgetExpandable](#widgetexpandable)> | no | `nil` | Whether the widget is expandable |
| `avatar` | Optional<[WidgetConfigResponseModelAvatar](#widgetconfigresponsemodelavatar)> | no | `nil` | The avatar of the widget |
| `feedback_mode` | Optional<[WidgetFeedbackMode](#widgetfeedbackmode)> | no | `nil` | The feedback mode of the widget |
| `end_feedback` | Optional<[WidgetEndFeedbackConfig](#widgetendfeedbackconfig)> | no | `nil` | Configuration for feedback collected at the end of the conversation |
| `bg_color` | Optional<str> | no | `nil` | The background color of the widget |
| `text_color` | Optional<str> | no | `nil` | The text color of the widget |
| `btn_color` | Optional<str> | no | `nil` | The button color of the widget |
| `btn_text_color` | Optional<str> | no | `nil` | The button text color of the widget |
| `border_color` | Optional<str> | no | `nil` | The border color of the widget |
| `focus_color` | Optional<str> | no | `nil` | The focus color of the widget |
| `border_radius` | Optional<int> | no | `nil` | The border radius of the widget |
| `btn_radius` | Optional<int> | no | `nil` | The button radius of the widget |
| `action_text` | Optional<str> | no | `nil` | The action text of the widget |
| `start_call_text` | Optional<str> | no | `nil` | The start call text of the widget |
| `end_call_text` | Optional<str> | no | `nil` | The end call text of the widget |
| `expand_text` | Optional<str> | no | `nil` | The expand text of the widget |
| `listening_text` | Optional<str> | no | `nil` | The text to display when the agent is listening |
| `speaking_text` | Optional<str> | no | `nil` | The text to display when the agent is speaking |
| `shareable_page_text` | Optional<str> | no | `nil` | The text to display when sharing |
| `shareable_page_show_terms` | Optional<bool> | no | `nil` | Whether to show terms and conditions on the shareable page |
| `terms_text` | Optional<str> | no | `nil` | The text to display for terms and conditions |
| `terms_html` | Optional<str> | no | `nil` | The HTML to display for terms and conditions |
| `terms_key` | Optional<str> | no | `nil` | The key to display for terms and conditions |
| `show_avatar_when_collapsed` | Optional<bool> | no | `nil` | Whether to show the avatar when the widget is collapsed |
| `disable_banner` | Optional<bool> | no | `nil` | Whether to disable the banner |
| `override_link` | Optional<str> | no | `nil` | The override link for the widget |
| `markdown_link_allowed_hosts` | Optional<Array<[AllowlistItem](#allowlistitem)>> | no | `nil` | List of allowed hostnames for clickable markdown links. Use { hostname: '*' } to allow any domain. Empty means no links are allowed. |
| `markdown_link_include_www` | Optional<bool> | no | `nil` | Whether to automatically include www. variants of allowed hosts |
| `markdown_link_allow_http` | Optional<bool> | no | `nil` | Whether to allow http:// in addition to https:// for allowed hosts |
| `mic_muting_enabled` | Optional<bool> | no | `nil` | Whether to enable mic muting |
| `transcript_enabled` | Optional<bool> | no | `nil` | Whether the widget should show the conversation transcript as it goes on |
| `text_input_enabled` | Optional<bool> | no | `nil` | Whether the user should be able to send text messages |
| `conversation_mode_toggle_enabled` | Optional<bool> | no | `nil` | Whether to enable the conversation mode toggle in the widget |
| `default_expanded` | Optional<bool> | no | `nil` | Whether the widget should be expanded by default |
| `always_expanded` | Optional<bool> | no | `nil` | Whether the widget should always be expanded |
| `dismissible` | Optional<bool> | no | `nil` | Whether the widget can be dismissed by the user |
| `show_agent_status` | Optional<bool> | no | `nil` | Whether to show agent working/done/error status during tool use |
| `show_conversation_id` | Optional<bool> | no | `nil` | Whether to show the conversation ID after disconnection. |
| `strip_audio_tags` | Optional<bool> | no | `nil` | Whether to strip audio markup from messages. |
| `syntax_highlight_theme` | Optional<[WidgetConfigResponseModelSyntaxHighlightTheme](#widgetconfigresponsemodelsyntaxhighlighttheme)> | no | `nil` | Theme for code block syntax highlighting. Defaults to auto-detection by the widget when not set. |
| `text_contents` | Optional<[WidgetTextContents](#widgettextcontents)> | no | `nil` | Text contents of the widget |
| `styles` | Optional<[WidgetStyles](#widgetstyles)> | no | `nil` | Styles for the widget |
| `language` | str | **yes** | **required** |  |
| `supported_language_overrides` | Optional<Array<str>> | no | `nil` |  |
| `language_presets` | Optional<Hash<str, [WidgetLanguagePresetResponse](#widgetlanguagepresetresponse)>> | no | `nil` | Language presets for the widget |
| `text_only` | Optional<bool> | no | `nil` | Whether the agent uses text-only mode |
| `supports_text_only` | Optional<bool> | no | `nil` | Whether the agent can be switched to text-only mode |
| `first_message` | Optional<str> | no | `nil` |  |
| `use_rtc` | Optional<bool> | no | `nil` | Whether to use WebRTC for conversation connections |

### WidgetEndFeedbackConfig

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Optional<WidgetEndFeedbackType> | no | `nil` | The type of feedback to collect at the end of the conversation |

### WidgetLanguagePreset

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `text_contents` | Optional<[WidgetTextContents](#widgettextcontents)> | no | `nil` | The text contents for the selected language |
| `terms_text` | Optional<str> | no | `nil` | The text to display for terms and conditions in this language |
| `terms_html` | Optional<str> | no | `nil` | The HTML to display for terms and conditions in this language |
| `terms_key` | Optional<str> | no | `nil` | The key to display for terms and conditions in this language |
| `terms_translation` | Optional<[WidgetTermsTranslation](#widgettermstranslation)> | no | `nil` | The translation cache for the terms |

### WidgetLanguagePresetResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `first_message` | Optional<str> | no | `nil` |  |
| `text_contents` | Optional<[WidgetTextContents](#widgettextcontents)> | no | `nil` | The text contents for the selected language |
| `terms_text` | Optional<str> | no | `nil` | The text to display for terms and conditions in this language |
| `terms_html` | Optional<str> | no | `nil` | The HTML to display for terms and conditions in this language |
| `terms_key` | Optional<str> | no | `nil` | The key to display for terms and conditions in this language |

### WidgetStyles

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `base` | Optional<str> | no | `nil` | The base background color. |
| `base_hover` | Optional<str> | no | `nil` | The color of the base background when hovered. |
| `base_active` | Optional<str> | no | `nil` | The color of the base background when active (clicked). |
| `base_border` | Optional<str> | no | `nil` | The color of the border against the base background. |
| `base_subtle` | Optional<str> | no | `nil` | The color of subtle text against the base background. |
| `base_primary` | Optional<str> | no | `nil` | The color of primary text against the base background. |
| `base_error` | Optional<str> | no | `nil` | The color of error text against the base background. |
| `accent` | Optional<str> | no | `nil` | The accent background color. |
| `accent_hover` | Optional<str> | no | `nil` | The color of the accent background when hovered. |
| `accent_active` | Optional<str> | no | `nil` | The color of the accent background when active (clicked). |
| `accent_border` | Optional<str> | no | `nil` | The color of the border against the accent background. |
| `accent_subtle` | Optional<str> | no | `nil` | The color of subtle text against the accent background. |
| `accent_primary` | Optional<str> | no | `nil` | The color of primary text against the accent background. |
| `overlay_padding` | Optional<float> | no | `nil` | The padding around the edges of the viewport. |
| `button_radius` | Optional<float> | no | `nil` | The radius of the buttons. |
| `input_radius` | Optional<float> | no | `nil` | The radius of the input fields. |
| `bubble_radius` | Optional<float> | no | `nil` | The radius of the chat bubbles. |
| `sheet_radius` | Optional<float> | no | `nil` | The default radius of sheets. |
| `compact_sheet_radius` | Optional<float> | no | `nil` | The radius of the sheet in compact mode. |
| `dropdown_sheet_radius` | Optional<float> | no | `nil` | The radius of the dropdown sheet. |

### WidgetTermsTranslation

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source_hash` | str | **yes** | **required** |  |
| `text` | str | **yes** | **required** |  |

### WidgetTextContents

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `main_label` | Optional<str> | no | `nil` | Call to action displayed inside the compact and full variants. |
| `start_call` | Optional<str> | no | `nil` | Text and ARIA label for the start call button. |
| `start_chat` | Optional<str> | no | `nil` | Text and ARIA label for the start chat button (text only) |
| `new_call` | Optional<str> | no | `nil` | Text and ARIA label for the new call button. Displayed when the caller already finished at least one call in order ot start the next one. |
| `end_call` | Optional<str> | no | `nil` | Text and ARIA label for the end call button. |
| `mute_microphone` | Optional<str> | no | `nil` | ARIA label for the mute microphone button. |
| `change_language` | Optional<str> | no | `nil` | ARIA label for the change language dropdown. |
| `collapse` | Optional<str> | no | `nil` | ARIA label for the collapse button. |
| `expand` | Optional<str> | no | `nil` | ARIA label for the expand button. |
| `copied` | Optional<str> | no | `nil` | Text displayed when the user copies a value using the copy button. |
| `accept_terms` | Optional<str> | no | `nil` | Text and ARIA label for the accept terms button. |
| `dismiss_terms` | Optional<str> | no | `nil` | Text and ARIA label for the cancel terms button. |
| `listening_status` | Optional<str> | no | `nil` | Status displayed when the agent is listening. |
| `speaking_status` | Optional<str> | no | `nil` | Status displayed when the agent is speaking. |
| `connecting_status` | Optional<str> | no | `nil` | Status displayed when the agent is connecting. |
| `chatting_status` | Optional<str> | no | `nil` | Status displayed when the agent is chatting (text only) |
| `input_label` | Optional<str> | no | `nil` | ARIA label for the text message input. |
| `input_placeholder` | Optional<str> | no | `nil` | Placeholder text for the text message input. |
| `input_placeholder_text_only` | Optional<str> | no | `nil` | Placeholder text for the text message input (text only) |
| `input_placeholder_new_conversation` | Optional<str> | no | `nil` | Placeholder text for the text message input when starting a new conversation (text only) |
| `user_ended_conversation` | Optional<str> | no | `nil` | Information message displayed when the user ends the conversation. |
| `agent_ended_conversation` | Optional<str> | no | `nil` | Information message displayed when the agent ends the conversation. |
| `conversation_id` | Optional<str> | no | `nil` | Text label used next to the conversation ID. |
| `error_occurred` | Optional<str> | no | `nil` | Text label used when an error occurs. |
| `copy_id` | Optional<str> | no | `nil` | Text and ARIA label used for the copy ID button. |
| `initiate_feedback` | Optional<str> | no | `nil` | Text displayed to prompt the user for feedback. |
| `request_follow_up_feedback` | Optional<str> | no | `nil` | Text displayed to request additional feedback details. |
| `thanks_for_feedback` | Optional<str> | no | `nil` | Text displayed to thank the user for providing feedback. |
| `thanks_for_feedback_details` | Optional<str> | no | `nil` | Additional text displayed explaining the value of user feedback. |
| `follow_up_feedback_placeholder` | Optional<str> | no | `nil` | Placeholder text for the follow-up feedback input field. |
| `submit` | Optional<str> | no | `nil` | Text and ARIA label for the submit button. |
| `go_back` | Optional<str> | no | `nil` | Text and ARIA label for the go back button. |
| `send_message` | Optional<str> | no | `nil` | Text and ARIA label for the send message button. |
| `text_mode` | Optional<str> | no | `nil` | Text and ARIA label for the switch to text mode button. |
| `voice_mode` | Optional<str> | no | `nil` | Text and ARIA label for the switch to voice mode button. |
| `switched_to_text_mode` | Optional<str> | no | `nil` | Toast notification displayed when switching to text mode. |
| `switched_to_voice_mode` | Optional<str> | no | `nil` | Toast notification displayed when switching to voice mode. |
| `copy_` | Annotated[Optional<str>, FieldMetadata(alias='copy')> | no | `nil` | Text and ARIA label for the copy button. |
| `download` | Optional<str> | no | `nil` | Text and ARIA label for the download button. |
| `wrap` | Optional<str> | no | `nil` | Text and ARIA label for the wrap toggle button. |
| `agent_working` | Optional<str> | no | `nil` | Status text displayed when the agent is processing a tool call. |
| `agent_done` | Optional<str> | no | `nil` | Status text displayed when the agent finishes processing a tool call. |
| `agent_error` | Optional<str> | no | `nil` | Status text displayed when the agent encounters an error during a tool call. |

### WordTimestamp

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `word` | str | **yes** | **required** |  |
| `start_ms` | int | **yes** | **required** |  |
| `end_ms` | int | **yes** | **required** |  |

### WorkflowEdgeModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | str | **yes** | **required** | ID of the source node. |
| `target` | str | **yes** | **required** | ID of the target node. |
| `forward_condition` | Optional<[WorkflowEdgeModelInputForwardCondition](#workflowedgemodelinputforwardcondition)> | no | `nil` | Condition that must be met for the edge to be traversed in the forward direction (source to target). |
| `backward_condition` | Optional<[WorkflowEdgeModelInputBackwardCondition](#workflowedgemodelinputbackwardcondition)> | no | `nil` | Condition that must be met for the edge to be traversed in the backward direction (target to source). |

### WorkflowEdgeModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | str | **yes** | **required** | ID of the source node. |
| `target` | str | **yes** | **required** | ID of the target node. |
| `forward_condition` | Optional<[WorkflowEdgeModelOutputForwardCondition](#workflowedgemodeloutputforwardcondition)> | no | `nil` | Condition that must be met for the edge to be traversed in the forward direction (source to target). |
| `backward_condition` | Optional<[WorkflowEdgeModelOutputBackwardCondition](#workflowedgemodeloutputbackwardcondition)> | no | `nil` | Condition that must be met for the edge to be traversed in the backward direction (target to source). |

### WorkflowEndNodeModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `position` | Optional<[PositionInput](#positioninput)> | no | `nil` | Position of the node in the workflow. |
| `edge_order` | Optional<Array<str>> | no | `nil` | The ids of outgoing edges in the order they should be evaluated. |

### WorkflowEndNodeModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `position` | [PositionOutput](#positionoutput) | **yes** | **required** | Position of the node in the workflow. |
| `edge_order` | Array<str> | **yes** | **required** | The ids of outgoing edges in the order they should be evaluated. |

### WorkflowExpressionConditionModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | Optional<str> | no | `nil` | Optional human-readable label for the condition used throughout the UI. |
| `expression` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** | Expression to evaluate. |

### WorkflowExpressionConditionModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | Optional<str> | no | `nil` | Optional human-readable label for the condition used throughout the UI. |
| `expression` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** | Expression to evaluate. |

### WorkflowFeaturesUsageCommonModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `enabled` | Optional<bool> | no | `nil` |  |
| `tool_node` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `standalone_agent_node` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `phone_number_node` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |
| `end_node` | Optional<[FeatureStatusCommonModel](#featurestatuscommonmodel)> | no | `nil` |  |

### WorkflowLlmConditionModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | Optional<str> | no | `nil` | Optional human-readable label for the condition used throughout the UI. |
| `condition` | str | **yes** | **required** | Condition to evaluate |

### WorkflowLlmConditionModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | Optional<str> | no | `nil` | Optional human-readable label for the condition used throughout the UI. |
| `condition` | str | **yes** | **required** | Condition to evaluate |

### WorkflowOverrideAgentNodeModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_config` | Optional<[ConversationalConfigApiModelWorkflowOverrideInput](#conversationalconfigapimodelworkflowoverrideinput)> | no | `nil` | Configuration overrides applied while the subagent is conducting the conversation. |
| `additional_prompt` | Optional<str> | no | `nil` | Specific goal for this subagent. It will be added to the system prompt and can be used to further refine the agent's behavior in this specific context. |
| `additional_knowledge_base` | Optional<Array<[KnowledgeBaseLocator](#knowledgebaselocator)>> | no | `nil` | Additional knowledge base documents that the subagent has access to. These will be used in addition to the main agent's documents. |
| `additional_tool_ids` | Optional<Array<str>> | no | `nil` | IDs of additional tools that the subagent has access to. These will be used in addition to the main agent's tools. |
| `position` | Optional<[PositionInput](#positioninput)> | no | `nil` | Position of the node in the workflow. |
| `edge_order` | Optional<Array<str>> | no | `nil` | The ids of outgoing edges in the order they should be evaluated. |
| `label` | str | **yes** | **required** | Human-readable label for the node used throughout the UI. |

### WorkflowOverrideAgentNodeModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `conversation_config` | [ConversationalConfigApiModelWorkflowOverrideOutput](#conversationalconfigapimodelworkflowoverrideoutput) | **yes** | **required** | Configuration overrides applied while the subagent is conducting the conversation. |
| `additional_prompt` | str | **yes** | **required** | Specific goal for this subagent. It will be added to the system prompt and can be used to further refine the agent's behavior in this specific context. |
| `additional_knowledge_base` | Array<[KnowledgeBaseLocator](#knowledgebaselocator)> | **yes** | **required** | Additional knowledge base documents that the subagent has access to. These will be used in addition to the main agent's documents. |
| `additional_tool_ids` | Array<str> | **yes** | **required** | IDs of additional tools that the subagent has access to. These will be used in addition to the main agent's tools. |
| `position` | [PositionOutput](#positionoutput) | **yes** | **required** | Position of the node in the workflow. |
| `edge_order` | Array<str> | **yes** | **required** | The ids of outgoing edges in the order they should be evaluated. |
| `label` | str | **yes** | **required** | Human-readable label for the node used throughout the UI. |

### WorkflowPhoneNumberNodeModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `custom_sip_headers` | Optional<Array<[WorkflowPhoneNumberNodeModelInputCustomSipHeadersItem](#workflowphonenumbernodemodelinputcustomsipheadersitem)>> | no | `nil` | Custom SIP headers to include when transferring the call. Each header can be either a static value or a dynamic variable reference. |
| `transfer_destination` | [WorkflowPhoneNumberNodeModelInputTransferDestination](#workflowphonenumbernodemodelinputtransferdestination) | **yes** | **required** |  |
| `transfer_type` | Optional<[TransferTypeEnum](#transfertypeenum)> | no | `nil` |  |
| `post_dial_digits` | Optional<[WorkflowPhoneNumberNodeModelInputPostDialDigits](#workflowphonenumbernodemodelinputpostdialdigits)> | no | `nil` | DTMF digits to send after call connects (e.g., 'ww1234' for extension). Can be either a static value or a dynamic variable reference. Use 'w' for 0.5s pause. Only supported for Twilio transfers. |
| `position` | Optional<[PositionInput](#positioninput)> | no | `nil` | Position of the node in the workflow. |
| `edge_order` | Optional<Array<str>> | no | `nil` | The ids of outgoing edges in the order they should be evaluated. |

### WorkflowPhoneNumberNodeModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `custom_sip_headers` | Array<[WorkflowPhoneNumberNodeModelOutputCustomSipHeadersItem](#workflowphonenumbernodemodeloutputcustomsipheadersitem)> | **yes** | **required** | Custom SIP headers to include when transferring the call. Each header can be either a static value or a dynamic variable reference. |
| `transfer_destination` | [WorkflowPhoneNumberNodeModelOutputTransferDestination](#workflowphonenumbernodemodeloutputtransferdestination) | **yes** | **required** |  |
| `transfer_type` | [TransferTypeEnum](#transfertypeenum) | **yes** | **required** |  |
| `post_dial_digits` | Optional<[WorkflowPhoneNumberNodeModelOutputPostDialDigits](#workflowphonenumbernodemodeloutputpostdialdigits)> | no | `nil` | DTMF digits to send after call connects (e.g., 'ww1234' for extension). Can be either a static value or a dynamic variable reference. Use 'w' for 0.5s pause. Only supported for Twilio transfers. |
| `position` | [PositionOutput](#positionoutput) | **yes** | **required** | Position of the node in the workflow. |
| `edge_order` | Array<str> | **yes** | **required** | The ids of outgoing edges in the order they should be evaluated. |

### WorkflowResultConditionModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | Optional<str> | no | `nil` | Optional human-readable label for the condition used throughout the UI. |
| `successful` | bool | **yes** | **required** | Whether all tools in the previously executed tool node were executed successfully. |

### WorkflowResultConditionModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | Optional<str> | no | `nil` | Optional human-readable label for the condition used throughout the UI. |
| `successful` | bool | **yes** | **required** | Whether all tools in the previously executed tool node were executed successfully. |

### WorkflowStandaloneAgentNodeModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `position` | Optional<[PositionInput](#positioninput)> | no | `nil` | Position of the node in the workflow. |
| `edge_order` | Optional<Array<str>> | no | `nil` | The ids of outgoing edges in the order they should be evaluated. |
| `agent_id` | str | **yes** | **required** | The ID of the agent to transfer the conversation to. |
| `delay_ms` | Optional<int> | no | `nil` | Artificial delay in milliseconds applied before transferring the conversation. |
| `transfer_message` | Optional<str> | no | `nil` | Optional message sent to the user before the transfer is initiated. |
| `enable_transferred_agent_first_message` | Optional<bool> | no | `nil` | Whether to enable the transferred agent to send its configured first message after the transfer. |

### WorkflowStandaloneAgentNodeModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `position` | [PositionOutput](#positionoutput) | **yes** | **required** | Position of the node in the workflow. |
| `edge_order` | Array<str> | **yes** | **required** | The ids of outgoing edges in the order they should be evaluated. |
| `agent_id` | str | **yes** | **required** | The ID of the agent to transfer the conversation to. |
| `delay_ms` | int | **yes** | **required** | Artificial delay in milliseconds applied before transferring the conversation. |
| `transfer_message` | Optional<str> | no | `nil` | Optional message sent to the user before the transfer is initiated. |
| `enable_transferred_agent_first_message` | bool | **yes** | **required** | Whether to enable the transferred agent to send its configured first message after the transfer. |

### WorkflowStartNodeModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `position` | Optional<[PositionInput](#positioninput)> | no | `nil` | Position of the node in the workflow. |
| `edge_order` | Optional<Array<str>> | no | `nil` | The ids of outgoing edges in the order they should be evaluated. |

### WorkflowStartNodeModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `position` | [PositionOutput](#positionoutput) | **yes** | **required** | Position of the node in the workflow. |
| `edge_order` | Array<str> | **yes** | **required** | The ids of outgoing edges in the order they should be evaluated. |

### WorkflowToolEdgeStepModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `step_latency_secs` | float | **yes** | **required** |  |
| `edge_id` | str | **yes** | **required** |  |
| `target_node_id` | str | **yes** | **required** |  |

### WorkflowToolLocator

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `tool_id` | str | **yes** | **required** |  |

### WorkflowToolMaxIterationsExceededStepModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `step_latency_secs` | float | **yes** | **required** |  |
| `max_iterations` | int | **yes** | **required** |  |

### WorkflowToolNestedToolsStepModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `step_latency_secs` | float | **yes** | **required** |  |
| `node_id` | str | **yes** | **required** |  |
| `requests` | Array<[ConversationHistoryTranscriptToolCallCommonModelInput](#conversationhistorytranscripttoolcallcommonmodelinput)> | **yes** | **required** |  |
| `results` | Array<'WorkflowToolNestedToolsStepModelInputResultsItem'> | **yes** | **required** |  |
| `is_successful` | bool | **yes** | **required** |  |

### WorkflowToolNestedToolsStepModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `step_latency_secs` | float | **yes** | **required** |  |
| `node_id` | str | **yes** | **required** |  |
| `requests` | Array<[ConversationHistoryTranscriptToolCallCommonModelOutput](#conversationhistorytranscripttoolcallcommonmodeloutput)> | **yes** | **required** |  |
| `results` | Array<'WorkflowToolNestedToolsStepModelOutputResultsItem'> | **yes** | **required** |  |
| `is_successful` | bool | **yes** | **required** |  |

### WorkflowToolNodeModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `position` | Optional<[PositionInput](#positioninput)> | no | `nil` | Position of the node in the workflow. |
| `edge_order` | Optional<Array<str>> | no | `nil` | The ids of outgoing edges in the order they should be evaluated. |
| `tools` | Optional<Array<[WorkflowToolLocator](#workflowtoollocator)>> | no | `nil` | List of tools to execute in parallel. The entire node is considered successful if all tools are executed successfully. |

### WorkflowToolNodeModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `position` | [PositionOutput](#positionoutput) | **yes** | **required** | Position of the node in the workflow. |
| `edge_order` | Array<str> | **yes** | **required** | The ids of outgoing edges in the order they should be evaluated. |
| `tools` | Array<[WorkflowToolLocator](#workflowtoollocator)> | **yes** | **required** | List of tools to execute in parallel. The entire node is considered successful if all tools are executed successfully. |

### WorkflowToolResponseModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `steps` | Optional<Array<'[WorkflowToolResponseModelInputStepsItem](#workflowtoolresponsemodelinputstepsitem)'>> | no | `nil` |  |

### WorkflowToolResponseModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `steps` | Optional<Array<'[WorkflowToolResponseModelOutputStepsItem](#workflowtoolresponsemodeloutputstepsitem)'>> | no | `nil` |  |

### WorkflowUnconditionalModelInput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | Optional<str> | no | `nil` | Optional human-readable label for the condition used throughout the UI. |

### WorkflowUnconditionalModelOutput

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `label` | Optional<str> | no | `nil` | Optional human-readable label for the condition used throughout the UI. |

### WorkspaceAnalyticsQueryResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `columns` | Array<str> | **yes** | **required** |  |
| `column_types` | Array<[WorkspaceAnalyticsQueryResponseModelColumnTypesItem](#workspaceanalyticsqueryresponsemodelcolumntypesitem)> | **yes** | **required** |  |
| `rows` | Array<Array<Optional<WorkspaceAnalyticsQueryResponseModelRowsItemItem>>> | **yes** | **required** |  |
| `column_units` | Array<Optional<[ColumnUnit](#columnunit)>> | **yes** | **required** |  |

### WorkspaceApiKeyListResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `api_keys` | Annotated[Array<[WorkspaceApiKeyResponseModel](#workspaceapikeyresponsemodel)>, FieldMetadata(alias='api-keys')> | **yes** | **required** |  |

### WorkspaceApiKeyResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `hint` | str | **yes** | **required** |  |
| `key_id` | str | **yes** | **required** |  |
| `service_account_user_id` | str | **yes** | **required** |  |
| `created_at_unix` | Optional<int> | no | `nil` |  |
| `is_disabled` | Optional<bool> | no | `nil` |  |
| `permissions` | Optional<Array<[PermissionType](#permissiontype)>> | no | `nil` |  |
| `character_limit` | Optional<int> | no | `nil` |  |
| `character_count` | Optional<int> | no | `nil` |  |
| `hashed_xi_api_key` | str | **yes** | **required** |  |

### WorkspaceBatchCallsResponse

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `batch_calls` | Array<[BatchCallResponse](#batchcallresponse)> | **yes** | **required** |  |
| `next_doc` | Optional<str> | no | `nil` | The next document, used to paginate through the batch calls |
| `has_more` | Optional<bool> | no | `nil` | Whether there are more batch calls to paginate through |

### WorkspaceCreateApiKeyResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `xi_api_key` | Annotated[str, FieldMetadata(alias='xi-api-key')> | **yes** | **required** |  |
| `key_id` | str | **yes** | **required** |  |

### WorkspaceCreateWebhookResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `webhook_id` | str | **yes** | **required** |  |
| `webhook_secret` | Optional<str> | no | `nil` |  |

### WorkspaceGroupByNameResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** | The name of the workspace group. |
| `id` | str | **yes** | **required** | The ID of the workspace group. |
| `members_emails` | Array<str> | **yes** | **required** | The emails of the members of the workspace group. |

### WorkspaceGroupResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** |  |
| `id` | str | **yes** | **required** |  |
| `members` | Array<str> | **yes** | **required** |  |
| `permissions` | Optional<Array<[WorkspaceGroupPermission](#workspacegrouppermission)>> | no | `nil` |  |
| `group_usage_limit` | Optional<WorkspaceGroupResponseModelGroupUsageLimit> | no | `nil` |  |
| `group_pvc_limit` | Optional<WorkspaceGroupResponseModelGroupPvcLimit> | no | `nil` |  |
| `character_count` | Optional<int> | no | `nil` |  |
| `scim_external_id` | Optional<str> | no | `nil` |  |

### WorkspaceServiceAccountListResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `service_accounts` | Annotated[Array<[WorkspaceServiceAccountResponseModel](#workspaceserviceaccountresponsemodel)>, FieldMetadata(alias='service-accounts')> | **yes** | **required** |  |

### WorkspaceServiceAccountResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `service_account_user_id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix` | Optional<int> | no | `nil` |  |
| `api_keys` | Annotated[Array<[WorkspaceApiKeyResponseModel](#workspaceapikeyresponsemodel)>, FieldMetadata(alias='api-keys')> | **yes** | **required** |  |
| `default_sharing_groups` | Optional<Array<[DefaultSharingGroupResponseModel](#defaultsharinggroupresponsemodel)>> | no | `nil` |  |

### WorkspaceWebhookListResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `webhooks` | Array<[WorkspaceWebhookResponseModel](#workspacewebhookresponsemodel)> | **yes** | **required** | List of webhooks currently configured for the workspace |

### WorkspaceWebhookResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `name` | str | **yes** | **required** | The display name for this webhook. |
| `webhook_id` | str | **yes** | **required** | The unique ID for this webhook. |
| `webhook_url` | str | **yes** | **required** | The HTTPS callback URL that is called when this webhook is triggered in the platform. |
| `is_disabled` | bool | **yes** | **required** | Whether the webhook has been manually disabled by a user. |
| `is_auto_disabled` | bool | **yes** | **required** | Whether the webhook has been automatically disabled due to repeated consecutive failures over a long period of time. |
| `created_at_unix` | int | **yes** | **required** | Original creation time of the webhook. |
| `auth_type` | [WebhookAuthMethodType](#webhookauthmethodtype) | **yes** | **required** | The authentication mode used to secure the webhook. |
| `usage` | Optional<Array<[WorkspaceWebhookUsageResponseModel](#workspacewebhookusageresponsemodel)>> | no | `nil` | The list of products that are currently configured to trigger this webhook. |
| `most_recent_failure_error_code` | Optional<int> | no | `nil` | The most recent error code returned from the callback URL. |
| `most_recent_failure_timestamp` | Optional<int> | no | `nil` | The most recent time the webhook failed, failures are any non-200 codes returned by the callback URL. |

### WorkspaceWebhookUsageResponseModel

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `usage_type` | [WebhookUsageType](#webhookusagetype) | **yes** | **required** |  |

## Variant classes

Discriminated-union variants. Each carries a `type` field with a literal value.

### AgentWorkflowRequestModelNodesValue_End

Variant of [AgentWorkflowRequestModelNodesValue](#agentworkflowrequestmodelnodesvalue) with `type: 'end'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'end'> | no | `'end'` |  |
| `position` | Optional<[PositionInput](#positioninput)> | no | `nil` |  |
| `edge_order` | Optional<Array<str>> | no | `nil` |  |

### AgentWorkflowRequestModelNodesValue_OverrideAgent

Variant of [AgentWorkflowRequestModelNodesValue](#agentworkflowrequestmodelnodesvalue) with `type: 'override_agent'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'override_agent'> | no | `'override_agent'` |  |
| `conversation_config` | Optional<[ConversationalConfigApiModelWorkflowOverrideInput](#conversationalconfigapimodelworkflowoverrideinput)> | no | `nil` |  |
| `additional_prompt` | Optional<str> | no | `nil` |  |
| `additional_knowledge_base` | Optional<Array<[KnowledgeBaseLocator](#knowledgebaselocator)>> | no | `nil` |  |
| `additional_tool_ids` | Optional<Array<str>> | no | `nil` |  |
| `position` | Optional<[PositionInput](#positioninput)> | no | `nil` |  |
| `edge_order` | Optional<Array<str>> | no | `nil` |  |
| `label` | str | **yes** | **required** |  |

### AgentWorkflowRequestModelNodesValue_PhoneNumber

Variant of [AgentWorkflowRequestModelNodesValue](#agentworkflowrequestmodelnodesvalue) with `type: 'phone_number'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'phone_number'> | no | `'phone_number'` |  |
| `custom_sip_headers` | Optional<Array<[WorkflowPhoneNumberNodeModelInputCustomSipHeadersItem](#workflowphonenumbernodemodelinputcustomsipheadersitem)>> | no | `nil` |  |
| `transfer_destination` | [WorkflowPhoneNumberNodeModelInputTransferDestination](#workflowphonenumbernodemodelinputtransferdestination) | **yes** | **required** |  |
| `transfer_type` | Optional<[TransferTypeEnum](#transfertypeenum)> | no | `nil` |  |
| `post_dial_digits` | Optional<[WorkflowPhoneNumberNodeModelInputPostDialDigits](#workflowphonenumbernodemodelinputpostdialdigits)> | no | `nil` |  |
| `position` | Optional<[PositionInput](#positioninput)> | no | `nil` |  |
| `edge_order` | Optional<Array<str>> | no | `nil` |  |

### AgentWorkflowRequestModelNodesValue_StandaloneAgent

Variant of [AgentWorkflowRequestModelNodesValue](#agentworkflowrequestmodelnodesvalue) with `type: 'standalone_agent'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'standalone_agent'> | no | `'standalone_agent'` |  |
| `position` | Optional<[PositionInput](#positioninput)> | no | `nil` |  |
| `edge_order` | Optional<Array<str>> | no | `nil` |  |
| `agent_id` | str | **yes** | **required** |  |
| `delay_ms` | Optional<int> | no | `nil` |  |
| `transfer_message` | Optional<str> | no | `nil` |  |
| `enable_transferred_agent_first_message` | Optional<bool> | no | `nil` |  |

### AgentWorkflowRequestModelNodesValue_Start

Variant of [AgentWorkflowRequestModelNodesValue](#agentworkflowrequestmodelnodesvalue) with `type: 'start'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'start'> | no | `'start'` |  |
| `position` | Optional<[PositionInput](#positioninput)> | no | `nil` |  |
| `edge_order` | Optional<Array<str>> | no | `nil` |  |

### AgentWorkflowRequestModelNodesValue_Tool

Variant of [AgentWorkflowRequestModelNodesValue](#agentworkflowrequestmodelnodesvalue) with `type: 'tool'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'tool'> | no | `'tool'` |  |
| `position` | Optional<[PositionInput](#positioninput)> | no | `nil` |  |
| `edge_order` | Optional<Array<str>> | no | `nil` |  |
| `tools` | Optional<Array<[WorkflowToolLocator](#workflowtoollocator)>> | no | `nil` |  |

### AgentWorkflowResponseModelNodesValue_End

Variant of [AgentWorkflowResponseModelNodesValue](#agentworkflowresponsemodelnodesvalue) with `type: 'end'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'end'> | no | `'end'` |  |
| `position` | [PositionOutput](#positionoutput) | **yes** | **required** |  |
| `edge_order` | Array<str> | **yes** | **required** |  |

### AgentWorkflowResponseModelNodesValue_OverrideAgent

Variant of [AgentWorkflowResponseModelNodesValue](#agentworkflowresponsemodelnodesvalue) with `type: 'override_agent'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'override_agent'> | no | `'override_agent'` |  |
| `conversation_config` | [ConversationalConfigApiModelWorkflowOverrideOutput](#conversationalconfigapimodelworkflowoverrideoutput) | **yes** | **required** |  |
| `additional_prompt` | str | **yes** | **required** |  |
| `additional_knowledge_base` | Array<[KnowledgeBaseLocator](#knowledgebaselocator)> | **yes** | **required** |  |
| `additional_tool_ids` | Array<str> | **yes** | **required** |  |
| `position` | [PositionOutput](#positionoutput) | **yes** | **required** |  |
| `edge_order` | Array<str> | **yes** | **required** |  |
| `label` | str | **yes** | **required** |  |

### AgentWorkflowResponseModelNodesValue_PhoneNumber

Variant of [AgentWorkflowResponseModelNodesValue](#agentworkflowresponsemodelnodesvalue) with `type: 'phone_number'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'phone_number'> | no | `'phone_number'` |  |
| `custom_sip_headers` | Array<[WorkflowPhoneNumberNodeModelOutputCustomSipHeadersItem](#workflowphonenumbernodemodeloutputcustomsipheadersitem)> | **yes** | **required** |  |
| `transfer_destination` | [WorkflowPhoneNumberNodeModelOutputTransferDestination](#workflowphonenumbernodemodeloutputtransferdestination) | **yes** | **required** |  |
| `transfer_type` | [TransferTypeEnum](#transfertypeenum) | **yes** | **required** |  |
| `post_dial_digits` | Optional<[WorkflowPhoneNumberNodeModelOutputPostDialDigits](#workflowphonenumbernodemodeloutputpostdialdigits)> | no | `nil` |  |
| `position` | [PositionOutput](#positionoutput) | **yes** | **required** |  |
| `edge_order` | Array<str> | **yes** | **required** |  |

### AgentWorkflowResponseModelNodesValue_StandaloneAgent

Variant of [AgentWorkflowResponseModelNodesValue](#agentworkflowresponsemodelnodesvalue) with `type: 'standalone_agent'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'standalone_agent'> | no | `'standalone_agent'` |  |
| `position` | [PositionOutput](#positionoutput) | **yes** | **required** |  |
| `edge_order` | Array<str> | **yes** | **required** |  |
| `agent_id` | str | **yes** | **required** |  |
| `delay_ms` | int | **yes** | **required** |  |
| `transfer_message` | Optional<str> | no | `nil` |  |
| `enable_transferred_agent_first_message` | bool | **yes** | **required** |  |

### AgentWorkflowResponseModelNodesValue_Start

Variant of [AgentWorkflowResponseModelNodesValue](#agentworkflowresponsemodelnodesvalue) with `type: 'start'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'start'> | no | `'start'` |  |
| `position` | [PositionOutput](#positionoutput) | **yes** | **required** |  |
| `edge_order` | Array<str> | **yes** | **required** |  |

### AgentWorkflowResponseModelNodesValue_Tool

Variant of [AgentWorkflowResponseModelNodesValue](#agentworkflowresponsemodelnodesvalue) with `type: 'tool'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'tool'> | no | `'tool'` |  |
| `position` | [PositionOutput](#positionoutput) | **yes** | **required** |  |
| `edge_order` | Array<str> | **yes** | **required** |  |
| `tools` | Array<[WorkflowToolLocator](#workflowtoollocator)> | **yes** | **required** |  |

### ApiIntegrationWebhookOverridesSchemaOverridesValue_Constant

Variant of [ApiIntegrationWebhookOverridesSchemaOverridesValue](#apiintegrationwebhookoverridesschemaoverridesvalue) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | Literal<'constant'> | no | `'constant'` |  |
| `constant_value` | ConstantSchemaOverrideConstantValue | **yes** | **required** |  |

### ApiIntegrationWebhookOverridesSchemaOverridesValue_DynamicVariable

Variant of [ApiIntegrationWebhookOverridesSchemaOverridesValue](#apiintegrationwebhookoverridesschemaoverridesvalue) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | Literal<'dynamic_variable'> | no | `'dynamic_variable'` |  |
| `dynamic_variable` | str | **yes** | **required** |  |

### ApiIntegrationWebhookOverridesSchemaOverridesValue_Llm

Variant of [ApiIntegrationWebhookOverridesSchemaOverridesValue](#apiintegrationwebhookoverridesschemaoverridesvalue) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | Literal<'llm'> | no | `'llm'` |  |
| `prompt` | Optional<str> | no | `nil` |  |

### AstNodeInput_AddOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'add_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'add_operator'> | no | `'add_operator'` |  |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |

### AstNodeInput_AndOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'and_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'and_operator'> | no | `'and_operator'` |  |
| `children` | Array<'[AstNodeInput](#astnodeinput)'> | **yes** | **required** |  |

### AstNodeInput_BooleanLiteral

Variant of [AstNodeInput](#astnodeinput) with `type: 'boolean_literal'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'boolean_literal'> | no | `'boolean_literal'` |  |
| `value` | bool | **yes** | **required** |  |

### AstNodeInput_ConditionalOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'conditional_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'conditional_operator'> | no | `'conditional_operator'` |  |
| `condition` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |
| `true_expression` | Annotated['[AstNodeInput](#astnodeinput)', FieldMetadata(alias='trueExpression')> | **yes** | **required** |  |
| `false_expression` | Annotated['[AstNodeInput](#astnodeinput)', FieldMetadata(alias='falseExpression')> | **yes** | **required** |  |

### AstNodeInput_DivOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'div_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'div_operator'> | no | `'div_operator'` |  |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |

### AstNodeInput_DynamicVariable

Variant of [AstNodeInput](#astnodeinput) with `type: 'dynamic_variable'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'dynamic_variable'> | no | `'dynamic_variable'` |  |
| `name` | str | **yes** | **required** |  |

### AstNodeInput_EqOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'eq_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'eq_operator'> | no | `'eq_operator'` |  |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |

### AstNodeInput_GtOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'gt_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'gt_operator'> | no | `'gt_operator'` |  |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |

### AstNodeInput_GteOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'gte_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'gte_operator'> | no | `'gte_operator'` |  |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |

### AstNodeInput_Llm

Variant of [AstNodeInput](#astnodeinput) with `type: 'llm'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | AstllmNodeInput | **yes** | **required** |  |
| `type` | Literal<'llm'> | no | `'llm'` |  |

### AstNodeInput_LtOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'lt_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'lt_operator'> | no | `'lt_operator'` |  |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |

### AstNodeInput_LteOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'lte_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'lte_operator'> | no | `'lte_operator'` |  |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |

### AstNodeInput_MulOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'mul_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'mul_operator'> | no | `'mul_operator'` |  |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |

### AstNodeInput_NeqOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'neq_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'neq_operator'> | no | `'neq_operator'` |  |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |

### AstNodeInput_NullLiteral

Variant of [AstNodeInput](#astnodeinput) with `type: 'null_literal'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'null_literal'> | no | `'null_literal'` |  |

### AstNodeInput_NumberLiteral

Variant of [AstNodeInput](#astnodeinput) with `type: 'number_literal'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'number_literal'> | no | `'number_literal'` |  |
| `value` | float | **yes** | **required** |  |

### AstNodeInput_OrOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'or_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'or_operator'> | no | `'or_operator'` |  |
| `children` | Array<'[AstNodeInput](#astnodeinput)'> | **yes** | **required** |  |

### AstNodeInput_StringLiteral

Variant of [AstNodeInput](#astnodeinput) with `type: 'string_literal'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'string_literal'> | no | `'string_literal'` |  |
| `value` | str | **yes** | **required** |  |

### AstNodeInput_SubOperator

Variant of [AstNodeInput](#astnodeinput) with `type: 'sub_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'sub_operator'> | no | `'sub_operator'` |  |
| `left` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |
| `right` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |

### AstNodeOutput_AddOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'add_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'add_operator'> | no | `'add_operator'` |  |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |

### AstNodeOutput_AndOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'and_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'and_operator'> | no | `'and_operator'` |  |
| `children` | Array<'[AstNodeOutput](#astnodeoutput)'> | **yes** | **required** |  |

### AstNodeOutput_BooleanLiteral

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'boolean_literal'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'boolean_literal'> | no | `'boolean_literal'` |  |
| `value` | bool | **yes** | **required** |  |

### AstNodeOutput_ConditionalOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'conditional_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'conditional_operator'> | no | `'conditional_operator'` |  |
| `condition` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |
| `true_expression` | Annotated['[AstNodeOutput](#astnodeoutput)', FieldMetadata(alias='trueExpression')> | **yes** | **required** |  |
| `false_expression` | Annotated['[AstNodeOutput](#astnodeoutput)', FieldMetadata(alias='falseExpression')> | **yes** | **required** |  |

### AstNodeOutput_DivOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'div_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'div_operator'> | no | `'div_operator'` |  |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |

### AstNodeOutput_DynamicVariable

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'dynamic_variable'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'dynamic_variable'> | no | `'dynamic_variable'` |  |
| `name` | str | **yes** | **required** |  |

### AstNodeOutput_EqOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'eq_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'eq_operator'> | no | `'eq_operator'` |  |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |

### AstNodeOutput_GtOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'gt_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'gt_operator'> | no | `'gt_operator'` |  |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |

### AstNodeOutput_GteOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'gte_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'gte_operator'> | no | `'gte_operator'` |  |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |

### AstNodeOutput_Llm

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'llm'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'llm'> | no | `'llm'` |  |
| `value_schema` | [LlmLiteralJsonSchemaProperty](#llmliteraljsonschemaproperty) | **yes** | **required** |  |
| `prompt` | str | **yes** | **required** |  |

### AstNodeOutput_LtOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'lt_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'lt_operator'> | no | `'lt_operator'` |  |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |

### AstNodeOutput_LteOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'lte_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'lte_operator'> | no | `'lte_operator'` |  |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |

### AstNodeOutput_MulOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'mul_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'mul_operator'> | no | `'mul_operator'` |  |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |

### AstNodeOutput_NeqOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'neq_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'neq_operator'> | no | `'neq_operator'` |  |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |

### AstNodeOutput_NullLiteral

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'null_literal'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'null_literal'> | no | `'null_literal'` |  |

### AstNodeOutput_NumberLiteral

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'number_literal'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'number_literal'> | no | `'number_literal'` |  |
| `value` | float | **yes** | **required** |  |

### AstNodeOutput_OrOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'or_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'or_operator'> | no | `'or_operator'` |  |
| `children` | Array<'[AstNodeOutput](#astnodeoutput)'> | **yes** | **required** |  |

### AstNodeOutput_StringLiteral

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'string_literal'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'string_literal'> | no | `'string_literal'` |  |
| `value` | str | **yes** | **required** |  |

### AstNodeOutput_SubOperator

Variant of [AstNodeOutput](#astnodeoutput) with `type: 'sub_operator'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'sub_operator'> | no | `'sub_operator'` |  |
| `left` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |
| `right` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |

### AuthConnectionDependenciesMcpServersItem_Available

Variant of [AuthConnectionDependenciesMcpServersItem](#authconnectiondependenciesmcpserversitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableMcpServerIdentifierAccessLevel](#dependentavailablemcpserveridentifieraccesslevel) | **yes** | **required** |  |

### AuthConnectionDependenciesMcpServersItem_Unknown

Variant of [AuthConnectionDependenciesMcpServersItem](#authconnectiondependenciesmcpserversitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `id` | str | **yes** | **required** |  |

### AuthConnectionDependenciesToolsItem_Available

Variant of [AuthConnectionDependenciesToolsItem](#authconnectiondependenciestoolsitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableToolIdentifierAccessLevel](#dependentavailabletoolidentifieraccesslevel) | **yes** | **required** |  |

### AuthConnectionDependenciesToolsItem_Unknown

Variant of [AuthConnectionDependenciesToolsItem](#authconnectiondependenciestoolsitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `id` | str | **yes** | **required** |  |

### ChapterContentBlockResponseModelNodesItem_Other

Variant of [ChapterContentBlockResponseModelNodesItem](#chaptercontentblockresponsemodelnodesitem) with `type: '_other'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'_other'> | no | `'_other'` |  |

### ChapterContentBlockResponseModelNodesItem_TtsNode

Variant of [ChapterContentBlockResponseModelNodesItem](#chaptercontentblockresponsemodelnodesitem) with `type: 'tts_node'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'tts_node'> | no | `'tts_node'` |  |
| `voice_id` | str | **yes** | **required** |  |
| `text` | str | **yes** | **required** |  |

### ContentGuardrailInputTriggerAction_EndCall

Variant of [ContentGuardrailInputTriggerAction](#contentguardrailinputtriggeraction) with `type: 'end_call'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'end_call'> | no | `'end_call'` |  |

### ContentGuardrailInputTriggerAction_Retry

Variant of [ContentGuardrailInputTriggerAction](#contentguardrailinputtriggeraction) with `type: 'retry'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'retry'> | no | `'retry'` |  |
| `feedback` | Optional<str> | no | `nil` |  |

### ContentGuardrailOutputTriggerAction_EndCall

Variant of [ContentGuardrailOutputTriggerAction](#contentguardrailoutputtriggeraction) with `type: 'end_call'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'end_call'> | no | `'end_call'` |  |

### ContentGuardrailOutputTriggerAction_Retry

Variant of [ContentGuardrailOutputTriggerAction](#contentguardrailoutputtriggeraction) with `type: 'retry'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'retry'> | no | `'retry'` |  |
| `feedback` | Optional<str> | no | `nil` |  |

### ConvAiStoredSecretDependenciesAgentsItem_Available

Variant of [ConvAiStoredSecretDependenciesAgentsItem](#convaistoredsecretdependenciesagentsitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableAgentIdentifierAccessLevel](#dependentavailableagentidentifieraccesslevel) | **yes** | **required** |  |

### ConvAiStoredSecretDependenciesAgentsItem_Unknown

Variant of [ConvAiStoredSecretDependenciesAgentsItem](#convaistoredsecretdependenciesagentsitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |

### ConvAiStoredSecretDependenciesMcpServersItem_Available

Variant of [ConvAiStoredSecretDependenciesMcpServersItem](#convaistoredsecretdependenciesmcpserversitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableMcpServerIdentifierAccessLevel](#dependentavailablemcpserveridentifieraccesslevel) | **yes** | **required** |  |

### ConvAiStoredSecretDependenciesMcpServersItem_Unknown

Variant of [ConvAiStoredSecretDependenciesMcpServersItem](#convaistoredsecretdependenciesmcpserversitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `id` | str | **yes** | **required** |  |

### ConvAiStoredSecretDependenciesToolsItem_Available

Variant of [ConvAiStoredSecretDependenciesToolsItem](#convaistoredsecretdependenciestoolsitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableToolIdentifierAccessLevel](#dependentavailabletoolidentifieraccesslevel) | **yes** | **required** |  |

### ConvAiStoredSecretDependenciesToolsItem_Unknown

Variant of [ConvAiStoredSecretDependenciesToolsItem](#convaistoredsecretdependenciestoolsitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `id` | str | **yes** | **required** |  |

### ConversationHistoryMetadataCommonModelPhoneCall_SipTrunking

Variant of [ConversationHistoryMetadataCommonModelPhoneCall](#conversationhistorymetadatacommonmodelphonecall) with `type: 'sip_trunking'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'sip_trunking'> | no | `'sip_trunking'` |  |
| `direction` | [TelephonyDirection](#telephonydirection) | **yes** | **required** |  |
| `phone_number_id` | str | **yes** | **required** |  |
| `agent_number` | str | **yes** | **required** |  |
| `external_number` | str | **yes** | **required** |  |
| `call_sid` | str | **yes** | **required** |  |
| `sip_header_dynamic_variables` | Optional<Hash<str, str>> | no | `nil` |  |

### ConversationHistoryMetadataCommonModelPhoneCall_Twilio

Variant of [ConversationHistoryMetadataCommonModelPhoneCall](#conversationhistorymetadatacommonmodelphonecall) with `type: 'twilio'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'twilio'> | no | `'twilio'` |  |
| `direction` | [TelephonyDirection](#telephonydirection) | **yes** | **required** |  |
| `phone_number_id` | str | **yes** | **required** |  |
| `agent_number` | str | **yes** | **required** |  |
| `external_number` | str | **yes** | **required** |  |
| `stream_sid` | str | **yes** | **required** |  |
| `call_sid` | str | **yes** | **required** |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_EndCallSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'end_call_success'> | no | `'end_call_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |
| `message` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_LanguageDetectionSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'language_detection_success'> | no | `'language_detection_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |
| `language` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_PlayDtmfError

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'play_dtmf_error'> | no | `'play_dtmf_error'` |  |
| `status` | Optional<Literal<'error'>> | no | `nil` |  |
| `error` | str | **yes** | **required** |  |
| `details` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_PlayDtmfSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'play_dtmf_success'> | no | `'play_dtmf_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `dtmf_tones` | str | **yes** | **required** |  |
| `reason` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_SkipTurnSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'skip_turn_success'> | no | `'skip_turn_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_TestingToolResult

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'testing_tool_result'> | no | `'testing_tool_result'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_TransferToAgentError

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'transfer_to_agent_error'> | no | `'transfer_to_agent_error'` |  |
| `status` | Optional<Literal<'error'>> | no | `nil` |  |
| `from_agent` | str | **yes** | **required** |  |
| `error` | str | **yes** | **required** |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_TransferToAgentSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'transfer_to_agent_success'> | no | `'transfer_to_agent_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `from_agent` | str | **yes** | **required** |  |
| `to_agent` | str | **yes** | **required** |  |
| `condition` | str | **yes** | **required** |  |
| `delay_ms` | Optional<int> | no | `nil` |  |
| `transfer_message` | Optional<str> | no | `nil` |  |
| `enable_transferred_agent_first_message` | Optional<bool> | no | `nil` |  |
| `branch_info` | Optional<[TransferToAgentToolResultSuccessModelBranchInfo](#transfertoagenttoolresultsuccessmodelbranchinfo)> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_TransferToNumberError

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'transfer_to_number_error'> | no | `'transfer_to_number_error'` |  |
| `status` | Optional<Literal<'error'>> | no | `nil` |  |
| `error` | str | **yes** | **required** |  |
| `details` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_TransferToNumberSipSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'transfer_to_number_sip_success'> | no | `'transfer_to_number_sip_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `transfer_number` | str | **yes** | **required** |  |
| `reason` | Optional<str> | no | `nil` |  |
| `note` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_TransferToNumberTwilioSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'transfer_to_number_twilio_success'> | no | `'transfer_to_number_twilio_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `transfer_number` | str | **yes** | **required** |  |
| `reason` | Optional<str> | no | `nil` |  |
| `client_message` | Optional<str> | no | `nil` |  |
| `agent_message` | str | **yes** | **required** |  |
| `conference_name` | str | **yes** | **required** |  |
| `post_dial_digits` | Optional<str> | no | `nil` |  |
| `note` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelInputResult_VoicemailDetectionSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelInputResult](#conversationhistorytranscriptsystemtoolresultcommonmodelinputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'voicemail_detection_success'> | no | `'voicemail_detection_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `voicemail_message` | Optional<str> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_EndCallSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'end_call_success'> | no | `'end_call_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |
| `message` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_LanguageDetectionSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'language_detection_success'> | no | `'language_detection_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |
| `language` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_PlayDtmfError

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'play_dtmf_error'> | no | `'play_dtmf_error'` |  |
| `status` | Optional<Literal<'error'>> | no | `nil` |  |
| `error` | str | **yes** | **required** |  |
| `details` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_PlayDtmfSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'play_dtmf_success'> | no | `'play_dtmf_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `dtmf_tones` | str | **yes** | **required** |  |
| `reason` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_SkipTurnSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'skip_turn_success'> | no | `'skip_turn_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_TestingToolResult

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'testing_tool_result'> | no | `'testing_tool_result'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_TransferToAgentError

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'transfer_to_agent_error'> | no | `'transfer_to_agent_error'` |  |
| `status` | Optional<Literal<'error'>> | no | `nil` |  |
| `from_agent` | str | **yes** | **required** |  |
| `error` | str | **yes** | **required** |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_TransferToAgentSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'transfer_to_agent_success'> | no | `'transfer_to_agent_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `from_agent` | str | **yes** | **required** |  |
| `to_agent` | str | **yes** | **required** |  |
| `condition` | str | **yes** | **required** |  |
| `delay_ms` | Optional<int> | no | `nil` |  |
| `transfer_message` | Optional<str> | no | `nil` |  |
| `enable_transferred_agent_first_message` | Optional<bool> | no | `nil` |  |
| `branch_info` | Optional<[TransferToAgentToolResultSuccessModelBranchInfo](#transfertoagenttoolresultsuccessmodelbranchinfo)> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_TransferToNumberError

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'transfer_to_number_error'> | no | `'transfer_to_number_error'` |  |
| `status` | Optional<Literal<'error'>> | no | `nil` |  |
| `error` | str | **yes** | **required** |  |
| `details` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_TransferToNumberSipSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'transfer_to_number_sip_success'> | no | `'transfer_to_number_sip_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `transfer_number` | str | **yes** | **required** |  |
| `reason` | Optional<str> | no | `nil` |  |
| `note` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_TransferToNumberTwilioSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'transfer_to_number_twilio_success'> | no | `'transfer_to_number_twilio_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `transfer_number` | str | **yes** | **required** |  |
| `reason` | Optional<str> | no | `nil` |  |
| `client_message` | Optional<str> | no | `nil` |  |
| `agent_message` | str | **yes** | **required** |  |
| `conference_name` | str | **yes** | **required** |  |
| `post_dial_digits` | Optional<str> | no | `nil` |  |
| `note` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult_VoicemailDetectionSuccess

Variant of [ConversationHistoryTranscriptSystemToolResultCommonModelOutputResult](#conversationhistorytranscriptsystemtoolresultcommonmodeloutputresult) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `result_type` | Literal<'voicemail_detection_success'> | no | `'voicemail_detection_success'` |  |
| `status` | Optional<Literal<'success'>> | no | `nil` |  |
| `voicemail_message` | Optional<str> | no | `nil` |  |
| `reason` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptToolCallCommonModelInputToolDetails_ApiIntegrationWebhook

Variant of [ConversationHistoryTranscriptToolCallCommonModelInputToolDetails](#conversationhistorytranscripttoolcallcommonmodelinputtooldetails) with `type: 'api_integration_webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'api_integration_webhook'> | no | `'api_integration_webhook'` |  |
| `integration_id` | Optional<str> | no | `nil` |  |
| `credential_id` | Optional<str> | no | `nil` |  |
| `integration_connection_id` | Optional<str> | no | `nil` |  |
| `webhook_details` | [ConversationHistoryTranscriptToolCallWebhookDetails](#conversationhistorytranscripttoolcallwebhookdetails) | **yes** | **required** |  |

### ConversationHistoryTranscriptToolCallCommonModelInputToolDetails_Client

Variant of [ConversationHistoryTranscriptToolCallCommonModelInputToolDetails](#conversationhistorytranscripttoolcallcommonmodelinputtooldetails) with `type: 'client'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'client'> | no | `'client'` |  |
| `parameters` | str | **yes** | **required** |  |

### ConversationHistoryTranscriptToolCallCommonModelInputToolDetails_Mcp

Variant of [ConversationHistoryTranscriptToolCallCommonModelInputToolDetails](#conversationhistorytranscripttoolcallcommonmodelinputtooldetails) with `type: 'mcp'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'mcp'> | no | `'mcp'` |  |
| `mcp_server_id` | str | **yes** | **required** |  |
| `mcp_server_name` | str | **yes** | **required** |  |
| `integration_type` | str | **yes** | **required** |  |
| `parameters` | Optional<Hash<str, str>> | no | `nil` |  |
| `approval_policy` | str | **yes** | **required** |  |
| `requires_approval` | Optional<bool> | no | `nil` |  |
| `mcp_tool_name` | Optional<str> | no | `nil` |  |
| `mcp_tool_description` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptToolCallCommonModelInputToolDetails_Webhook

Variant of [ConversationHistoryTranscriptToolCallCommonModelInputToolDetails](#conversationhistorytranscripttoolcallcommonmodelinputtooldetails) with `type: 'webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'webhook'> | no | `'webhook'` |  |
| `method` | str | **yes** | **required** |  |
| `url` | str | **yes** | **required** |  |
| `headers` | Optional<Hash<str, str>> | no | `nil` |  |
| `path_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `query_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `body` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails_ApiIntegrationWebhook

Variant of [ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails](#conversationhistorytranscripttoolcallcommonmodeloutputtooldetails) with `type: 'api_integration_webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'api_integration_webhook'> | no | `'api_integration_webhook'` |  |
| `integration_id` | str | **yes** | **required** |  |
| `credential_id` | str | **yes** | **required** |  |
| `integration_connection_id` | str | **yes** | **required** |  |
| `webhook_details` | [ConversationHistoryTranscriptToolCallWebhookDetails](#conversationhistorytranscripttoolcallwebhookdetails) | **yes** | **required** |  |

### ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails_Client

Variant of [ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails](#conversationhistorytranscripttoolcallcommonmodeloutputtooldetails) with `type: 'client'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'client'> | no | `'client'` |  |
| `parameters` | str | **yes** | **required** |  |

### ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails_Mcp

Variant of [ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails](#conversationhistorytranscripttoolcallcommonmodeloutputtooldetails) with `type: 'mcp'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'mcp'> | no | `'mcp'` |  |
| `mcp_server_id` | str | **yes** | **required** |  |
| `mcp_server_name` | str | **yes** | **required** |  |
| `integration_type` | str | **yes** | **required** |  |
| `parameters` | Optional<Hash<str, str>> | no | `nil` |  |
| `approval_policy` | str | **yes** | **required** |  |
| `requires_approval` | Optional<bool> | no | `nil` |  |
| `mcp_tool_name` | Optional<str> | no | `nil` |  |
| `mcp_tool_description` | Optional<str> | no | `nil` |  |

### ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails_Webhook

Variant of [ConversationHistoryTranscriptToolCallCommonModelOutputToolDetails](#conversationhistorytranscripttoolcallcommonmodeloutputtooldetails) with `type: 'webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'webhook'> | no | `'webhook'` |  |
| `method` | str | **yes** | **required** |  |
| `url` | str | **yes** | **required** |  |
| `headers` | Optional<Hash<str, str>> | no | `nil` |  |
| `path_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `query_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `body` | Optional<str> | no | `nil` |  |

### CustomGuardrailConfigTriggerAction_EndCall

Variant of [CustomGuardrailConfigTriggerAction](#customguardrailconfigtriggeraction) with `type: 'end_call'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'end_call'> | no | `'end_call'` |  |

### CustomGuardrailConfigTriggerAction_Retry

Variant of [CustomGuardrailConfigTriggerAction](#customguardrailconfigtriggeraction) with `type: 'retry'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'retry'> | no | `'retry'` |  |
| `feedback` | Optional<str> | no | `nil` |  |

### ExportOptions_Docx

Variant of [ExportOptions](#exportoptions) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `format` | Literal<'docx'> | no | `'docx'` |  |
| `include_speakers` | Optional<bool> | no | `nil` |  |
| `include_timestamps` | Optional<bool> | no | `nil` |  |
| `segment_on_silence_longer_than_s` | Optional<float> | no | `nil` |  |
| `max_segment_duration_s` | Optional<float> | no | `nil` |  |
| `max_segment_chars` | Optional<int> | no | `nil` |  |

### ExportOptions_Html

Variant of [ExportOptions](#exportoptions) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `format` | Literal<'html'> | no | `'html'` |  |
| `include_speakers` | Optional<bool> | no | `nil` |  |
| `include_timestamps` | Optional<bool> | no | `nil` |  |
| `segment_on_silence_longer_than_s` | Optional<float> | no | `nil` |  |
| `max_segment_duration_s` | Optional<float> | no | `nil` |  |
| `max_segment_chars` | Optional<int> | no | `nil` |  |

### ExportOptions_Pdf

Variant of [ExportOptions](#exportoptions) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `format` | Literal<'pdf'> | no | `'pdf'` |  |
| `include_speakers` | Optional<bool> | no | `nil` |  |
| `include_timestamps` | Optional<bool> | no | `nil` |  |
| `segment_on_silence_longer_than_s` | Optional<float> | no | `nil` |  |
| `max_segment_duration_s` | Optional<float> | no | `nil` |  |
| `max_segment_chars` | Optional<int> | no | `nil` |  |

### ExportOptions_SegmentedJson

Variant of [ExportOptions](#exportoptions) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `format` | Literal<'segmented_json'> | no | `'segmented_json'` |  |
| `include_speakers` | Optional<bool> | no | `nil` |  |
| `include_timestamps` | Optional<bool> | no | `nil` |  |
| `segment_on_silence_longer_than_s` | Optional<float> | no | `nil` |  |
| `max_segment_duration_s` | Optional<float> | no | `nil` |  |
| `max_segment_chars` | Optional<int> | no | `nil` |  |

### ExportOptions_Srt

Variant of [ExportOptions](#exportoptions) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `format` | Literal<'srt'> | no | `'srt'` |  |
| `max_characters_per_line` | Optional<int> | no | `nil` |  |
| `include_speakers` | Optional<bool> | no | `nil` |  |
| `include_timestamps` | Optional<bool> | no | `nil` |  |
| `segment_on_silence_longer_than_s` | Optional<float> | no | `nil` |  |
| `max_segment_duration_s` | Optional<float> | no | `nil` |  |
| `max_segment_chars` | Optional<int> | no | `nil` |  |

### ExportOptions_Txt

Variant of [ExportOptions](#exportoptions) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `format` | Literal<'txt'> | no | `'txt'` |  |
| `max_characters_per_line` | Optional<int> | no | `nil` |  |
| `include_speakers` | Optional<bool> | no | `nil` |  |
| `include_timestamps` | Optional<bool> | no | `nil` |  |
| `segment_on_silence_longer_than_s` | Optional<float> | no | `nil` |  |
| `max_segment_duration_s` | Optional<float> | no | `nil` |  |
| `max_segment_chars` | Optional<int> | no | `nil` |  |

### GetAgentResponseModelPhoneNumbersItem_SipTrunk

Variant of [GetAgentResponseModelPhoneNumbersItem](#getagentresponsemodelphonenumbersitem) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `provider` | Literal<'sip_trunk'> | no | `'sip_trunk'` |  |
| `phone_number` | str | **yes** | **required** |  |
| `label` | str | **yes** | **required** |  |
| `supports_inbound` | Optional<bool> | no | `nil` |  |
| `supports_outbound` | Optional<bool> | no | `nil` |  |
| `phone_number_id` | str | **yes** | **required** |  |
| `assigned_agent` | Optional<[PhoneNumberAgentInfo](#phonenumberagentinfo)> | no | `nil` |  |
| `provider_config` | Optional<[GetPhoneNumberOutboundSipTrunkConfigResponseModel](#getphonenumberoutboundsiptrunkconfigresponsemodel)> | no | `nil` |  |
| `outbound_trunk` | Optional<[GetPhoneNumberOutboundSipTrunkConfigResponseModel](#getphonenumberoutboundsiptrunkconfigresponsemodel)> | no | `nil` |  |
| `inbound_trunk` | Optional<[GetPhoneNumberInboundSipTrunkConfigResponseModel](#getphonenumberinboundsiptrunkconfigresponsemodel)> | no | `nil` |  |
| `livekit_stack` | [LivekitStackType](#livekitstacktype) | **yes** | **required** |  |

### GetAgentResponseModelPhoneNumbersItem_Twilio

Variant of [GetAgentResponseModelPhoneNumbersItem](#getagentresponsemodelphonenumbersitem) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `provider` | Literal<'twilio'> | no | `'twilio'` |  |
| `phone_number` | str | **yes** | **required** |  |
| `label` | str | **yes** | **required** |  |
| `supports_inbound` | Optional<bool> | no | `nil` |  |
| `supports_outbound` | Optional<bool> | no | `nil` |  |
| `phone_number_id` | str | **yes** | **required** |  |
| `assigned_agent` | Optional<[PhoneNumberAgentInfo](#phonenumberagentinfo)> | no | `nil` |  |

### GetConvAiDashboardSettingsResponseModelChartsItem_CallSuccess

Variant of [GetConvAiDashboardSettingsResponseModelChartsItem](#getconvaidashboardsettingsresponsemodelchartsitem) with `type: 'call_success'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'call_success'> | no | `'call_success'` |  |
| `name` | str | **yes** | **required** |  |

### GetConvAiDashboardSettingsResponseModelChartsItem_Criteria

Variant of [GetConvAiDashboardSettingsResponseModelChartsItem](#getconvaidashboardsettingsresponsemodelchartsitem) with `type: 'criteria'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'criteria'> | no | `'criteria'` |  |
| `name` | str | **yes** | **required** |  |
| `criteria_id` | str | **yes** | **required** |  |

### GetConvAiDashboardSettingsResponseModelChartsItem_DataCollection

Variant of [GetConvAiDashboardSettingsResponseModelChartsItem](#getconvaidashboardsettingsresponsemodelchartsitem) with `type: 'data_collection'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'data_collection'> | no | `'data_collection'` |  |
| `name` | str | **yes** | **required** |  |
| `data_collection_id` | str | **yes** | **required** |  |

### GetKnowledgeBaseDependentAgentsResponseModelAgentsItem_Available

Variant of [GetKnowledgeBaseDependentAgentsResponseModelAgentsItem](#getknowledgebasedependentagentsresponsemodelagentsitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableAgentIdentifierAccessLevel](#dependentavailableagentidentifieraccesslevel) | **yes** | **required** |  |

### GetKnowledgeBaseDependentAgentsResponseModelAgentsItem_Unknown

Variant of [GetKnowledgeBaseDependentAgentsResponseModelAgentsItem](#getknowledgebasedependentagentsresponsemodelagentsitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |

### GetKnowledgeBaseListResponseModelDocumentsItem_File

Variant of [GetKnowledgeBaseListResponseModelDocumentsItem](#getknowledgebaselistresponsemodeldocumentsitem) with `type: 'file'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'file'> | no | `'file'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` |  |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryFileResponseModelDependentAgentsItem](#getknowledgebasesummaryfileresponsemodeldependentagentsitem)> | **yes** | **required** |  |

### GetKnowledgeBaseListResponseModelDocumentsItem_Folder

Variant of [GetKnowledgeBaseListResponseModelDocumentsItem](#getknowledgebaselistresponsemodeldocumentsitem) with `type: 'folder'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'folder'> | no | `'folder'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` |  |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryFolderResponseModelDependentAgentsItem](#getknowledgebasesummaryfolderresponsemodeldependentagentsitem)> | **yes** | **required** |  |
| `children_count` | int | **yes** | **required** |  |
| `auto_sync_info` | Optional<[AutoSyncInfo](#autosyncinfo)> | no | `nil` |  |

### GetKnowledgeBaseListResponseModelDocumentsItem_Text

Variant of [GetKnowledgeBaseListResponseModelDocumentsItem](#getknowledgebaselistresponsemodeldocumentsitem) with `type: 'text'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'text'> | no | `'text'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` |  |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryTextResponseModelDependentAgentsItem](#getknowledgebasesummarytextresponsemodeldependentagentsitem)> | **yes** | **required** |  |

### GetKnowledgeBaseListResponseModelDocumentsItem_Url

Variant of [GetKnowledgeBaseListResponseModelDocumentsItem](#getknowledgebaselistresponsemodeldocumentsitem) with `type: 'url'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'url'> | no | `'url'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` |  |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryUrlResponseModelDependentAgentsItem](#getknowledgebasesummaryurlresponsemodeldependentagentsitem)> | **yes** | **required** |  |
| `url` | str | **yes** | **required** |  |
| `auto_sync_info` | Optional<[AutoSyncInfo](#autosyncinfo)> | no | `nil` |  |

### GetKnowledgeBaseSummaryFileResponseModelDependentAgentsItem_Available

Variant of [GetKnowledgeBaseSummaryFileResponseModelDependentAgentsItem](#getknowledgebasesummaryfileresponsemodeldependentagentsitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableAgentIdentifierAccessLevel](#dependentavailableagentidentifieraccesslevel) | **yes** | **required** |  |

### GetKnowledgeBaseSummaryFileResponseModelDependentAgentsItem_Unknown

Variant of [GetKnowledgeBaseSummaryFileResponseModelDependentAgentsItem](#getknowledgebasesummaryfileresponsemodeldependentagentsitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |

### GetKnowledgeBaseSummaryFolderResponseModelDependentAgentsItem_Available

Variant of [GetKnowledgeBaseSummaryFolderResponseModelDependentAgentsItem](#getknowledgebasesummaryfolderresponsemodeldependentagentsitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableAgentIdentifierAccessLevel](#dependentavailableagentidentifieraccesslevel) | **yes** | **required** |  |

### GetKnowledgeBaseSummaryFolderResponseModelDependentAgentsItem_Unknown

Variant of [GetKnowledgeBaseSummaryFolderResponseModelDependentAgentsItem](#getknowledgebasesummaryfolderresponsemodeldependentagentsitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |

### GetKnowledgeBaseSummaryTextResponseModelDependentAgentsItem_Available

Variant of [GetKnowledgeBaseSummaryTextResponseModelDependentAgentsItem](#getknowledgebasesummarytextresponsemodeldependentagentsitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableAgentIdentifierAccessLevel](#dependentavailableagentidentifieraccesslevel) | **yes** | **required** |  |

### GetKnowledgeBaseSummaryTextResponseModelDependentAgentsItem_Unknown

Variant of [GetKnowledgeBaseSummaryTextResponseModelDependentAgentsItem](#getknowledgebasesummarytextresponsemodeldependentagentsitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |

### GetKnowledgeBaseSummaryUrlResponseModelDependentAgentsItem_Available

Variant of [GetKnowledgeBaseSummaryUrlResponseModelDependentAgentsItem](#getknowledgebasesummaryurlresponsemodeldependentagentsitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableAgentIdentifierAccessLevel](#dependentavailableagentidentifieraccesslevel) | **yes** | **required** |  |

### GetKnowledgeBaseSummaryUrlResponseModelDependentAgentsItem_Unknown

Variant of [GetKnowledgeBaseSummaryUrlResponseModelDependentAgentsItem](#getknowledgebasesummaryurlresponsemodeldependentagentsitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |

### GetPronunciationDictionaryWithRulesResponseModelRulesItem_Alias

Variant of [GetPronunciationDictionaryWithRulesResponseModelRulesItem](#getpronunciationdictionarywithrulesresponsemodelrulesitem) with `type: 'alias'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'alias'> | no | `'alias'` |  |
| `string_to_replace` | str | **yes** | **required** |  |
| `case_sensitive` | Optional<bool> | no | `nil` |  |
| `word_boundaries` | Optional<bool> | no | `nil` |  |
| `alias` | str | **yes** | **required** |  |

### GetPronunciationDictionaryWithRulesResponseModelRulesItem_Phoneme

Variant of [GetPronunciationDictionaryWithRulesResponseModelRulesItem](#getpronunciationdictionarywithrulesresponsemodelrulesitem) with `type: 'phoneme'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'phoneme'> | no | `'phoneme'` |  |
| `string_to_replace` | str | **yes** | **required** |  |
| `case_sensitive` | Optional<bool> | no | `nil` |  |
| `word_boundaries` | Optional<bool> | no | `nil` |  |
| `phoneme` | str | **yes** | **required** |  |
| `alphabet` | str | **yes** | **required** |  |

### GetSecretDependenciesResponseModelDependenciesOneItem_Available

Variant of [GetSecretDependenciesResponseModelDependenciesOneItem](#getsecretdependenciesresponsemodeldependenciesoneitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableAgentIdentifierAccessLevel](#dependentavailableagentidentifieraccesslevel) | **yes** | **required** |  |

### GetSecretDependenciesResponseModelDependenciesOneItem_Unknown

Variant of [GetSecretDependenciesResponseModelDependenciesOneItem](#getsecretdependenciesresponsemodeldependenciesoneitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |

### GetSecretDependenciesResponseModelDependenciesZeroItem_Available

Variant of [GetSecretDependenciesResponseModelDependenciesZeroItem](#getsecretdependenciesresponsemodeldependencieszeroitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableToolIdentifierAccessLevel](#dependentavailabletoolidentifieraccesslevel) | **yes** | **required** |  |

### GetSecretDependenciesResponseModelDependenciesZeroItem_Unknown

Variant of [GetSecretDependenciesResponseModelDependenciesZeroItem](#getsecretdependenciesresponsemodeldependencieszeroitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `id` | str | **yes** | **required** |  |

### GetToolDependentAgentsResponseModelAgentsItem_Available

Variant of [GetToolDependentAgentsResponseModelAgentsItem](#gettooldependentagentsresponsemodelagentsitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableAgentIdentifierAccessLevel](#dependentavailableagentidentifieraccesslevel) | **yes** | **required** |  |

### GetToolDependentAgentsResponseModelAgentsItem_Unknown

Variant of [GetToolDependentAgentsResponseModelAgentsItem](#gettooldependentagentsresponsemodelagentsitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |

### KnowledgeBaseContentSearchResultDocument_File

Variant of [KnowledgeBaseContentSearchResultDocument](#knowledgebasecontentsearchresultdocument) with `type: 'file'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'file'> | no | `'file'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` |  |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryFileResponseModelDependentAgentsItem](#getknowledgebasesummaryfileresponsemodeldependentagentsitem)> | **yes** | **required** |  |

### KnowledgeBaseContentSearchResultDocument_Folder

Variant of [KnowledgeBaseContentSearchResultDocument](#knowledgebasecontentsearchresultdocument) with `type: 'folder'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'folder'> | no | `'folder'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` |  |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryFolderResponseModelDependentAgentsItem](#getknowledgebasesummaryfolderresponsemodeldependentagentsitem)> | **yes** | **required** |  |
| `children_count` | int | **yes** | **required** |  |
| `auto_sync_info` | Optional<[AutoSyncInfo](#autosyncinfo)> | no | `nil` |  |

### KnowledgeBaseContentSearchResultDocument_Text

Variant of [KnowledgeBaseContentSearchResultDocument](#knowledgebasecontentsearchresultdocument) with `type: 'text'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'text'> | no | `'text'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` |  |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryTextResponseModelDependentAgentsItem](#getknowledgebasesummarytextresponsemodeldependentagentsitem)> | **yes** | **required** |  |

### KnowledgeBaseContentSearchResultDocument_Url

Variant of [KnowledgeBaseContentSearchResultDocument](#knowledgebasecontentsearchresultdocument) with `type: 'url'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'url'> | no | `'url'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` |  |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryUrlResponseModelDependentAgentsItem](#getknowledgebasesummaryurlresponsemodeldependentagentsitem)> | **yes** | **required** |  |
| `url` | str | **yes** | **required** |  |
| `auto_sync_info` | Optional<[AutoSyncInfo](#autosyncinfo)> | no | `nil` |  |

### KnowledgeBaseSummaryBatchSuccessfulResponseModelData_File

Variant of [KnowledgeBaseSummaryBatchSuccessfulResponseModelData](#knowledgebasesummarybatchsuccessfulresponsemodeldata) with `type: 'file'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'file'> | no | `'file'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` |  |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryFileResponseModelDependentAgentsItem](#getknowledgebasesummaryfileresponsemodeldependentagentsitem)> | **yes** | **required** |  |

### KnowledgeBaseSummaryBatchSuccessfulResponseModelData_Folder

Variant of [KnowledgeBaseSummaryBatchSuccessfulResponseModelData](#knowledgebasesummarybatchsuccessfulresponsemodeldata) with `type: 'folder'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'folder'> | no | `'folder'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` |  |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryFolderResponseModelDependentAgentsItem](#getknowledgebasesummaryfolderresponsemodeldependentagentsitem)> | **yes** | **required** |  |
| `children_count` | int | **yes** | **required** |  |
| `auto_sync_info` | Optional<[AutoSyncInfo](#autosyncinfo)> | no | `nil` |  |

### KnowledgeBaseSummaryBatchSuccessfulResponseModelData_Text

Variant of [KnowledgeBaseSummaryBatchSuccessfulResponseModelData](#knowledgebasesummarybatchsuccessfulresponsemodeldata) with `type: 'text'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'text'> | no | `'text'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` |  |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryTextResponseModelDependentAgentsItem](#getknowledgebasesummarytextresponsemodeldependentagentsitem)> | **yes** | **required** |  |

### KnowledgeBaseSummaryBatchSuccessfulResponseModelData_Url

Variant of [KnowledgeBaseSummaryBatchSuccessfulResponseModelData](#knowledgebasesummarybatchsuccessfulresponsemodeldata) with `type: 'url'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'url'> | no | `'url'` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `metadata` | [KnowledgeBaseDocumentMetadataResponseModel](#knowledgebasedocumentmetadataresponsemodel) | **yes** | **required** |  |
| `supported_usages` | Array<[DocumentUsageModeEnum](#documentusagemodeenum)> | **yes** | **required** |  |
| `access_info` | [ResourceAccessInfo](#resourceaccessinfo) | **yes** | **required** |  |
| `folder_parent_id` | Optional<str> | no | `nil` |  |
| `folder_path` | Optional<Array<[KnowledgeBaseFolderPathSegmentSummaryResponseModel](#knowledgebasefolderpathsegmentsummaryresponsemodel)>> | no | `nil` |  |
| `dependent_agents` | Array<[GetKnowledgeBaseSummaryUrlResponseModelDependentAgentsItem](#getknowledgebasesummaryurlresponsemodeldependentagentsitem)> | **yes** | **required** |  |
| `url` | str | **yes** | **required** |  |
| `auto_sync_info` | Optional<[AutoSyncInfo](#autosyncinfo)> | no | `nil` |  |

### ListAuthConnectionsResponseAuthConnectionsItem_ApiIntegrationOauth2AuthCode

Variant of [ListAuthConnectionsResponseAuthConnectionsItem](#listauthconnectionsresponseauthconnectionsitem) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_type` | Literal<'api_integration_oauth2_auth_code'> | no | `'api_integration_oauth2_auth_code'` |  |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `token_url` | str | **yes** | **required** |  |
| `scopes` | Optional<Array<str>> | no | `nil` |  |
| `scope_separator` | Optional<[ApiIntegrationOAuth2AuthCodeResponseScopeSeparator](#apiintegrationoauth2authcoderesponsescopeseparator)> | no | `nil` |  |
| `expires_at` | str | **yes** | **required** |  |
| `integration_id` | str | **yes** | **required** |  |
| `credential_id` | str | **yes** | **required** |  |
| `status` | Optional<[OAuthConnectionStatus](#oauthconnectionstatus)> | no | `nil` |  |
| `status_detail` | Optional<str> | no | `nil` |  |
| `status_updated_at` | Optional<str> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### ListAuthConnectionsResponseAuthConnectionsItem_BasicAuth

Variant of [ListAuthConnectionsResponseAuthConnectionsItem](#listauthconnectionsresponseauthconnectionsitem) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_type` | Literal<'basic_auth'> | no | `'basic_auth'` |  |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `username` | str | **yes** | **required** |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### ListAuthConnectionsResponseAuthConnectionsItem_BearerAuth

Variant of [ListAuthConnectionsResponseAuthConnectionsItem](#listauthconnectionsresponseauthconnectionsitem) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_type` | Literal<'bearer_auth'> | no | `'bearer_auth'` |  |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### ListAuthConnectionsResponseAuthConnectionsItem_CustomHeaderAuth

Variant of [ListAuthConnectionsResponseAuthConnectionsItem](#listauthconnectionsresponseauthconnectionsitem) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_type` | Literal<'custom_header_auth'> | no | `'custom_header_auth'` |  |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `header_name` | str | **yes** | **required** |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### ListAuthConnectionsResponseAuthConnectionsItem_Mtls

Variant of [ListAuthConnectionsResponseAuthConnectionsItem](#listauthconnectionsresponseauthconnectionsitem) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_type` | Literal<'mtls'> | no | `'mtls'` |  |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### ListAuthConnectionsResponseAuthConnectionsItem_Oauth2ClientCredentials

Variant of [ListAuthConnectionsResponseAuthConnectionsItem](#listauthconnectionsresponseauthconnectionsitem) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_type` | Literal<'oauth2_client_credentials'> | no | `'oauth2_client_credentials'` |  |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `client_id` | str | **yes** | **required** |  |
| `token_url` | str | **yes** | **required** |  |
| `scopes` | Optional<Array<str>> | no | `nil` |  |
| `extra_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `basic_auth_in_header` | Optional<bool> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### ListAuthConnectionsResponseAuthConnectionsItem_Oauth2Jwt

Variant of [ListAuthConnectionsResponseAuthConnectionsItem](#listauthconnectionsresponseauthconnectionsitem) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_type` | Literal<'oauth2_jwt'> | no | `'oauth2_jwt'` |  |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `algorithm` | Optional<[OAuth2JwtResponseAlgorithm](#oauth2jwtresponsealgorithm)> | no | `nil` |  |
| `key_id` | Optional<str> | no | `nil` |  |
| `issuer` | str | **yes** | **required** |  |
| `audience` | str | **yes** | **required** |  |
| `subject` | str | **yes** | **required** |  |
| `expiration_seconds` | Optional<int> | no | `nil` |  |
| `extra_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `token_url` | str | **yes** | **required** |  |
| `scopes` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### ListAuthConnectionsResponseAuthConnectionsItem_PrivateKeyJwt

Variant of [ListAuthConnectionsResponseAuthConnectionsItem](#listauthconnectionsresponseauthconnectionsitem) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_type` | Literal<'private_key_jwt'> | no | `'private_key_jwt'` |  |
| `name` | str | **yes** | **required** |  |
| `provider` | str | **yes** | **required** |  |
| `algorithm` | Optional<[PrivateKeyJwtResponseAlgorithm](#privatekeyjwtresponsealgorithm)> | no | `nil` |  |
| `key_id` | Optional<str> | no | `nil` |  |
| `issuer` | str | **yes** | **required** |  |
| `audience` | str | **yes** | **required** |  |
| `subject` | str | **yes** | **required** |  |
| `expiration_seconds` | Optional<int> | no | `nil` |  |
| `extra_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### ListAuthConnectionsResponseAuthConnectionsItem_WhatsappAuth

Variant of [ListAuthConnectionsResponseAuthConnectionsItem](#listauthconnectionsresponseauthconnectionsitem) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `auth_type` | Literal<'whatsapp_auth'> | no | `'whatsapp_auth'` |  |
| `name` | str | **yes** | **required** |  |
| `provider` | Optional<Literal<'whatsapp'>> | no | `nil` |  |
| `phone_number_id` | str | **yes** | **required** |  |
| `id` | str | **yes** | **required** |  |
| `used_by` | Optional<[AuthConnectionDependencies](#authconnectiondependencies)> | no | `nil` |  |

### McpServerResponseModelDependentAgentsItem_Available

Variant of [McpServerResponseModelDependentAgentsItem](#mcpserverresponsemodeldependentagentsitem) with `type: 'available'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'available'> | no | `'available'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |
| `name` | str | **yes** | **required** |  |
| `created_at_unix_secs` | int | **yes** | **required** |  |
| `access_level` | [DependentAvailableAgentIdentifierAccessLevel](#dependentavailableagentidentifieraccesslevel) | **yes** | **required** |  |

### McpServerResponseModelDependentAgentsItem_Unknown

Variant of [McpServerResponseModelDependentAgentsItem](#mcpserverresponsemodeldependentagentsitem) with `type: 'unknown'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unknown'> | no | `'unknown'` |  |
| `referenced_resource_ids` | Optional<Array<str>> | no | `nil` |  |
| `id` | str | **yes** | **required** |  |

### McpToolConfigOverrideInputInputOverridesValue_Constant

Variant of [McpToolConfigOverrideInputInputOverridesValue](#mcptoolconfigoverrideinputinputoverridesvalue) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | Literal<'constant'> | no | `'constant'` |  |
| `constant_value` | ConstantSchemaOverrideConstantValue | **yes** | **required** |  |

### McpToolConfigOverrideInputInputOverridesValue_DynamicVariable

Variant of [McpToolConfigOverrideInputInputOverridesValue](#mcptoolconfigoverrideinputinputoverridesvalue) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | Literal<'dynamic_variable'> | no | `'dynamic_variable'` |  |
| `dynamic_variable` | str | **yes** | **required** |  |

### McpToolConfigOverrideInputInputOverridesValue_Llm

Variant of [McpToolConfigOverrideInputInputOverridesValue](#mcptoolconfigoverrideinputinputoverridesvalue) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | Literal<'llm'> | no | `'llm'` |  |
| `prompt` | Optional<str> | no | `nil` |  |

### McpToolConfigOverrideOutputInputOverridesValue_Constant

Variant of [McpToolConfigOverrideOutputInputOverridesValue](#mcptoolconfigoverrideoutputinputoverridesvalue) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | Literal<'constant'> | no | `'constant'` |  |
| `constant_value` | ConstantSchemaOverrideConstantValue | **yes** | **required** |  |

### McpToolConfigOverrideOutputInputOverridesValue_DynamicVariable

Variant of [McpToolConfigOverrideOutputInputOverridesValue](#mcptoolconfigoverrideoutputinputoverridesvalue) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | Literal<'dynamic_variable'> | no | `'dynamic_variable'` |  |
| `dynamic_variable` | str | **yes** | **required** |  |

### McpToolConfigOverrideOutputInputOverridesValue_Llm

Variant of [McpToolConfigOverrideOutputInputOverridesValue](#mcptoolconfigoverrideoutputinputoverridesvalue) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source` | Literal<'llm'> | no | `'llm'` |  |
| `prompt` | Optional<str> | no | `nil` |  |

### PhoneNumberTransferCustomSipHeadersItem_Dynamic

Variant of [PhoneNumberTransferCustomSipHeadersItem](#phonenumbertransfercustomsipheadersitem) with `type: 'dynamic'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'dynamic'> | no | `'dynamic'` |  |
| `key` | str | **yes** | **required** |  |
| `value` | str | **yes** | **required** |  |

### PhoneNumberTransferCustomSipHeadersItem_Static

Variant of [PhoneNumberTransferCustomSipHeadersItem](#phonenumbertransfercustomsipheadersitem) with `type: 'static'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'static'> | no | `'static'` |  |
| `key` | str | **yes** | **required** |  |
| `value` | str | **yes** | **required** |  |

### PhoneNumberTransferPostDialDigits_Dynamic

Variant of [PhoneNumberTransferPostDialDigits](#phonenumbertransferpostdialdigits) with `type: 'dynamic'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'dynamic'> | no | `'dynamic'` |  |
| `value` | str | **yes** | **required** |  |

### PhoneNumberTransferPostDialDigits_Static

Variant of [PhoneNumberTransferPostDialDigits](#phonenumbertransferpostdialdigits) with `type: 'static'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'static'> | no | `'static'` |  |
| `value` | str | **yes** | **required** |  |

### PhoneNumberTransferTransferDestination_Phone

Variant of [PhoneNumberTransferTransferDestination](#phonenumbertransfertransferdestination) with `type: 'phone'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'phone'> | no | `'phone'` |  |
| `phone_number` | str | **yes** | **required** |  |

### PhoneNumberTransferTransferDestination_PhoneDynamicVariable

Variant of [PhoneNumberTransferTransferDestination](#phonenumbertransfertransferdestination) with `type: 'phone_dynamic_variable'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'phone_dynamic_variable'> | no | `'phone_dynamic_variable'` |  |
| `phone_number` | str | **yes** | **required** |  |

### PhoneNumberTransferTransferDestination_SipUri

Variant of [PhoneNumberTransferTransferDestination](#phonenumbertransfertransferdestination) with `type: 'sip_uri'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'sip_uri'> | no | `'sip_uri'` |  |
| `sip_uri` | str | **yes** | **required** |  |

### PhoneNumberTransferTransferDestination_SipUriDynamicVariable

Variant of [PhoneNumberTransferTransferDestination](#phonenumbertransfertransferdestination) with `type: 'sip_uri_dynamic_variable'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'sip_uri_dynamic_variable'> | no | `'sip_uri_dynamic_variable'` |  |
| `sip_uri` | str | **yes** | **required** |  |

### ProjectExtendedResponseModelAssetsItem_Audio

Variant of [ProjectExtendedResponseModelAssetsItem](#projectextendedresponsemodelassetsitem) with `type: 'audio'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'audio'> | no | `'audio'` |  |
| `external_audio_id` | str | **yes** | **required** |  |
| `filename` | str | **yes** | **required** |  |
| `signed_url` | Optional<str> | no | `nil` |  |
| `offset_ms` | int | **yes** | **required** |  |
| `duration_ms` | int | **yes** | **required** |  |
| `start_time_ms` | int | **yes** | **required** |  |
| `end_time_ms` | int | **yes** | **required** |  |
| `order` | str | **yes** | **required** |  |
| `track_id` | str | **yes** | **required** |  |
| `created_at_ms` | int | **yes** | **required** |  |
| `updated_at_ms` | int | **yes** | **required** |  |
| `volume_gain_db` | Optional<float> | no | `nil` |  |
| `muted` | Optional<bool> | no | `nil` |  |
| `fade_in_ms` | Optional<int> | no | `nil` |  |
| `fade_out_ms` | Optional<int> | no | `nil` |  |
| `source_external_audio_id` | Optional<str> | no | `nil` |  |
| `source_asset_id` | Optional<str> | no | `nil` |  |
| `pending_block_ids` | Array<str> | **yes** | **required** |  |
| `pending_external_audio_ids` | Array<str> | **yes** | **required** |  |
| `speech_imported` | Optional<bool> | no | `nil` |  |
| `pending_task` | Optional<[PendingClipTask](#pendingcliptask)> | no | `nil` |  |
| `error` | Optional<str> | no | `nil` |  |
| `current_snapshot_id` | Optional<str> | no | `nil` |  |
| `source_context` | Optional<[ProjectExternalAudioResponseModelSourceContext](#projectexternalaudioresponsemodelsourcecontext)> | no | `nil` |  |
| `analysis` | Optional<[AudioAnalysis](#audioanalysis)> | no | `nil` |  |
| `import_speech_progress` | Optional<float> | no | `nil` |  |

### ProjectExtendedResponseModelAssetsItem_Image

Variant of [ProjectExtendedResponseModelAssetsItem](#projectextendedresponsemodelassetsitem) with `type: 'image'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'image'> | no | `'image'` |  |
| `image_id` | str | **yes** | **required** |  |
| `filename` | str | **yes** | **required** |  |
| `signed_url` | str | **yes** | **required** |  |
| `thumbnail_signed_url` | str | **yes** | **required** |  |
| `source` | Optional<Literal<'upload'>> | no | `nil` |  |
| `file_size_bytes` | int | **yes** | **required** |  |
| `width` | int | **yes** | **required** |  |
| `height` | int | **yes** | **required** |  |
| `track_id` | Optional<str> | no | `nil` |  |
| `offset_ms` | int | **yes** | **required** |  |
| `duration_ms` | int | **yes** | **required** |  |
| `order` | str | **yes** | **required** |  |
| `canvas_placement` | [CanvasPlacement](#canvasplacement) | **yes** | **required** |  |
| `animation` | Optional<[ClipAnimation](#clipanimation)> | no | `nil` |  |
| `opacity` | Optional<float> | no | `nil` |  |
| `created_at_ms` | int | **yes** | **required** |  |
| `updated_at_ms` | int | **yes** | **required** |  |
| `current_snapshot_id` | Optional<str> | no | `nil` |  |
| `source_asset_id` | Optional<str> | no | `nil` |  |

### ProjectExtendedResponseModelAssetsItem_Video

Variant of [ProjectExtendedResponseModelAssetsItem](#projectextendedresponsemodelassetsitem) with `type: 'video'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'video'> | no | `'video'` |  |
| `video_id` | str | **yes** | **required** |  |
| `filename` | str | **yes** | **required** |  |
| `signed_url` | Optional<str> | no | `nil` |  |
| `signed_preview_url` | Optional<str> | no | `nil` |  |
| `offset_ms` | int | **yes** | **required** |  |
| `duration_ms` | int | **yes** | **required** |  |
| `volume_gain_db` | float | **yes** | **required** |  |
| `muted` | bool | **yes** | **required** |  |
| `fade_in_ms` | Optional<int> | no | `nil` |  |
| `fade_out_ms` | Optional<int> | no | `nil` |  |
| `width` | int | **yes** | **required** |  |
| `height` | int | **yes** | **required** |  |
| `codec` | str | **yes** | **required** |  |
| `order` | str | **yes** | **required** |  |
| `created_at_ms` | int | **yes** | **required** |  |
| `updated_at_ms` | int | **yes** | **required** |  |
| `error` | Optional<str> | no | `nil` |  |
| `thumbnail_interval_seconds` | float | **yes** | **required** |  |
| `thumbnail_size` | Array<int> | **yes** | **required** |  |
| `thumbnail_sheets` | Array<[ProjectVideoThumbnailSheetResponseModel](#projectvideothumbnailsheetresponsemodel)> | **yes** | **required** |  |
| `start_time_ms` | int | **yes** | **required** |  |
| `end_time_ms` | int | **yes** | **required** |  |
| `asset_preview_signed_url` | Optional<str> | no | `nil` |  |
| `source_video_id` | Optional<str> | no | `nil` |  |
| `source_asset_id` | Optional<str> | no | `nil` |  |
| `pending_block_ids` | Array<str> | **yes** | **required** |  |
| `pending_external_audio_ids` | Array<str> | **yes** | **required** |  |
| `speech_imported` | Optional<bool> | no | `nil` |  |
| `pending_task` | Optional<[PendingClipTask](#pendingcliptask)> | no | `nil` |  |
| `audio_track_ready` | Optional<bool> | no | `nil` |  |
| `export_format_ready` | Optional<bool> | no | `nil` |  |
| `current_snapshot_id` | Optional<str> | no | `nil` |  |
| `source_context` | Optional<[GenerationSourceContext](#generationsourcecontext)> | no | `nil` |  |
| `analysis` | Optional<[VideoAnalysis](#videoanalysis)> | no | `nil` |  |
| `canvas_placement` | Optional<[CanvasPlacement](#canvasplacement)> | no | `nil` |  |
| `animation` | Optional<[ClipAnimation](#clipanimation)> | no | `nil` |  |
| `playback_speed` | Optional<float> | no | `nil` |  |
| `opacity` | Optional<float> | no | `nil` |  |
| `track_id` | Optional<str> | no | `nil` |  |
| `preview_job_progress` | Optional<float> | no | `nil` |  |
| `import_speech_progress` | Optional<float> | no | `nil` |  |

### ProjectExternalAudioResponseModelSourceContext_MusicExploreSong

Variant of [ProjectExternalAudioResponseModelSourceContext](#projectexternalaudioresponsemodelsourcecontext) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source_type` | Literal<'music_explore_song'> | no | `'music_explore_song'` |  |
| `music_explore_song_id` | str | **yes** | **required** |  |
| `title` | Optional<str> | no | `nil` |  |
| `description` | Optional<str> | no | `nil` |  |
| `bpm` | Optional<int> | no | `nil` |  |
| `vocals` | Optional<str> | no | `nil` |  |
| `lyrics` | Optional<str> | no | `nil` |  |

### ProjectExternalAudioResponseModelSourceContext_Sfx

Variant of [ProjectExternalAudioResponseModelSourceContext](#projectexternalaudioresponsemodelsourcecontext) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source_type` | Literal<'sfx'> | no | `'sfx'` |  |
| `sound_generation_history_item_id` | Optional<str> | no | `nil` |  |
| `text` | Optional<str> | no | `nil` |  |
| `generation_config` | Optional<Hash<str, Any>> | no | `nil` |  |

### ProjectExternalAudioResponseModelSourceContext_Song

Variant of [ProjectExternalAudioResponseModelSourceContext](#projectexternalaudioresponsemodelsourcecontext) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `source_type` | Literal<'song'> | no | `'song'` |  |
| `song_id` | str | **yes** | **required** |  |
| `title` | Optional<str> | no | `nil` |  |
| `description` | Optional<str> | no | `nil` |  |
| `genres` | Optional<Array<str>> | no | `nil` |  |
| `languages` | Optional<Array<str>> | no | `nil` |  |
| `is_explicit` | Optional<bool> | no | `nil` |  |
| `bpm` | Optional<int> | no | `nil` |  |
| `generation_settings` | Optional<Hash<str, Any>> | no | `nil` |  |

### PromptAgentApiModelInputBackupLlmConfig_Default

Variant of [PromptAgentApiModelInputBackupLlmConfig](#promptagentapimodelinputbackupllmconfig) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `preference` | Literal<'default'> | no | `'default'` |  |

### PromptAgentApiModelInputBackupLlmConfig_Disabled

Variant of [PromptAgentApiModelInputBackupLlmConfig](#promptagentapimodelinputbackupllmconfig) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `preference` | Literal<'disabled'> | no | `'disabled'` |  |

### PromptAgentApiModelInputBackupLlmConfig_Override

Variant of [PromptAgentApiModelInputBackupLlmConfig](#promptagentapimodelinputbackupllmconfig) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `preference` | Literal<'override'> | no | `'override'` |  |
| `order` | Array<[Llm](#llm)> | **yes** | **required** |  |

### PromptAgentApiModelInputToolsItem_ApiIntegrationWebhook

Variant of [PromptAgentApiModelInputToolsItem](#promptagentapimodelinputtoolsitem) with `type: 'api_integration_webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'api_integration_webhook'> | no | `'api_integration_webhook'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigInput](#dynamicvariablesconfiginput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |
| `tool_version` | Optional<str> | no | `nil` |  |
| `api_integration_id` | str | **yes** | **required** |  |
| `api_integration_connection_id` | str | **yes** | **required** |  |
| `api_schema_overrides` | Optional<[ApiIntegrationWebhookOverrides](#apiintegrationwebhookoverrides)> | no | `nil` |  |

### PromptAgentApiModelInputToolsItem_Client

Variant of [PromptAgentApiModelInputToolsItem](#promptagentapimodelinputtoolsitem) with `type: 'client'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'client'> | no | `'client'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `parameters` | Optional<'[ObjectJsonSchemaPropertyInput](#objectjsonschemapropertyinput)'> | no | `nil` |  |
| `expects_response` | Optional<bool> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigInput](#dynamicvariablesconfiginput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |

### PromptAgentApiModelInputToolsItem_Mcp

Variant of [PromptAgentApiModelInputToolsItem](#promptagentapimodelinputtoolsitem) with `type: 'mcp'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | Any | **yes** | **required** |  |
| `type` | Literal<'mcp'> | no | `'mcp'` |  |

### PromptAgentApiModelInputToolsItem_Smb

Variant of [PromptAgentApiModelInputToolsItem](#promptagentapimodelinputtoolsitem) with `type: 'smb'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | Any | **yes** | **required** |  |
| `type` | Literal<'smb'> | no | `'smb'` |  |

### PromptAgentApiModelInputToolsItem_System

Variant of [PromptAgentApiModelInputToolsItem](#promptagentapimodelinputtoolsitem) with `type: 'system'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'system'> | no | `'system'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `params` | [SystemToolConfigInputParams](#systemtoolconfiginputparams) | **yes** | **required** |  |

### PromptAgentApiModelInputToolsItem_Webhook

Variant of [PromptAgentApiModelInputToolsItem](#promptagentapimodelinputtoolsitem) with `type: 'webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'webhook'> | no | `'webhook'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigInput](#dynamicvariablesconfiginput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |
| `api_schema` | [WebhookToolApiSchemaConfigInput](#webhooktoolapischemaconfiginput) | **yes** | **required** |  |

### PromptAgentApiModelOutputBackupLlmConfig_Default

Variant of [PromptAgentApiModelOutputBackupLlmConfig](#promptagentapimodeloutputbackupllmconfig) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `preference` | Literal<'default'> | no | `'default'` |  |

### PromptAgentApiModelOutputBackupLlmConfig_Disabled

Variant of [PromptAgentApiModelOutputBackupLlmConfig](#promptagentapimodeloutputbackupllmconfig) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `preference` | Literal<'disabled'> | no | `'disabled'` |  |

### PromptAgentApiModelOutputBackupLlmConfig_Override

Variant of [PromptAgentApiModelOutputBackupLlmConfig](#promptagentapimodeloutputbackupllmconfig) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `preference` | Literal<'override'> | no | `'override'` |  |
| `order` | Array<[Llm](#llm)> | **yes** | **required** |  |

### PromptAgentApiModelOutputToolsItem_ApiIntegrationWebhook

Variant of [PromptAgentApiModelOutputToolsItem](#promptagentapimodeloutputtoolsitem) with `type: 'api_integration_webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'api_integration_webhook'> | no | `'api_integration_webhook'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | int | **yes** | **required** |  |
| `disable_interruptions` | bool | **yes** | **required** |  |
| `force_pre_tool_speech` | bool | **yes** | **required** |  |
| `assignments` | Array<[DynamicVariableAssignment](#dynamicvariableassignment)> | **yes** | **required** |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | [ToolCallSoundBehavior](#toolcallsoundbehavior) | **yes** | **required** |  |
| `tool_error_handling_mode` | [ToolErrorHandlingMode](#toolerrorhandlingmode) | **yes** | **required** |  |
| `dynamic_variables` | [DynamicVariablesConfigOutput](#dynamicvariablesconfigoutput) | **yes** | **required** |  |
| `execution_mode` | [ToolExecutionMode](#toolexecutionmode) | **yes** | **required** |  |
| `tool_version` | str | **yes** | **required** |  |
| `api_integration_id` | str | **yes** | **required** |  |
| `api_integration_connection_id` | str | **yes** | **required** |  |
| `api_schema_overrides` | Optional<[ApiIntegrationWebhookOverrides](#apiintegrationwebhookoverrides)> | no | `nil` |  |

### PromptAgentApiModelOutputToolsItem_Client

Variant of [PromptAgentApiModelOutputToolsItem](#promptagentapimodeloutputtoolsitem) with `type: 'client'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'client'> | no | `'client'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `parameters` | Optional<'[ObjectJsonSchemaPropertyOutput](#objectjsonschemapropertyoutput)'> | no | `nil` |  |
| `expects_response` | Optional<bool> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigOutput](#dynamicvariablesconfigoutput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |

### PromptAgentApiModelOutputToolsItem_Mcp

Variant of [PromptAgentApiModelOutputToolsItem](#promptagentapimodeloutputtoolsitem) with `type: 'mcp'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | Any | **yes** | **required** |  |
| `type` | Literal<'mcp'> | no | `'mcp'` |  |

### PromptAgentApiModelOutputToolsItem_Smb

Variant of [PromptAgentApiModelOutputToolsItem](#promptagentapimodeloutputtoolsitem) with `type: 'smb'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | Any | **yes** | **required** |  |
| `type` | Literal<'smb'> | no | `'smb'` |  |

### PromptAgentApiModelOutputToolsItem_System

Variant of [PromptAgentApiModelOutputToolsItem](#promptagentapimodeloutputtoolsitem) with `type: 'system'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'system'> | no | `'system'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `params` | [SystemToolConfigOutputParams](#systemtoolconfigoutputparams) | **yes** | **required** |  |

### PromptAgentApiModelOutputToolsItem_Webhook

Variant of [PromptAgentApiModelOutputToolsItem](#promptagentapimodeloutputtoolsitem) with `type: 'webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'webhook'> | no | `'webhook'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigOutput](#dynamicvariablesconfigoutput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |
| `api_schema` | [WebhookToolApiSchemaConfigOutput](#webhooktoolapischemaconfigoutput) | **yes** | **required** |  |

### PromptAgentApiModelWorkflowOverrideInputToolsItem_ApiIntegrationWebhook

Variant of [PromptAgentApiModelWorkflowOverrideInputToolsItem](#promptagentapimodelworkflowoverrideinputtoolsitem) with `type: 'api_integration_webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'api_integration_webhook'> | no | `'api_integration_webhook'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigInput](#dynamicvariablesconfiginput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |
| `tool_version` | Optional<str> | no | `nil` |  |
| `api_integration_id` | str | **yes** | **required** |  |
| `api_integration_connection_id` | str | **yes** | **required** |  |
| `api_schema_overrides` | Optional<[ApiIntegrationWebhookOverrides](#apiintegrationwebhookoverrides)> | no | `nil` |  |

### PromptAgentApiModelWorkflowOverrideInputToolsItem_Client

Variant of [PromptAgentApiModelWorkflowOverrideInputToolsItem](#promptagentapimodelworkflowoverrideinputtoolsitem) with `type: 'client'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'client'> | no | `'client'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `parameters` | Optional<'[ObjectJsonSchemaPropertyInput](#objectjsonschemapropertyinput)'> | no | `nil` |  |
| `expects_response` | Optional<bool> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigInput](#dynamicvariablesconfiginput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |

### PromptAgentApiModelWorkflowOverrideInputToolsItem_Mcp

Variant of [PromptAgentApiModelWorkflowOverrideInputToolsItem](#promptagentapimodelworkflowoverrideinputtoolsitem) with `type: 'mcp'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | Any | **yes** | **required** |  |
| `type` | Literal<'mcp'> | no | `'mcp'` |  |

### PromptAgentApiModelWorkflowOverrideInputToolsItem_Smb

Variant of [PromptAgentApiModelWorkflowOverrideInputToolsItem](#promptagentapimodelworkflowoverrideinputtoolsitem) with `type: 'smb'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | Any | **yes** | **required** |  |
| `type` | Literal<'smb'> | no | `'smb'` |  |

### PromptAgentApiModelWorkflowOverrideInputToolsItem_System

Variant of [PromptAgentApiModelWorkflowOverrideInputToolsItem](#promptagentapimodelworkflowoverrideinputtoolsitem) with `type: 'system'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'system'> | no | `'system'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `params` | [SystemToolConfigInputParams](#systemtoolconfiginputparams) | **yes** | **required** |  |

### PromptAgentApiModelWorkflowOverrideInputToolsItem_Webhook

Variant of [PromptAgentApiModelWorkflowOverrideInputToolsItem](#promptagentapimodelworkflowoverrideinputtoolsitem) with `type: 'webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'webhook'> | no | `'webhook'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigInput](#dynamicvariablesconfiginput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |
| `api_schema` | [WebhookToolApiSchemaConfigInput](#webhooktoolapischemaconfiginput) | **yes** | **required** |  |

### PromptAgentApiModelWorkflowOverrideOutputToolsItem_ApiIntegrationWebhook

Variant of [PromptAgentApiModelWorkflowOverrideOutputToolsItem](#promptagentapimodelworkflowoverrideoutputtoolsitem) with `type: 'api_integration_webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'api_integration_webhook'> | no | `'api_integration_webhook'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | int | **yes** | **required** |  |
| `disable_interruptions` | bool | **yes** | **required** |  |
| `force_pre_tool_speech` | bool | **yes** | **required** |  |
| `assignments` | Array<[DynamicVariableAssignment](#dynamicvariableassignment)> | **yes** | **required** |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | [ToolCallSoundBehavior](#toolcallsoundbehavior) | **yes** | **required** |  |
| `tool_error_handling_mode` | [ToolErrorHandlingMode](#toolerrorhandlingmode) | **yes** | **required** |  |
| `dynamic_variables` | [DynamicVariablesConfigOutput](#dynamicvariablesconfigoutput) | **yes** | **required** |  |
| `execution_mode` | [ToolExecutionMode](#toolexecutionmode) | **yes** | **required** |  |
| `tool_version` | str | **yes** | **required** |  |
| `api_integration_id` | str | **yes** | **required** |  |
| `api_integration_connection_id` | str | **yes** | **required** |  |
| `api_schema_overrides` | Optional<[ApiIntegrationWebhookOverrides](#apiintegrationwebhookoverrides)> | no | `nil` |  |

### PromptAgentApiModelWorkflowOverrideOutputToolsItem_Client

Variant of [PromptAgentApiModelWorkflowOverrideOutputToolsItem](#promptagentapimodelworkflowoverrideoutputtoolsitem) with `type: 'client'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'client'> | no | `'client'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `parameters` | Optional<'[ObjectJsonSchemaPropertyOutput](#objectjsonschemapropertyoutput)'> | no | `nil` |  |
| `expects_response` | Optional<bool> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigOutput](#dynamicvariablesconfigoutput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |

### PromptAgentApiModelWorkflowOverrideOutputToolsItem_Mcp

Variant of [PromptAgentApiModelWorkflowOverrideOutputToolsItem](#promptagentapimodelworkflowoverrideoutputtoolsitem) with `type: 'mcp'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | Any | **yes** | **required** |  |
| `type` | Literal<'mcp'> | no | `'mcp'` |  |

### PromptAgentApiModelWorkflowOverrideOutputToolsItem_Smb

Variant of [PromptAgentApiModelWorkflowOverrideOutputToolsItem](#promptagentapimodelworkflowoverrideoutputtoolsitem) with `type: 'smb'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | Any | **yes** | **required** |  |
| `type` | Literal<'smb'> | no | `'smb'` |  |

### PromptAgentApiModelWorkflowOverrideOutputToolsItem_System

Variant of [PromptAgentApiModelWorkflowOverrideOutputToolsItem](#promptagentapimodelworkflowoverrideoutputtoolsitem) with `type: 'system'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'system'> | no | `'system'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `params` | [SystemToolConfigOutputParams](#systemtoolconfigoutputparams) | **yes** | **required** |  |

### PromptAgentApiModelWorkflowOverrideOutputToolsItem_Webhook

Variant of [PromptAgentApiModelWorkflowOverrideOutputToolsItem](#promptagentapimodelworkflowoverrideoutputtoolsitem) with `type: 'webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'webhook'> | no | `'webhook'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigOutput](#dynamicvariablesconfigoutput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |
| `api_schema` | [WebhookToolApiSchemaConfigOutput](#webhooktoolapischemaconfigoutput) | **yes** | **required** |  |

### SystemToolConfigInputParams_EndCall

Variant of [SystemToolConfigInputParams](#systemtoolconfiginputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'end_call'> | no | `'end_call'` |  |

### SystemToolConfigInputParams_LanguageDetection

Variant of [SystemToolConfigInputParams](#systemtoolconfiginputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'language_detection'> | no | `'language_detection'` |  |

### SystemToolConfigInputParams_PlayKeypadTouchTone

Variant of [SystemToolConfigInputParams](#systemtoolconfiginputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'play_keypad_touch_tone'> | no | `'play_keypad_touch_tone'` |  |
| `use_out_of_band_dtmf` | Optional<bool> | no | `nil` |  |
| `suppress_turn_after_dtmf` | Optional<bool> | no | `nil` |  |

### SystemToolConfigInputParams_SkipTurn

Variant of [SystemToolConfigInputParams](#systemtoolconfiginputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'skip_turn'> | no | `'skip_turn'` |  |

### SystemToolConfigInputParams_TransferToAgent

Variant of [SystemToolConfigInputParams](#systemtoolconfiginputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'transfer_to_agent'> | no | `'transfer_to_agent'` |  |
| `transfers` | Array<[AgentTransfer](#agenttransfer)> | **yes** | **required** |  |

### SystemToolConfigInputParams_TransferToNumber

Variant of [SystemToolConfigInputParams](#systemtoolconfiginputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'transfer_to_number'> | no | `'transfer_to_number'` |  |
| `transfers` | Array<[PhoneNumberTransfer](#phonenumbertransfer)> | **yes** | **required** |  |
| `enable_client_message` | Optional<bool> | no | `nil` |  |

### SystemToolConfigInputParams_VoicemailDetection

Variant of [SystemToolConfigInputParams](#systemtoolconfiginputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'voicemail_detection'> | no | `'voicemail_detection'` |  |
| `voicemail_message` | Optional<str> | no | `nil` |  |

### SystemToolConfigOutputParams_EndCall

Variant of [SystemToolConfigOutputParams](#systemtoolconfigoutputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'end_call'> | no | `'end_call'` |  |

### SystemToolConfigOutputParams_LanguageDetection

Variant of [SystemToolConfigOutputParams](#systemtoolconfigoutputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'language_detection'> | no | `'language_detection'` |  |

### SystemToolConfigOutputParams_PlayKeypadTouchTone

Variant of [SystemToolConfigOutputParams](#systemtoolconfigoutputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'play_keypad_touch_tone'> | no | `'play_keypad_touch_tone'` |  |
| `use_out_of_band_dtmf` | Optional<bool> | no | `nil` |  |
| `suppress_turn_after_dtmf` | Optional<bool> | no | `nil` |  |

### SystemToolConfigOutputParams_SkipTurn

Variant of [SystemToolConfigOutputParams](#systemtoolconfigoutputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'skip_turn'> | no | `'skip_turn'` |  |

### SystemToolConfigOutputParams_TransferToAgent

Variant of [SystemToolConfigOutputParams](#systemtoolconfigoutputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'transfer_to_agent'> | no | `'transfer_to_agent'` |  |
| `transfers` | Array<[AgentTransfer](#agenttransfer)> | **yes** | **required** |  |

### SystemToolConfigOutputParams_TransferToNumber

Variant of [SystemToolConfigOutputParams](#systemtoolconfigoutputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'transfer_to_number'> | no | `'transfer_to_number'` |  |
| `transfers` | Array<[PhoneNumberTransfer](#phonenumbertransfer)> | **yes** | **required** |  |
| `enable_client_message` | Optional<bool> | no | `nil` |  |

### SystemToolConfigOutputParams_VoicemailDetection

Variant of [SystemToolConfigOutputParams](#systemtoolconfigoutputparams) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `system_tool_type` | Literal<'voicemail_detection'> | no | `'voicemail_detection'` |  |
| `voicemail_message` | Optional<str> | no | `nil` |  |

### ToolExecutionResponseModelToolCallDetails_ApiIntegrationWebhook

Variant of [ToolExecutionResponseModelToolCallDetails](#toolexecutionresponsemodeltoolcalldetails) with `type: 'api_integration_webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'api_integration_webhook'> | no | `'api_integration_webhook'` |  |
| `integration_id` | str | **yes** | **required** |  |
| `credential_id` | str | **yes** | **required** |  |
| `integration_connection_id` | str | **yes** | **required** |  |
| `webhook_details` | [ConversationHistoryTranscriptToolCallWebhookDetails](#conversationhistorytranscripttoolcallwebhookdetails) | **yes** | **required** |  |

### ToolExecutionResponseModelToolCallDetails_Client

Variant of [ToolExecutionResponseModelToolCallDetails](#toolexecutionresponsemodeltoolcalldetails) with `type: 'client'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'client'> | no | `'client'` |  |
| `parameters` | str | **yes** | **required** |  |

### ToolExecutionResponseModelToolCallDetails_Mcp

Variant of [ToolExecutionResponseModelToolCallDetails](#toolexecutionresponsemodeltoolcalldetails) with `type: 'mcp'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'mcp'> | no | `'mcp'` |  |
| `mcp_server_id` | str | **yes** | **required** |  |
| `mcp_server_name` | str | **yes** | **required** |  |
| `integration_type` | str | **yes** | **required** |  |
| `parameters` | Optional<Hash<str, str>> | no | `nil` |  |
| `approval_policy` | str | **yes** | **required** |  |
| `requires_approval` | Optional<bool> | no | `nil` |  |
| `mcp_tool_name` | Optional<str> | no | `nil` |  |
| `mcp_tool_description` | Optional<str> | no | `nil` |  |

### ToolExecutionResponseModelToolCallDetails_Webhook

Variant of [ToolExecutionResponseModelToolCallDetails](#toolexecutionresponsemodeltoolcalldetails) with `type: 'webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'webhook'> | no | `'webhook'` |  |
| `method` | str | **yes** | **required** |  |
| `url` | str | **yes** | **required** |  |
| `headers` | Optional<Hash<str, str>> | no | `nil` |  |
| `path_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `query_params` | Optional<Hash<str, str>> | no | `nil` |  |
| `body` | Optional<str> | no | `nil` |  |

### ToolRequestModelToolConfig_Client

Variant of [ToolRequestModelToolConfig](#toolrequestmodeltoolconfig) with `type: 'client'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'client'> | no | `'client'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `parameters` | Optional<'[ObjectJsonSchemaPropertyInput](#objectjsonschemapropertyinput)'> | no | `nil` |  |
| `expects_response` | Optional<bool> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigInput](#dynamicvariablesconfiginput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |

### ToolRequestModelToolConfig_Mcp

Variant of [ToolRequestModelToolConfig](#toolrequestmodeltoolconfig) with `type: 'mcp'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | Any | **yes** | **required** |  |
| `type` | Literal<'mcp'> | no | `'mcp'` |  |

### ToolRequestModelToolConfig_System

Variant of [ToolRequestModelToolConfig](#toolrequestmodeltoolconfig) with `type: 'system'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'system'> | no | `'system'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `params` | [SystemToolConfigInputParams](#systemtoolconfiginputparams) | **yes** | **required** |  |

### ToolRequestModelToolConfig_Webhook

Variant of [ToolRequestModelToolConfig](#toolrequestmodeltoolconfig) with `type: 'webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'webhook'> | no | `'webhook'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigInput](#dynamicvariablesconfiginput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |
| `api_schema` | [WebhookToolApiSchemaConfigInput](#webhooktoolapischemaconfiginput) | **yes** | **required** |  |

### ToolResponseModelToolConfig_Client

Variant of [ToolResponseModelToolConfig](#toolresponsemodeltoolconfig) with `type: 'client'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'client'> | no | `'client'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `parameters` | Optional<'[ObjectJsonSchemaPropertyOutput](#objectjsonschemapropertyoutput)'> | no | `nil` |  |
| `expects_response` | Optional<bool> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigOutput](#dynamicvariablesconfigoutput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |

### ToolResponseModelToolConfig_Mcp

Variant of [ToolResponseModelToolConfig](#toolresponsemodeltoolconfig) with `type: 'mcp'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `value` | Any | **yes** | **required** |  |
| `type` | Literal<'mcp'> | no | `'mcp'` |  |

### ToolResponseModelToolConfig_System

Variant of [ToolResponseModelToolConfig](#toolresponsemodeltoolconfig) with `type: 'system'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'system'> | no | `'system'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | Optional<str> | no | `nil` |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `params` | [SystemToolConfigOutputParams](#systemtoolconfigoutputparams) | **yes** | **required** |  |

### ToolResponseModelToolConfig_Webhook

Variant of [ToolResponseModelToolConfig](#toolresponsemodeltoolconfig) with `type: 'webhook'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'webhook'> | no | `'webhook'` |  |
| `name` | str | **yes** | **required** |  |
| `description` | str | **yes** | **required** |  |
| `response_timeout_secs` | Optional<int> | no | `nil` |  |
| `disable_interruptions` | Optional<bool> | no | `nil` |  |
| `force_pre_tool_speech` | Optional<bool> | no | `nil` |  |
| `assignments` | Optional<Array<[DynamicVariableAssignment](#dynamicvariableassignment)>> | no | `nil` |  |
| `tool_call_sound` | Optional<[ToolCallSoundType](#toolcallsoundtype)> | no | `nil` |  |
| `tool_call_sound_behavior` | Optional<[ToolCallSoundBehavior](#toolcallsoundbehavior)> | no | `nil` |  |
| `tool_error_handling_mode` | Optional<[ToolErrorHandlingMode](#toolerrorhandlingmode)> | no | `nil` |  |
| `dynamic_variables` | Optional<[DynamicVariablesConfigOutput](#dynamicvariablesconfigoutput)> | no | `nil` |  |
| `execution_mode` | Optional<[ToolExecutionMode](#toolexecutionmode)> | no | `nil` |  |
| `api_schema` | [WebhookToolApiSchemaConfigOutput](#webhooktoolapischemaconfigoutput) | **yes** | **required** |  |

### TransferToAgentToolResultSuccessModelBranchInfo_DefaultingToMain

Variant of [TransferToAgentToolResultSuccessModelBranchInfo](#transfertoagenttoolresultsuccessmodelbranchinfo) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `branch_reason` | Literal<'defaulting_to_main'> | no | `'defaulting_to_main'` |  |
| `branch_id` | str | **yes** | **required** |  |

### TransferToAgentToolResultSuccessModelBranchInfo_TrafficSplit

Variant of [TransferToAgentToolResultSuccessModelBranchInfo](#transfertoagenttoolresultsuccessmodelbranchinfo) with `type: 'None'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `branch_reason` | Literal<'traffic_split'> | no | `'traffic_split'` |  |
| `branch_id` | str | **yes** | **required** |  |
| `traffic_percentage` | float | **yes** | **required** |  |

### UnitTestRunResponseModelTestInfo_Llm

Variant of [UnitTestRunResponseModelTestInfo](#unittestrunresponsemodeltestinfo) with `type: 'llm'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'llm'> | no | `'llm'` |  |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataOutput](#testfromconversationmetadataoutput)> | no | `nil` |  |
| `dynamic_variables` | Optional<Hash<str, Optional<ResponseUnitTestModelDynamicVariablesValue>>> | no | `nil` |  |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelOutput](#conversationhistorytranscriptcommonmodeloutput)>> | no | `nil` |  |
| `success_condition` | Optional<str> | no | `nil` |  |
| `success_examples` | Optional<Array<[AgentSuccessfulResponseExample](#agentsuccessfulresponseexample)>> | no | `nil` |  |
| `failure_examples` | Optional<Array<[AgentFailureResponseExample](#agentfailureresponseexample)>> | no | `nil` |  |

### UnitTestRunResponseModelTestInfo_Simulation

Variant of [UnitTestRunResponseModelTestInfo](#unittestrunresponsemodeltestinfo) with `type: 'simulation'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'simulation'> | no | `'simulation'` |  |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataOutput](#testfromconversationmetadataoutput)> | no | `nil` |  |
| `dynamic_variables` | Optional<Hash<str, Optional<SimulationTestModelDynamicVariablesValue>>> | no | `nil` |  |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelOutput](#conversationhistorytranscriptcommonmodeloutput)>> | no | `nil` |  |
| `success_condition` | Optional<str> | no | `nil` |  |
| `simulation_scenario` | Optional<str> | no | `nil` |  |
| `simulation_max_turns` | Optional<int> | no | `nil` |  |
| `simulation_environment` | Optional<str> | no | `nil` |  |
| `tool_mock_config` | Optional<[SimulationToolMockBehaviorConfig](#simulationtoolmockbehaviorconfig)> | no | `nil` |  |

### UnitTestRunResponseModelTestInfo_Tool

Variant of [UnitTestRunResponseModelTestInfo](#unittestrunresponsemodeltestinfo) with `type: 'tool'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'tool'> | no | `'tool'` |  |
| `from_conversation_metadata` | Optional<[TestFromConversationMetadataOutput](#testfromconversationmetadataoutput)> | no | `nil` |  |
| `dynamic_variables` | Optional<Hash<str, Optional<ToolCallUnitTestModelDynamicVariablesValue>>> | no | `nil` |  |
| `chat_history` | Optional<Array<[ConversationHistoryTranscriptCommonModelOutput](#conversationhistorytranscriptcommonmodeloutput)>> | no | `nil` |  |
| `tool_call_parameters` | Optional<[UnitTestToolCallEvaluationModelOutput](#unittesttoolcallevaluationmodeloutput)> | no | `nil` |  |
| `check_any_tool_matches` | Optional<bool> | no | `nil` |  |

### UnitTestToolCallParameterEval_Anything

Variant of [UnitTestToolCallParameterEval](#unittesttoolcallparametereval) with `type: 'anything'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'anything'> | no | `'anything'` |  |

### UnitTestToolCallParameterEval_Exact

Variant of [UnitTestToolCallParameterEval](#unittesttoolcallparametereval) with `type: 'exact'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'exact'> | no | `'exact'` |  |
| `expected_value` | str | **yes** | **required** |  |

### UnitTestToolCallParameterEval_Llm

Variant of [UnitTestToolCallParameterEval](#unittesttoolcallparametereval) with `type: 'llm'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'llm'> | no | `'llm'` |  |
| `description` | str | **yes** | **required** |  |

### UnitTestToolCallParameterEval_Regex

Variant of [UnitTestToolCallParameterEval](#unittesttoolcallparametereval) with `type: 'regex'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'regex'> | no | `'regex'` |  |
| `pattern` | str | **yes** | **required** |  |

### WhatsAppTemplateHeaderComponentParamsParametersItem_Document

Variant of [WhatsAppTemplateHeaderComponentParamsParametersItem](#whatsapptemplateheadercomponentparamsparametersitem) with `type: 'document'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'document'> | no | `'document'` |  |
| `document` | [WhatsAppTemplateDocumentParamDetails](#whatsapptemplatedocumentparamdetails) | **yes** | **required** |  |

### WhatsAppTemplateHeaderComponentParamsParametersItem_Image

Variant of [WhatsAppTemplateHeaderComponentParamsParametersItem](#whatsapptemplateheadercomponentparamsparametersitem) with `type: 'image'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'image'> | no | `'image'` |  |
| `image` | [WhatsAppTemplateImageParamDetails](#whatsapptemplateimageparamdetails) | **yes** | **required** |  |

### WhatsAppTemplateHeaderComponentParamsParametersItem_Location

Variant of [WhatsAppTemplateHeaderComponentParamsParametersItem](#whatsapptemplateheadercomponentparamsparametersitem) with `type: 'location'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'location'> | no | `'location'` |  |
| `location` | [WhatsAppTemplateLocationParamDetails](#whatsapptemplatelocationparamdetails) | **yes** | **required** |  |

### WhatsAppTemplateHeaderComponentParamsParametersItem_Text

Variant of [WhatsAppTemplateHeaderComponentParamsParametersItem](#whatsapptemplateheadercomponentparamsparametersitem) with `type: 'text'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'text'> | no | `'text'` |  |
| `parameter_name` | Optional<str> | no | `nil` |  |
| `text` | str | **yes** | **required** |  |

### WidgetConfigInputAvatar_Image

Variant of [WidgetConfigInputAvatar](#widgetconfiginputavatar) with `type: 'image'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'image'> | no | `'image'` |  |
| `url` | Optional<str> | no | `nil` |  |

### WidgetConfigInputAvatar_Orb

Variant of [WidgetConfigInputAvatar](#widgetconfiginputavatar) with `type: 'orb'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'orb'> | no | `'orb'` |  |
| `color_1` | Optional<str> | no | `nil` |  |
| `color_2` | Optional<str> | no | `nil` |  |

### WidgetConfigInputAvatar_Url

Variant of [WidgetConfigInputAvatar](#widgetconfiginputavatar) with `type: 'url'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'url'> | no | `'url'` |  |
| `custom_url` | Optional<str> | no | `nil` |  |

### WidgetConfigOutputAvatar_Image

Variant of [WidgetConfigOutputAvatar](#widgetconfigoutputavatar) with `type: 'image'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'image'> | no | `'image'` |  |
| `url` | Optional<str> | no | `nil` |  |

### WidgetConfigOutputAvatar_Orb

Variant of [WidgetConfigOutputAvatar](#widgetconfigoutputavatar) with `type: 'orb'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'orb'> | no | `'orb'` |  |
| `color_1` | Optional<str> | no | `nil` |  |
| `color_2` | Optional<str> | no | `nil` |  |

### WidgetConfigOutputAvatar_Url

Variant of [WidgetConfigOutputAvatar](#widgetconfigoutputavatar) with `type: 'url'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'url'> | no | `'url'` |  |
| `custom_url` | Optional<str> | no | `nil` |  |

### WidgetConfigResponseModelAvatar_Image

Variant of [WidgetConfigResponseModelAvatar](#widgetconfigresponsemodelavatar) with `type: 'image'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'image'> | no | `'image'` |  |
| `url` | Optional<str> | no | `nil` |  |

### WidgetConfigResponseModelAvatar_Orb

Variant of [WidgetConfigResponseModelAvatar](#widgetconfigresponsemodelavatar) with `type: 'orb'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'orb'> | no | `'orb'` |  |
| `color_1` | Optional<str> | no | `nil` |  |
| `color_2` | Optional<str> | no | `nil` |  |

### WidgetConfigResponseModelAvatar_Url

Variant of [WidgetConfigResponseModelAvatar](#widgetconfigresponsemodelavatar) with `type: 'url'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'url'> | no | `'url'` |  |
| `custom_url` | Optional<str> | no | `nil` |  |

### WorkflowEdgeModelInputBackwardCondition_Expression

Variant of [WorkflowEdgeModelInputBackwardCondition](#workflowedgemodelinputbackwardcondition) with `type: 'expression'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'expression'> | no | `'expression'` |  |
| `label` | Optional<str> | no | `nil` |  |
| `expression` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |

### WorkflowEdgeModelInputBackwardCondition_Llm

Variant of [WorkflowEdgeModelInputBackwardCondition](#workflowedgemodelinputbackwardcondition) with `type: 'llm'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'llm'> | no | `'llm'` |  |
| `label` | Optional<str> | no | `nil` |  |
| `condition` | str | **yes** | **required** |  |

### WorkflowEdgeModelInputBackwardCondition_Result

Variant of [WorkflowEdgeModelInputBackwardCondition](#workflowedgemodelinputbackwardcondition) with `type: 'result'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'result'> | no | `'result'` |  |
| `label` | Optional<str> | no | `nil` |  |
| `successful` | bool | **yes** | **required** |  |

### WorkflowEdgeModelInputBackwardCondition_Unconditional

Variant of [WorkflowEdgeModelInputBackwardCondition](#workflowedgemodelinputbackwardcondition) with `type: 'unconditional'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unconditional'> | no | `'unconditional'` |  |
| `label` | Optional<str> | no | `nil` |  |

### WorkflowEdgeModelInputForwardCondition_Expression

Variant of [WorkflowEdgeModelInputForwardCondition](#workflowedgemodelinputforwardcondition) with `type: 'expression'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'expression'> | no | `'expression'` |  |
| `label` | Optional<str> | no | `nil` |  |
| `expression` | '[AstNodeInput](#astnodeinput)' | **yes** | **required** |  |

### WorkflowEdgeModelInputForwardCondition_Llm

Variant of [WorkflowEdgeModelInputForwardCondition](#workflowedgemodelinputforwardcondition) with `type: 'llm'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'llm'> | no | `'llm'` |  |
| `label` | Optional<str> | no | `nil` |  |
| `condition` | str | **yes** | **required** |  |

### WorkflowEdgeModelInputForwardCondition_Result

Variant of [WorkflowEdgeModelInputForwardCondition](#workflowedgemodelinputforwardcondition) with `type: 'result'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'result'> | no | `'result'` |  |
| `label` | Optional<str> | no | `nil` |  |
| `successful` | bool | **yes** | **required** |  |

### WorkflowEdgeModelInputForwardCondition_Unconditional

Variant of [WorkflowEdgeModelInputForwardCondition](#workflowedgemodelinputforwardcondition) with `type: 'unconditional'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unconditional'> | no | `'unconditional'` |  |
| `label` | Optional<str> | no | `nil` |  |

### WorkflowEdgeModelOutputBackwardCondition_Expression

Variant of [WorkflowEdgeModelOutputBackwardCondition](#workflowedgemodeloutputbackwardcondition) with `type: 'expression'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'expression'> | no | `'expression'` |  |
| `label` | Optional<str> | no | `nil` |  |
| `expression` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |

### WorkflowEdgeModelOutputBackwardCondition_Llm

Variant of [WorkflowEdgeModelOutputBackwardCondition](#workflowedgemodeloutputbackwardcondition) with `type: 'llm'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'llm'> | no | `'llm'` |  |
| `label` | Optional<str> | no | `nil` |  |
| `condition` | str | **yes** | **required** |  |

### WorkflowEdgeModelOutputBackwardCondition_Result

Variant of [WorkflowEdgeModelOutputBackwardCondition](#workflowedgemodeloutputbackwardcondition) with `type: 'result'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'result'> | no | `'result'` |  |
| `label` | Optional<str> | no | `nil` |  |
| `successful` | bool | **yes** | **required** |  |

### WorkflowEdgeModelOutputBackwardCondition_Unconditional

Variant of [WorkflowEdgeModelOutputBackwardCondition](#workflowedgemodeloutputbackwardcondition) with `type: 'unconditional'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unconditional'> | no | `'unconditional'` |  |
| `label` | Optional<str> | no | `nil` |  |

### WorkflowEdgeModelOutputForwardCondition_Expression

Variant of [WorkflowEdgeModelOutputForwardCondition](#workflowedgemodeloutputforwardcondition) with `type: 'expression'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'expression'> | no | `'expression'` |  |
| `label` | Optional<str> | no | `nil` |  |
| `expression` | '[AstNodeOutput](#astnodeoutput)' | **yes** | **required** |  |

### WorkflowEdgeModelOutputForwardCondition_Llm

Variant of [WorkflowEdgeModelOutputForwardCondition](#workflowedgemodeloutputforwardcondition) with `type: 'llm'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'llm'> | no | `'llm'` |  |
| `label` | Optional<str> | no | `nil` |  |
| `condition` | str | **yes** | **required** |  |

### WorkflowEdgeModelOutputForwardCondition_Result

Variant of [WorkflowEdgeModelOutputForwardCondition](#workflowedgemodeloutputforwardcondition) with `type: 'result'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'result'> | no | `'result'` |  |
| `label` | Optional<str> | no | `nil` |  |
| `successful` | bool | **yes** | **required** |  |

### WorkflowEdgeModelOutputForwardCondition_Unconditional

Variant of [WorkflowEdgeModelOutputForwardCondition](#workflowedgemodeloutputforwardcondition) with `type: 'unconditional'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'unconditional'> | no | `'unconditional'` |  |
| `label` | Optional<str> | no | `nil` |  |

### WorkflowPhoneNumberNodeModelInputCustomSipHeadersItem_Dynamic

Variant of [WorkflowPhoneNumberNodeModelInputCustomSipHeadersItem](#workflowphonenumbernodemodelinputcustomsipheadersitem) with `type: 'dynamic'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'dynamic'> | no | `'dynamic'` |  |
| `key` | str | **yes** | **required** |  |
| `value` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelInputCustomSipHeadersItem_Static

Variant of [WorkflowPhoneNumberNodeModelInputCustomSipHeadersItem](#workflowphonenumbernodemodelinputcustomsipheadersitem) with `type: 'static'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'static'> | no | `'static'` |  |
| `key` | str | **yes** | **required** |  |
| `value` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelInputPostDialDigits_Dynamic

Variant of [WorkflowPhoneNumberNodeModelInputPostDialDigits](#workflowphonenumbernodemodelinputpostdialdigits) with `type: 'dynamic'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'dynamic'> | no | `'dynamic'` |  |
| `value` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelInputPostDialDigits_Static

Variant of [WorkflowPhoneNumberNodeModelInputPostDialDigits](#workflowphonenumbernodemodelinputpostdialdigits) with `type: 'static'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'static'> | no | `'static'` |  |
| `value` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelInputTransferDestination_Phone

Variant of [WorkflowPhoneNumberNodeModelInputTransferDestination](#workflowphonenumbernodemodelinputtransferdestination) with `type: 'phone'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'phone'> | no | `'phone'` |  |
| `phone_number` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelInputTransferDestination_PhoneDynamicVariable

Variant of [WorkflowPhoneNumberNodeModelInputTransferDestination](#workflowphonenumbernodemodelinputtransferdestination) with `type: 'phone_dynamic_variable'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'phone_dynamic_variable'> | no | `'phone_dynamic_variable'` |  |
| `phone_number` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelInputTransferDestination_SipUri

Variant of [WorkflowPhoneNumberNodeModelInputTransferDestination](#workflowphonenumbernodemodelinputtransferdestination) with `type: 'sip_uri'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'sip_uri'> | no | `'sip_uri'` |  |
| `sip_uri` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelInputTransferDestination_SipUriDynamicVariable

Variant of [WorkflowPhoneNumberNodeModelInputTransferDestination](#workflowphonenumbernodemodelinputtransferdestination) with `type: 'sip_uri_dynamic_variable'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'sip_uri_dynamic_variable'> | no | `'sip_uri_dynamic_variable'` |  |
| `sip_uri` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelOutputCustomSipHeadersItem_Dynamic

Variant of [WorkflowPhoneNumberNodeModelOutputCustomSipHeadersItem](#workflowphonenumbernodemodeloutputcustomsipheadersitem) with `type: 'dynamic'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'dynamic'> | no | `'dynamic'` |  |
| `key` | str | **yes** | **required** |  |
| `value` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelOutputCustomSipHeadersItem_Static

Variant of [WorkflowPhoneNumberNodeModelOutputCustomSipHeadersItem](#workflowphonenumbernodemodeloutputcustomsipheadersitem) with `type: 'static'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'static'> | no | `'static'` |  |
| `key` | str | **yes** | **required** |  |
| `value` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelOutputPostDialDigits_Dynamic

Variant of [WorkflowPhoneNumberNodeModelOutputPostDialDigits](#workflowphonenumbernodemodeloutputpostdialdigits) with `type: 'dynamic'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'dynamic'> | no | `'dynamic'` |  |
| `value` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelOutputPostDialDigits_Static

Variant of [WorkflowPhoneNumberNodeModelOutputPostDialDigits](#workflowphonenumbernodemodeloutputpostdialdigits) with `type: 'static'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'static'> | no | `'static'` |  |
| `value` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelOutputTransferDestination_Phone

Variant of [WorkflowPhoneNumberNodeModelOutputTransferDestination](#workflowphonenumbernodemodeloutputtransferdestination) with `type: 'phone'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'phone'> | no | `'phone'` |  |
| `phone_number` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelOutputTransferDestination_PhoneDynamicVariable

Variant of [WorkflowPhoneNumberNodeModelOutputTransferDestination](#workflowphonenumbernodemodeloutputtransferdestination) with `type: 'phone_dynamic_variable'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'phone_dynamic_variable'> | no | `'phone_dynamic_variable'` |  |
| `phone_number` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelOutputTransferDestination_SipUri

Variant of [WorkflowPhoneNumberNodeModelOutputTransferDestination](#workflowphonenumbernodemodeloutputtransferdestination) with `type: 'sip_uri'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'sip_uri'> | no | `'sip_uri'` |  |
| `sip_uri` | str | **yes** | **required** |  |

### WorkflowPhoneNumberNodeModelOutputTransferDestination_SipUriDynamicVariable

Variant of [WorkflowPhoneNumberNodeModelOutputTransferDestination](#workflowphonenumbernodemodeloutputtransferdestination) with `type: 'sip_uri_dynamic_variable'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'sip_uri_dynamic_variable'> | no | `'sip_uri_dynamic_variable'` |  |
| `sip_uri` | str | **yes** | **required** |  |

### WorkflowToolResponseModelInputStepsItem_Edge

Variant of [WorkflowToolResponseModelInputStepsItem](#workflowtoolresponsemodelinputstepsitem) with `type: 'edge'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'edge'> | no | `'edge'` |  |
| `step_latency_secs` | float | **yes** | **required** |  |
| `edge_id` | str | **yes** | **required** |  |
| `target_node_id` | str | **yes** | **required** |  |

### WorkflowToolResponseModelInputStepsItem_MaxIterationsExceeded

Variant of [WorkflowToolResponseModelInputStepsItem](#workflowtoolresponsemodelinputstepsitem) with `type: 'max_iterations_exceeded'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'max_iterations_exceeded'> | no | `'max_iterations_exceeded'` |  |
| `step_latency_secs` | float | **yes** | **required** |  |
| `max_iterations` | int | **yes** | **required** |  |

### WorkflowToolResponseModelInputStepsItem_NestedTools

Variant of [WorkflowToolResponseModelInputStepsItem](#workflowtoolresponsemodelinputstepsitem) with `type: 'nested_tools'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'nested_tools'> | no | `'nested_tools'` |  |
| `step_latency_secs` | float | **yes** | **required** |  |
| `node_id` | str | **yes** | **required** |  |
| `requests` | Array<[ConversationHistoryTranscriptToolCallCommonModelInput](#conversationhistorytranscripttoolcallcommonmodelinput)> | **yes** | **required** |  |
| `results` | Array<'WorkflowToolNestedToolsStepModelInputResultsItem'> | **yes** | **required** |  |
| `is_successful` | bool | **yes** | **required** |  |

### WorkflowToolResponseModelOutputStepsItem_Edge

Variant of [WorkflowToolResponseModelOutputStepsItem](#workflowtoolresponsemodeloutputstepsitem) with `type: 'edge'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'edge'> | no | `'edge'` |  |
| `step_latency_secs` | float | **yes** | **required** |  |
| `edge_id` | str | **yes** | **required** |  |
| `target_node_id` | str | **yes** | **required** |  |

### WorkflowToolResponseModelOutputStepsItem_MaxIterationsExceeded

Variant of [WorkflowToolResponseModelOutputStepsItem](#workflowtoolresponsemodeloutputstepsitem) with `type: 'max_iterations_exceeded'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'max_iterations_exceeded'> | no | `'max_iterations_exceeded'` |  |
| `step_latency_secs` | float | **yes** | **required** |  |
| `max_iterations` | int | **yes** | **required** |  |

### WorkflowToolResponseModelOutputStepsItem_NestedTools

Variant of [WorkflowToolResponseModelOutputStepsItem](#workflowtoolresponsemodeloutputstepsitem) with `type: 'nested_tools'`.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| `type` | Literal<'nested_tools'> | no | `'nested_tools'` |  |
| `step_latency_secs` | float | **yes** | **required** |  |
| `node_id` | str | **yes** | **required** |  |
| `requests` | Array<[ConversationHistoryTranscriptToolCallCommonModelOutput](#conversationhistorytranscripttoolcallcommonmodeloutput)> | **yes** | **required** |  |
| `results` | Array<'WorkflowToolNestedToolsStepModelOutputResultsItem'> | **yes** | **required** |  |
| `is_successful` | bool | **yes** | **required** |  |

## Enums

### AddPronunciationDictionaryResponseModelPermissionOnResource

One of:

- `'admin'`
- `'editor'`
- `'commenter'`
- `'viewer'`

### AgentDefinitionSource

One of:

- `'cli'`
- `'ui'`
- `'api'`
- `'template'`
- `'unknown'`

### AgentSortBy

One of:

- `'name'`
- `'created_at'`
- `'call_count_7d'`

### AgentTestEntityType

One of:

- `'test'`
- `'folder'`

### AllowedOutputFormats

One of:

- `'mp3_22050_32'`
- `'mp3_24000_48'`
- `'mp3_44100_32'`
- `'mp3_44100_64'`
- `'mp3_44100_96'`
- `'mp3_44100_128'`
- `'mp3_44100_192'`
- `'pcm_8000'`
- `'pcm_16000'`
- `'pcm_22050'`
- `'pcm_24000'`
- `'pcm_32000'`
- `'pcm_44100'`
- `'pcm_48000'`
- `'ulaw_8000'`
- `'alaw_8000'`
- `'opus_48000_32'`
- `'opus_48000_64'`
- `'opus_48000_96'`
- `'opus_48000_128'`
- `'opus_48000_192'`

### AnalysisPropertyType

One of:

- `'boolean'`
- `'string'`
- `'integer'`
- `'number'`

### AnalysisScope

One of:

- `'conversation'`
- `'agent'`

### ApiIntegrationOAuth2AuthCodeResponseScopeSeparator

One of:

- `' '`
- `','`

### AsrInputFormat

One of:

- `'pcm_8000'`
- `'pcm_16000'`
- `'pcm_22050'`
- `'pcm_24000'`
- `'pcm_44100'`
- `'pcm_48000'`
- `'ulaw_8000'`

### AsrProvider

One of:

- `'elevenlabs'`
- `'scribe_realtime'`

### AsyncConversationMetadataDeliveryStatus

One of:

- `'pending'`
- `'success'`
- `'failed'`

### AudioAnalysisStatus

One of:

- `'processing'`
- `'completed'`
- `'failed'`

### AudioFormatEnum

One of:

- `'pcm_8000'`
- `'pcm_16000'`
- `'pcm_22050'`
- `'pcm_24000'`
- `'pcm_44100'`
- `'pcm_48000'`
- `'ulaw_8000'`

### AudioNativeProjectSettingsResponseModelStatus

One of:

- `'processing'`
- `'ready'`

### AuthorizationMethod

One of:

- `'invalid'`
- `'public'`
- `'authorization_header'`
- `'signed_url'`
- `'shareable_link'`
- `'livekit_token'`
- `'livekit_token_website'`
- `'genesys_api_key'`
- `'whatsapp'`

### BatchCallRecipientStatus

One of:

- `'pending'`
- `'dispatched'`
- `'initiated'`
- `'in_progress'`
- `'completed'`
- `'failed'`
- `'cancelled'`
- `'voicemail'`

### BatchCallStatus

One of:

- `'pending'`
- `'in_progress'`
- `'completed'`
- `'failed'`
- `'cancelled'`

### BillingPeriod

One of:

- `'monthly_period'`
- `'3_month_period'`
- `'6_month_period'`
- `'annual_period'`

### BranchProtectionStatus

One of:

- `'writer_perms_required'`
- `'admin_perms_required'`

### BreakdownTypes

One of:

- `'none'`
- `'voice'`
- `'voice_multiplier'`
- `'user'`
- `'groups'`
- `'api_keys'`
- `'all_api_keys'`
- `'product_type'`
- `'model'`
- `'resource'`
- `'request_queue'`
- `'region'`
- `'subresource_id'`
- `'reporting_workspace_id'`
- `'has_api_key'`
- `'request_source'`

### CaptionStyleCharacterAnimationModelEnterType

One of:

- `'none'`
- `'fade'`

### CaptionStyleCharacterAnimationModelExitType

One of:

- `'none'`
- `'fade'`

### CaptionStyleHorizontalPlacementModelAlign

One of:

- `'left'`
- `'center'`
- `'right'`

### CaptionStyleModelTextAlign

One of:

- `'start'`
- `'center'`
- `'end'`

### CaptionStyleModelTextBlendMode

One of:

- `'normal'`
- `'difference'`
- `'multiply'`

### CaptionStyleModelTextStyle

One of:

- `'normal'`
- `'italic'`

### CaptionStyleModelTextTransform

One of:

- `'none'`
- `'uppercase'`

### CaptionStyleModelTextWeight

One of:

- `'normal'`
- `'bold'`
- `'900'`

### CaptionStyleSectionAnimationModelEnterType

One of:

- `'none'`
- `'fade'`
- `'scale'`

### CaptionStyleSectionAnimationModelExitType

One of:

- `'none'`
- `'fade'`
- `'scale'`

### CaptionStyleVerticalPlacementModelAlign

One of:

- `'top'`
- `'center'`
- `'bottom'`

### CaptionStyleWordAnimationModelEnterType

One of:

- `'none'`
- `'fade'`
- `'scale'`

### CaptionStyleWordAnimationModelExitType

One of:

- `'none'`
- `'fade'`
- `'scale'`

### ChapterContentBlockInputModelSubType

One of:

- `'p'`
- `'h1'`
- `'h2'`
- `'h3'`

### ChapterState

One of:

- `'default'`
- `'converting'`

### ChapterWithContentResponseModelState

One of:

- `'default'`
- `'converting'`

### CharacterRefreshPeriod

One of:

- `'monthly_period'`
- `'3_month_period'`
- `'6_month_period'`
- `'annual_period'`

### ChatSourceMedium

One of:

- `'audio'`
- `'text'`
- `'image'`
- `'file'`

### ClientEvent

One of:

- `'conversation_initiation_metadata'`
- `'asr_initiation_metadata'`
- `'ping'`
- `'audio'`
- `'interruption'`
- `'user_transcript'`
- `'tentative_user_transcript'`
- `'agent_response'`
- `'agent_response_correction'`
- `'client_tool_call'`
- `'mcp_tool_call'`
- `'mcp_connection_status'`
- `'agent_tool_request'`
- `'agent_tool_response'`
- `'agent_response_metadata'`
- `'vad_score'`
- `'agent_chat_response_part'`
- `'client_error'`
- `'guardrail_triggered'`
- `'dtmf_request'`
- `'internal_turn_probability'`
- `'internal_tentative_agent_response'`

### ClipAnimationEnterEffect

One of:

- `'none'`
- `'fade'`
- `'float'`
- `'gentle_float'`
- `'zoom_in'`
- `'drop'`
- `'slide_left'`
- `'slide_right'`
- `'slide_up'`
- `'slide_down'`
- `'pop'`
- `'bounce'`
- `'spin'`
- `'slide_bounce'`

### ClipAnimationExitEffect

One of:

- `'none'`
- `'fade'`
- `'float'`
- `'gentle_float'`
- `'zoom_in'`
- `'drop'`
- `'slide_left'`
- `'slide_right'`
- `'slide_up'`
- `'slide_down'`
- `'pop'`
- `'bounce'`
- `'spin'`
- `'slide_bounce'`

### ColumnFilterOperation

One of:

- `'in'`
- `'not_in'`
- `'le'`
- `'ge'`
- `'lt'`
- `'gt'`
- `'eq'`
- `'neq'`

### ColumnUnit

One of:

- `'ms'`
- `'s'`
- `'min'`
- `'duration'`
- `'credits'`
- `'usd'`
- `'eur'`
- `'inr'`
- `'ratio'`
- `'rating'`

### ConfigEntityType

One of:

- `'name'`
- `'name.name_given'`
- `'name.name_family'`
- `'name.name_other'`
- `'email_address'`
- `'contact_number'`
- `'dob'`
- `'age'`
- `'religious_belief'`
- `'political_opinion'`
- `'sexual_orientation'`
- `'ethnicity_race'`
- `'marital_status'`
- `'occupation'`
- `'physical_attribute'`
- `'language'`
- `'username'`
- `'password'`
- `'url'`
- `'organization'`
- `'financial_id'`
- `'financial_id.payment_card'`
- `'financial_id.payment_card.payment_card_number'`
- `'financial_id.payment_card.payment_card_expiration_date'`
- `'financial_id.payment_card.payment_card_cvv'`
- `'financial_id.bank_account'`
- `'financial_id.bank_account.bank_account_number'`
- `'financial_id.bank_account.bank_routing_number'`
- `'financial_id.bank_account.swift_bic_code'`
- `'financial_id.financial_id_other'`
- `'location'`
- `'location.location_address'`
- `'location.location_city'`
- `'location.location_postal_code'`
- `'location.location_coordinate'`
- `'location.location_state'`
- `'location.location_country'`
- `'location.location_other'`
- `'date'`
- `'date_interval'`
- `'unique_id'`
- `'unique_id.government_issued_id'`
- `'unique_id.account_number'`
- `'unique_id.vehicle_id'`
- `'unique_id.healthcare_number'`
- `'unique_id.healthcare_number.medical_record_number'`
- `'unique_id.healthcare_number.health_plan_beneficiary_number'`
- `'unique_id.device_id'`
- `'unique_id.unique_id_other'`
- `'medical'`
- `'medical.medical_condition'`
- `'medical.medication'`
- `'medical.medical_procedure'`
- `'medical.medical_measurement'`
- `'medical.medical_other'`

### ConversationFeedbackType

One of:

- `'thumbs'`
- `'rating'`

### ConversationHistoryTranscriptCommonModelInputRole

One of:

- `'user'`
- `'agent'`

### ConversationHistoryTranscriptCommonModelOutputRole

One of:

- `'user'`
- `'agent'`

### ConversationHistoryTranscriptOtherToolsResultCommonModelType

One of:

- `'client'`
- `'webhook'`
- `'mcp'`

### ConversationHistoryTranscriptResponseModelRole

One of:

- `'user'`
- `'agent'`

### ConversationInitiationSource

One of:

- `'unknown'`
- `'android_sdk'`
- `'node_js_sdk'`
- `'react_native_sdk'`
- `'react_sdk'`
- `'js_sdk'`
- `'python_sdk'`
- `'widget'`
- `'sip_trunk'`
- `'twilio'`
- `'genesys'`
- `'swift_sdk'`
- `'whatsapp'`
- `'flutter_sdk'`
- `'zendesk_integration'`
- `'slack_integration'`
- `'template_preview'`

### ConversationSummaryResponseModelStatus

One of:

- `'initiated'`
- `'in-progress'`
- `'processing'`
- `'done'`
- `'failed'`

### ConversationTokenPurpose

One of:

- `'signed_url'`
- `'shareable_link'`

### CreateOAuth2JwtRequestAlgorithm

One of:

- `'HS256'`
- `'HS384'`
- `'HS512'`
- `'RS256'`
- `'RS384'`
- `'RS512'`

### CreatePrivateKeyJwtRequestAlgorithm

One of:

- `'HS256'`
- `'HS384'`
- `'HS512'`
- `'RS256'`
- `'RS384'`
- `'RS512'`

### CustomLlmapiType

One of:

- `'chat_completions'`
- `'responses'`

### DefaultSharingGroupResponseModelPermissionLevel

One of:

- `'admin'`
- `'editor'`
- `'viewer'`

### DependentAvailableAgentIdentifierAccessLevel

One of:

- `'admin'`
- `'editor'`
- `'commenter'`
- `'viewer'`

### DependentAvailableMcpServerIdentifierAccessLevel

One of:

- `'admin'`
- `'editor'`
- `'commenter'`
- `'viewer'`

### DependentAvailableToolIdentifierAccessLevel

One of:

- `'admin'`
- `'editor'`
- `'commenter'`
- `'viewer'`

### DirectPublishingReadResponseModelDisplayMode

One of:

- `'text'`
- `'audio-only'`
- `'text-with-audio'`

### DirectPublishingReadResponseModelGenreItem

One of:

- `'Fantasy'`
- `'Romance'`
- `'Science Fiction'`
- `'Mystery and Thriller'`
- `'Action and Adventure'`
- `'Dystopia'`
- `'Business and Economics'`
- `'Technology'`
- `'Christian & Inspirational'`
- `'Horror'`
- `'Biography and Memoir'`
- `'Education and Learning'`
- `'History'`
- `"Children's Literature"`
- `'Young Adult'`
- `'Fairy Tales and Folklore'`
- `'Fan Fiction'`
- `'General Fiction'`
- `'Health and Wellness'`
- `'Historical Fiction'`
- `'Humor'`
- `'Literary Classics'`
- `'Philosophy'`
- `'Poetry'`
- `'Politics and Government'`
- `'Psychology'`
- `'Science and Nature'`
- `'Self-Help'`
- `'Spirituality and Religion'`
- `'Travel'`
- `'True Crime'`
- `'Other'`

### DirectPublishingReadResponseModelPayoutType

One of:

- `'none'`
- `'engagement_based'`
- `'fixed_payout'`

### DirectPublishingReadResponseModelTargetAudience

One of:

- `'children'`
- `'young adult'`
- `'adult'`
- `'all ages'`

### DocumentUsageModeEnum

One of:

- `'prompt'`
- `'auto'`

### DubbingModel

One of:

- `'dubbing_v1_tts_v3'`
- `'dubbing_v2'`
- `'dubbing_v3'`
- `'dubbing_e2e_v1'`

### DubbingTranscriptsResponseModelTranscriptFormat

One of:

- `'srt'`
- `'webvtt'`
- `'json'`

### EmbedVariant

One of:

- `'tiny'`
- `'compact'`
- `'full'`
- `'expandable'`

### EmbeddingModelEnum

One of:

- `'e5_mistral_7b_instruct'`
- `'multilingual_e5_large_instruct'`

### EnvironmentVariableResponseType

One of:

- `'string'`
- `'secret'`
- `'auth_connection'`

### EvaluationSuccessResult

One of:

- `'success'`
- `'failure'`
- `'unknown'`

### ExtendedSubscriptionResponseModelCurrency

One of:

- `'usd'`
- `'eur'`
- `'inr'`

### FineTuningResponseModelStateValue

One of:

- `'not_started'`
- `'queued'`
- `'fine_tuning'`
- `'fine_tuned'`
- `'failed'`
- `'delayed'`

### GenesysRegion

One of:

- `'us_east_1'`
- `'eu_west_1'`
- `'ap_southeast_2'`
- `'ap_northeast_1'`
- `'eu_central_1'`
- `'us_west_2'`
- `'ca_central_1'`
- `'ap_northeast_2'`
- `'eu_west_2'`
- `'ap_south_1'`
- `'us_east_2'`
- `'sa_east_1'`
- `'me_central_1'`
- `'ap_northeast_3'`
- `'eu_central_2'`
- `'mx_central_1'`
- `'ap_southeast_1'`

### GetConversationResponseModelStatus

One of:

- `'initiated'`
- `'in-progress'`
- `'processing'`
- `'done'`
- `'failed'`

### GetPronunciationDictionaryMetadataResponseModelPermissionOnResource

One of:

- `'admin'`
- `'editor'`
- `'commenter'`
- `'viewer'`

### GetPronunciationDictionaryWithRulesResponseModelPermissionOnResource

One of:

- `'admin'`
- `'editor'`
- `'commenter'`
- `'viewer'`

### GuardrailExecutionMode

One of:

- `'streaming'`
- `'blocking'`

### IntegrationType

One of:

- `'mcp_server'`
- `'mcp_integration'`

### InvoiceResponseModelPaymentIntentStatus

One of:

- `'canceled'`
- `'processing'`
- `'requires_action'`
- `'requires_capture'`
- `'requires_confirmation'`
- `'requires_payment_method'`
- `'succeeded'`

### InvoiceResponseModelPaymentIntentStatussesItem

One of:

- `'canceled'`
- `'processing'`
- `'requires_action'`
- `'requires_capture'`
- `'requires_confirmation'`
- `'requires_payment_method'`
- `'succeeded'`

### KnowledgeBaseDependentType

One of:

- `'direct'`
- `'transitive'`
- `'all'`

### KnowledgeBaseDocumentType

One of:

- `'file'`
- `'url'`
- `'text'`
- `'folder'`

### KnowledgeBaseSortBy

One of:

- `'name'`
- `'created_at'`
- `'updated_at'`
- `'size'`

### LibraryVoiceResponseModelCategory

One of:

- `'generated'`
- `'cloned'`
- `'premade'`
- `'professional'`
- `'famous'`
- `'high_quality'`

### LiteralJsonSchemaPropertyType

One of:

- `'boolean'`
- `'string'`
- `'integer'`
- `'number'`

### LivekitStackType

One of:

- `'standard'`
- `'static'`

### Llm

One of:

- `'gpt-4o-mini'`
- `'gpt-4o'`
- `'gpt-4'`
- `'gpt-4-turbo'`
- `'gpt-4.1'`
- `'gpt-4.1-mini'`
- `'gpt-4.1-nano'`
- `'gpt-5'`
- `'gpt-5.1'`
- `'gpt-5.2'`
- `'gpt-5.2-chat-latest'`
- `'gpt-5.4'`
- `'gpt-5-mini'`
- `'gpt-5-nano'`
- `'gpt-3.5-turbo'`
- `'gemini-1.5-pro'`
- `'gemini-1.5-flash'`
- `'gemini-2.0-flash'`
- `'gemini-2.0-flash-lite'`
- `'gemini-2.5-flash-lite'`
- `'gemini-2.5-flash'`
- `'gemini-3-pro-preview'`
- `'gemini-3-flash-preview'`
- `'gemini-3.1-pro-preview'`
- `'gemini-3.1-flash-lite-preview'`
- `'claude-sonnet-4-5'`
- `'claude-sonnet-4-6'`
- `'claude-sonnet-4'`
- `'claude-haiku-4-5'`
- `'claude-3-7-sonnet'`
- `'claude-3-5-sonnet'`
- `'claude-3-5-sonnet-v1'`
- `'claude-3-haiku'`
- `'grok-beta'`
- `'custom-llm'`
- `'qwen3-4b'`
- `'qwen3-30b-a3b'`
- `'gpt-oss-20b'`
- `'gpt-oss-120b'`
- `'glm-45-air-fp8'`
- `'gemini-2.5-flash-preview-09-2025'`
- `'gemini-2.5-flash-lite-preview-09-2025'`
- `'gemini-2.5-flash-preview-05-20'`
- `'gemini-2.5-flash-preview-04-17'`
- `'gemini-2.5-flash-lite-preview-06-17'`
- `'gemini-2.0-flash-lite-001'`
- `'gemini-2.0-flash-001'`
- `'gemini-1.5-flash-002'`
- `'gemini-1.5-flash-001'`
- `'gemini-1.5-pro-002'`
- `'gemini-1.5-pro-001'`
- `'claude-sonnet-4@20250514'`
- `'claude-sonnet-4-5@20250929'`
- `'claude-haiku-4-5@20251001'`
- `'claude-3-7-sonnet@20250219'`
- `'claude-3-5-sonnet@20240620'`
- `'claude-3-5-sonnet-v2@20241022'`
- `'claude-3-haiku@20240307'`
- `'gpt-5-2025-08-07'`
- `'gpt-5.1-2025-11-13'`
- `'gpt-5.2-2025-12-11'`
- `'gpt-5.4-2026-03-05'`
- `'gpt-5-mini-2025-08-07'`
- `'gpt-5-nano-2025-08-07'`
- `'gpt-4.1-2025-04-14'`
- `'gpt-4.1-mini-2025-04-14'`
- `'gpt-4.1-nano-2025-04-14'`
- `'gpt-4o-mini-2024-07-18'`
- `'gpt-4o-2024-11-20'`
- `'gpt-4o-2024-08-06'`
- `'gpt-4o-2024-05-13'`
- `'gpt-4-0613'`
- `'gpt-4-0314'`
- `'gpt-4-turbo-2024-04-09'`
- `'gpt-3.5-turbo-0125'`
- `'gpt-3.5-turbo-1106'`
- `'watt-tool-8b'`
- `'watt-tool-70b'`

### LlmLiteralJsonSchemaPropertyType

One of:

- `'boolean'`
- `'string'`
- `'integer'`
- `'number'`

### LlmReasoningEffort

One of:

- `'none'`
- `'minimal'`
- `'low'`
- `'medium'`
- `'high'`
- `'xhigh'`

### McpApprovalPolicy

One of:

- `'auto_approve_all'`
- `'require_approval_all'`
- `'require_approval_per_tool'`

### McpServerTransport

One of:

- `'SSE'`
- `'STREAMABLE_HTTP'`

### McpToolApprovalPolicy

One of:

- `'auto_approved'`
- `'requires_approval'`

### MergingStrategy

One of:

- `'rank_fusion'`
- `'top_k_per_source'`
- `'weighted_interleave'`

### MessageSearchSortBy

One of:

- `'search_score'`
- `'created_at'`

### MetricType

One of:

- `'credits'`
- `'tts_characters'`
- `'minutes_used'`
- `'request_count'`
- `'ttfb_avg'`
- `'ttfb_p95'`
- `'fiat_units_spent'`
- `'concurrency'`
- `'concurrency_average'`

### MockNoMatchBehavior

One of:

- `'call_real_tool'`
- `'raise_error'`

### MockingStrategy

One of:

- `'all'`
- `'selected'`
- `'none'`

### NonStreamingOutputFormats

One of:

- `'wav_8000'`
- `'wav_16000'`
- `'wav_22050'`
- `'wav_24000'`
- `'wav_32000'`
- `'wav_44100'`
- `'wav_48000'`

### OAuth2JwtResponseAlgorithm

One of:

- `'HS256'`
- `'HS384'`
- `'HS512'`
- `'RS256'`
- `'RS384'`
- `'RS512'`

### OAuthConnectionStatus

One of:

- `'active'`
- `'refresh_failed'`
- `'revoked'`

### OutputFormat

One of:

- `'mp3_22050_32'`
- `'mp3_44100_32'`
- `'mp3_44100_64'`
- `'mp3_44100_96'`
- `'mp3_44100_128'`
- `'mp3_44100_192'`
- `'pcm_16000'`
- `'pcm_22050'`
- `'pcm_24000'`
- `'pcm_44100'`
- `'ulaw_8000'`

### PendingClipTaskType

One of:

- `'preprocessing'`
- `'speech_import'`
- `'dubbing'`
- `'video_to_music'`
- `'media_generation'`

### PendingSubscriptionSwitchResponseModelNextTier

One of:

- `'free'`
- `'starter'`
- `'creator'`
- `'pro'`
- `'growing_business'`
- `'scale_2024_08_10'`
- `'grant_tier_1_2025_07_23'`
- `'grant_tier_2_2025_07_23'`
- `'trial'`
- `'enterprise'`

### PermissionType

One of:

- `'text_to_speech'`
- `'speech_to_speech'`
- `'speech_to_text'`
- `'models_read'`
- `'models_write'`
- `'voices_read'`
- `'voices_write'`
- `'speech_history_read'`
- `'speech_history_write'`
- `'sound_generation'`
- `'audio_isolation'`
- `'voice_generation'`
- `'dubbing_read'`
- `'dubbing_write'`
- `'pronunciation_dictionaries_read'`
- `'pronunciation_dictionaries_write'`
- `'user_read'`
- `'user_write'`
- `'projects_read'`
- `'projects_write'`
- `'audio_native_read'`
- `'audio_native_write'`
- `'workspace_read'`
- `'workspace_write'`
- `'forced_alignment'`
- `'convai_read'`
- `'convai_write'`
- `'music_generation'`
- `'image_video_generation'`
- `'add_voice_from_voice_library'`
- `'create_instant_voice_clone'`
- `'create_professional_voice_clone'`
- `'publish_voice_to_voice_library'`
- `'share_voice_externally'`
- `'create_user_api_key'`
- `'workspace_analytics_full_read'`
- `'webhooks_write'`
- `'service_account_write'`
- `'group_members_manage'`
- `'workspace_members_read'`
- `'workspace_members_invite'`
- `'workspace_members_remove'`
- `'terms_of_service_accept'`
- `'audit_log_read'`
- `'copy_resources_cross_workspace'`

### PrivateKeyJwtResponseAlgorithm

One of:

- `'HS256'`
- `'HS384'`
- `'HS512'`
- `'RS256'`
- `'RS384'`
- `'RS512'`

### ProcedureCompilerMode

One of:

- `'llm'`
- `'deterministic'`
- `'append'`

### ProjectCreationMetaResponseModelStatus

One of:

- `'pending'`
- `'creating'`
- `'finished'`
- `'failed'`

### ProjectCreationMetaResponseModelType

One of:

- `'blank'`
- `'generate_podcast'`
- `'auto_assign_voices'`
- `'dub_video'`
- `'import_speech'`

### ProjectExtendedResponseModelAccessLevel

One of:

- `'admin'`
- `'editor'`
- `'commenter'`
- `'viewer'`

### ProjectExtendedResponseModelApplyTextNormalization

One of:

- `'auto'`
- `'on'`
- `'off'`
- `'apply_english'`

### ProjectExtendedResponseModelAspectRatio

One of:

- `'16:9'`
- `'9:16'`
- `'4:5'`
- `'1:1'`

### ProjectExtendedResponseModelFiction

One of:

- `'fiction'`
- `'non-fiction'`

### ProjectExtendedResponseModelSourceType

One of:

- `'blank'`
- `'book'`
- `'article'`
- `'genfm'`
- `'video'`
- `'screenplay'`

### ProjectExtendedResponseModelTargetAudience

One of:

- `'children'`
- `'young adult'`
- `'adult'`
- `'all ages'`

### ProjectResponseModelAccessLevel

One of:

- `'admin'`
- `'editor'`
- `'commenter'`
- `'viewer'`

### ProjectResponseModelAspectRatio

One of:

- `'16:9'`
- `'9:16'`
- `'4:5'`
- `'1:1'`

### ProjectResponseModelFiction

One of:

- `'fiction'`
- `'non-fiction'`

### ProjectResponseModelSourceType

One of:

- `'blank'`
- `'book'`
- `'article'`
- `'genfm'`
- `'video'`
- `'screenplay'`

### ProjectResponseModelTargetAudience

One of:

- `'children'`
- `'young adult'`
- `'adult'`
- `'all ages'`

### ProjectState

One of:

- `'creating'`
- `'default'`
- `'converting'`
- `'in_queue'`

### PronunciationDictionaryVersionResponseModelPermissionOnResource

One of:

- `'admin'`
- `'editor'`
- `'commenter'`
- `'viewer'`

### QualityPresetType

One of:

- `'standard'`
- `'high'`
- `'ultra'`
- `'ultra_lossless'`

### RagIndexStatus

One of:

- `'new'`
- `'created'`
- `'processing'`
- `'failed'`
- `'succeeded'`
- `'rag_limit_exceeded'`
- `'document_too_small'`
- `'cannot_index_folder'`

### ReaderResourceResponseModelResourceType

One of:

- `'read'`
- `'collection'`

### ReferencedToolCommonModelType

One of:

- `'system'`
- `'webhook'`
- `'client'`
- `'workflow'`
- `'api_integration_webhook'`
- `'mcp'`

### RenderStatus

One of:

- `'complete'`
- `'processing'`
- `'failed'`

### RenderType

One of:

- `'mp4'`
- `'aac'`
- `'mp3'`
- `'wav'`
- `'aaf'`
- `'tracks_zip'`
- `'clips_zip'`

### ResourceAccessInfoRole

One of:

- `'admin'`
- `'editor'`
- `'commenter'`
- `'viewer'`

### ResourceMetadataResponseModelAnonymousAccessLevelOverride

One of:

- `'admin'`
- `'editor'`
- `'commenter'`
- `'viewer'`

### ResponseFilterMode

One of:

- `'all'`
- `'allow'`
- `'hide_all'`

### ReviewResponseModelRejectReasonsItem

One of:

- `'lacks_structure'`
- `'doesnt_open'`
- `'not_literary_work'`
- `'language_not_supported'`
- `'too_short'`
- `'duplicate'`
- `'promotional'`
- `'formatting_issues'`
- `'low_quality'`
- `'metadata_incomplete'`
- `'metadata_inaccurate'`
- `'typos'`
- `'review_error'`
- `'spam'`
- `'legal_violation'`
- `'content_policy'`
- `'public_domain'`
- `'other'`

### ReviewResponseModelReviewStatus

One of:

- `'approved'`
- `'edits_required'`
- `'rejected'`

### ReviewStatus

One of:

- `'not_requested'`
- `'pending'`
- `'declined'`
- `'allowed'`
- `'allowed_with_changes'`

### SafetyRule

One of:

- `'sexual_minors'`
- `'forget_moderation'`
- `'extremism'`
- `'scam_fraud'`
- `'political'`
- `'self_harm'`
- `'illegal_distribution_medical'`
- `'sexual_adults'`
- `'unknown'`

### SampleConfigDbModelParentType

One of:

- `'read'`
- `'collection'`

### SeatType

One of:

- `'workspace_admin'`
- `'workspace_member'`
- `'workspace_lite_member'`

### SecretDependencyResourceType

One of:

- `'tools'`
- `'agents'`
- `'phone_numbers'`

### SessionStartedPayloadConfigCommitStrategy

One of:

- `'manual'`
- `'vad'`

### ShareOptionResponseModelType

One of:

- `'user'`
- `'group'`
- `'key'`

### SingleUseTokenType

One of:

- `'realtime_scribe'`
- `'tts_websocket'`

### SipMediaEncryptionEnum

One of:

- `'disabled'`
- `'allowed'`
- `'required'`

### SipTrunkTransportEnum

One of:

- `'auto'`
- `'udp'`
- `'tcp'`
- `'tls'`

### SortDirection

One of:

- `'asc'`
- `'desc'`

### SpeakerSeparationResponseModelStatus

One of:

- `'not_started'`
- `'pending'`
- `'completed'`
- `'failed'`

### SpeechHistoryItemResponseModelSource

One of:

- `'TTS'`
- `'STS'`
- `'Projects'`
- `'PD'`
- `'AN'`
- `'Dubbing'`
- `'PlayAPI'`
- `'ConvAI'`
- `'VoiceGeneration'`

### SpeechHistoryItemResponseModelVoiceCategory

One of:

- `'premade'`
- `'cloned'`
- `'generated'`
- `'professional'`

### SpeechToTextWordResponseModelType

One of:

- `'word'`
- `'spacing'`
- `'audio_event'`

### SpellingPatience

One of:

- `'auto'`
- `'off'`

### StudioClipReferenceClipType

One of:

- `'video'`
- `'image'`
- `'external_audio'`
- `'tts_node'`

### SubscriptionResponseModelCurrency

One of:

- `'usd'`
- `'eur'`
- `'inr'`

### SubscriptionStatusType

One of:

- `'trialing'`
- `'active'`
- `'incomplete'`
- `'past_due'`
- `'free'`
- `'free_disabled'`

### TelephonyDirection

One of:

- `'inbound'`
- `'outbound'`

### TelephonyProvider

One of:

- `'twilio'`
- `'sip_trunk'`

### TestRunMetadataTestType

One of:

- `'llm'`
- `'tool_call'`
- `'simulation'`

### TestRunStatus

One of:

- `'pending'`
- `'passed'`
- `'failed'`

### TestSharingMode

One of:

- `'all'`
- `'shared_with_me'`

### TestType

One of:

- `'llm'`
- `'tool'`
- `'simulation'`
- `'folder'`

### TextNormalisationType

One of:

- `'system_prompt'`
- `'elevenlabs'`

### TextToSpeechApplyTextNormalizationEnum

One of:

- `'auto'`
- `'on'`
- `'off'`

### TextToSpeechOutputFormatEnum

One of:

- `'mp3_22050_32'`
- `'mp3_44100_32'`
- `'mp3_44100_64'`
- `'mp3_44100_96'`
- `'mp3_44100_128'`
- `'mp3_44100_192'`
- `'pcm_8000'`
- `'pcm_16000'`
- `'pcm_22050'`
- `'pcm_24000'`
- `'pcm_44100'`
- `'ulaw_8000'`
- `'alaw_8000'`
- `'opus_48000_32'`
- `'opus_48000_64'`
- `'opus_48000_96'`
- `'opus_48000_128'`
- `'opus_48000_192'`

### ToolCallSoundBehavior

One of:

- `'auto'`
- `'always'`

### ToolCallSoundType

One of:

- `'typing'`
- `'elevator1'`
- `'elevator2'`
- `'elevator3'`
- `'elevator4'`

### ToolErrorHandlingMode

One of:

- `'auto'`
- `'summarized'`
- `'passthrough'`
- `'hide'`

### ToolExecutionMode

One of:

- `'immediate'`
- `'post_tool_speech'`
- `'async'`

### ToolSortBy

One of:

- `'name'`
- `'created_at'`

### ToolType

One of:

- `'system'`
- `'webhook'`
- `'client'`
- `'mcp'`
- `'workflow'`
- `'api_integration_webhook'`
- `'api_integration_mcp'`
- `'smb'`

### ToolTypeFilter

One of:

- `'webhook'`
- `'client'`
- `'api_integration_webhook'`

### TranscriptionWordType

One of:

- `'word'`
- `'spacing'`

### TransferTypeEnum

One of:

- `'blind'`
- `'conference'`
- `'sip_refer'`

### TtsConversationalModel

One of:

- `'eleven_turbo_v2'`
- `'eleven_turbo_v2_5'`
- `'eleven_flash_v2'`
- `'eleven_flash_v2_5'`
- `'eleven_multilingual_v2'`
- `'eleven_v3_conversational'`

### TtsModelFamily

One of:

- `'turbo'`
- `'flash'`
- `'multilingual'`
- `'v3_conversational'`

### TtsOutputFormat

One of:

- `'pcm_8000'`
- `'pcm_16000'`
- `'pcm_22050'`
- `'pcm_24000'`
- `'pcm_44100'`
- `'pcm_48000'`
- `'ulaw_8000'`

### TurnEagerness

One of:

- `'patient'`
- `'normal'`
- `'eager'`

### TurnMode

One of:

- `'silence'`
- `'turn'`

### TurnModel

One of:

- `'turn_v2'`
- `'turn_v3'`

### TwilioEdgeLocation

One of:

- `'ashburn'`
- `'dublin'`
- `'frankfurt'`
- `'sao-paulo'`
- `'singapore'`
- `'sydney'`
- `'tokyo'`
- `'umatilla'`
- `'roaming'`

### TwilioRegionId

One of:

- `'us1'`
- `'ie1'`
- `'au1'`

### UsageAggregationInterval

One of:

- `'hour'`
- `'day'`
- `'week'`
- `'month'`
- `'cumulative'`

### UserFeedbackScore

One of:

- `'like'`
- `'dislike'`

### UsersSortBy

One of:

- `'last_contact_unix_secs'`
- `'conversation_count'`

### VideoAnalysisStatus

One of:

- `'processing'`
- `'completed'`
- `'failed'`

### VoiceCategory

One of:

- `'premade'`
- `'cloned'`
- `'generated'`
- `'professional'`
- `'famous'`

### VoiceResponseModelCategory

One of:

- `'generated'`
- `'cloned'`
- `'premade'`
- `'professional'`
- `'famous'`
- `'high_quality'`

### VoiceResponseModelLabellingStatus

One of:

- `'in_review'`
- `'review_complete'`

### VoiceResponseModelRecordingQuality

One of:

- `'studio'`
- `'good'`
- `'ok'`
- `'poor'`
- `'bad'`

### VoiceResponseModelSafetyControl

One of:

- `'NONE'`
- `'BAN'`
- `'CAPTCHA'`
- `'ENTERPRISE_BAN'`
- `'ENTERPRISE_CAPTCHA'`

### VoiceSharingResponseModelCategory

One of:

- `'generated'`
- `'cloned'`
- `'premade'`
- `'professional'`
- `'famous'`
- `'high_quality'`

### VoiceSharingState

One of:

- `'enabled'`
- `'disabled'`
- `'copied'`
- `'copied_disabled'`

### WebhookAuthMethodType

One of:

- `'hmac'`
- `'oauth2'`
- `'mtls'`

### WebhookEventType

One of:

- `'transcript'`
- `'audio'`
- `'call_initiation_failure'`

### WebhookToolApiSchemaConfigInputContentType

One of:

- `'application/json'`
- `'application/x-www-form-urlencoded'`

### WebhookToolApiSchemaConfigInputMethod

One of:

- `'GET'`
- `'POST'`
- `'PUT'`
- `'PATCH'`
- `'DELETE'`

### WebhookToolApiSchemaConfigOutputContentType

One of:

- `'application/json'`
- `'application/x-www-form-urlencoded'`

### WebhookToolApiSchemaConfigOutputMethod

One of:

- `'GET'`
- `'POST'`
- `'PUT'`
- `'PATCH'`
- `'DELETE'`

### WebhookUsageType

One of:

- `'ConvAI Agent Settings'`
- `'ConvAI Settings'`
- `'Voice Library Removal Notices'`
- `'Speech to Text'`

### WhatsAppConversationInfoDirection

One of:

- `'inbound'`
- `'outbound'`
- `'unknown'`

### WidgetConfigInputSyntaxHighlightTheme

One of:

- `'light'`
- `'dark'`

### WidgetConfigOutputSyntaxHighlightTheme

One of:

- `'light'`
- `'dark'`

### WidgetConfigResponseModelSyntaxHighlightTheme

One of:

- `'light'`
- `'dark'`

### WidgetExpandable

One of:

- `'never'`
- `'mobile'`
- `'desktop'`
- `'always'`

### WidgetFeedbackMode

One of:

- `'none'`
- `'during'`
- `'end'`

### WidgetPlacement

One of:

- `'top-left'`
- `'top'`
- `'top-right'`
- `'bottom-left'`
- `'bottom'`
- `'bottom-right'`

### WorkspaceAnalyticsQueryResponseModelColumnTypesItem

One of:

- `'String'`
- `'Float'`
- `'DateTime'`
- `'Int'`
- `'Bool'`
- `'JSON'`
- `'Map'`

### WorkspaceGroupPermission

One of:

- `'text_to_speech'`
- `'speech_to_speech'`
- `'speech_to_text'`
- `'voice_lab'`
- `'sound_effects'`
- `'projects'`
- `'voiceover_studio'`
- `'dubbing'`
- `'audio_native'`
- `'conversational_ai'`
- `'voice_isolator'`
- `'ai_speech_classifier'`
- `'add_voice_from_voice_library'`
- `'create_instant_voice_clone'`
- `'create_professional_voice_clone'`
- `'create_user_api_key'`
- `'publish_studio_project'`
- `'music'`
- `'image_video_generation'`
- `'share_voice_externally'`
- `'publish_voice_to_voice_library'`
- `'view_fiat_balance'`
- `'workspace_analytics_full_read'`
- `'service_accounts_manage'`
- `'webhooks_manage'`
- `'group_members_manage'`
- `'workspace_members_invite'`
- `'workspace_members_remove'`
- `'terms_of_service_accept'`
- `'audit_log_read'`
- `'copy_resources_cross_workspace'`

### WorkspaceResourceType

One of:

- `'voice'`
- `'voice_collection'`
- `'pronunciation_dictionary'`
- `'dubbing'`
- `'project'`
- `'convai_agents'`
- `'convai_knowledge_base_documents'`
- `'convai_tools'`
- `'convai_settings'`
- `'convai_secrets'`
- `'workspace_auth_connections'`
- `'convai_phone_numbers'`
- `'convai_mcp_servers'`
- `'convai_api_integration_connections'`
- `'convai_api_integration_trigger_connections'`
- `'convai_batch_calls'`
- `'convai_agent_response_tests'`
- `'convai_test_suite_invocations'`
- `'convai_crawl_jobs'`
- `'convai_crawl_tasks'`
- `'convai_whatsapp_accounts'`
- `'convai_agent_versions'`
- `'convai_agent_branches'`
- `'convai_agent_versions_deployments'`
- `'convai_memory_entries'`
- `'convai_coaching_proposals'`
- `'dashboard'`
- `'dashboard_configuration'`
- `'convai_agent_drafts'`
- `'resource_locators'`
- `'assets'`
- `'content_generations'`
- `'content_templates'`
- `'songs'`
- `'avatars'`
- `'avatar_video_generations'`
