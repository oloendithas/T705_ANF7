.class public Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
.super Ljava/lang/Object;
.source "PhoneCallDetails.java"


# instance fields
.field public accountType:Ljava/lang/String;

.field public address:Ljava/lang/CharSequence;

.field public callOutDuraton:J

.field public final callTypes:[I

.field public cdnipNumber:Ljava/lang/String;

.field public cnapName:Ljava/lang/String;

.field public contactId:J

.field public final contactUri:Landroid/net/Uri;

.field public final countryIso:Ljava/lang/String;

.field public final date:J

.field public final duration:J

.field public durationSim2:J

.field public final formattedNumber:Ljava/lang/CharSequence;

.field public final geocode:Ljava/lang/String;

.field public final id:I

.field public iddValue:Ljava/lang/String;

.field public isVoLTEEnabled:Z

.field public final logType:I

.field public msgId:Ljava/lang/String;

.field public final name:Ljava/lang/CharSequence;

.field public final number:Ljava/lang/CharSequence;

.field public final numberLabel:Ljava/lang/CharSequence;

.field public final numberType:I

.field public final photoUri:Landroid/net/Uri;

.field public remindMeLaterSet:I

.field public roamingCall:Ljava/lang/String;

.field public serviceType:I

.field public sharedFilePath:Ljava/lang/String;

.field public simcardId:I

.field public simnum:I


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "address"    # Ljava/lang/CharSequence;
    .param p5, "msgId"    # Ljava/lang/String;
    .param p6, "countryIso"    # Ljava/lang/String;
    .param p7, "geocode"    # Ljava/lang/String;
    .param p8, "callTypes"    # [I
    .param p9, "date"    # J
    .param p11, "duration"    # J
    .param p13, "logType"    # I
    .param p14, "name"    # Ljava/lang/CharSequence;
    .param p15, "numberType"    # I
    .param p16, "numberLabel"    # Ljava/lang/CharSequence;
    .param p17, "contactUri"    # Landroid/net/Uri;
    .param p18, "photoUri"    # Landroid/net/Uri;
    .param p19, "simnum"    # I
    .param p20, "contactId"    # J

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->roamingCall:Ljava/lang/String;

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->iddValue:Ljava/lang/String;

    .line 64
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 65
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 67
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 68
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 70
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 178
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 179
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 180
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 181
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 182
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 183
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 184
    iput-object p8, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 185
    iput-wide p9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 186
    iput-wide p11, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 187
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 188
    move/from16 v0, p15

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 189
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 190
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 191
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 192
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 193
    move/from16 v0, p19

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 194
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 195
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->msgId:Ljava/lang/String;

    .line 196
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    move/from16 v0, p19

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 199
    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;J)V
    .locals 22
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "address"    # Ljava/lang/CharSequence;
    .param p5, "msgId"    # Ljava/lang/String;
    .param p6, "countryIso"    # Ljava/lang/String;
    .param p7, "geocode"    # Ljava/lang/String;
    .param p8, "callTypes"    # [I
    .param p9, "date"    # J
    .param p11, "duration"    # J
    .param p13, "logType"    # I
    .param p14, "name"    # Ljava/lang/CharSequence;
    .param p15, "numberType"    # I
    .param p16, "numberLabel"    # Ljava/lang/CharSequence;
    .param p17, "contactUri"    # Landroid/net/Uri;
    .param p18, "photoUri"    # Landroid/net/Uri;
    .param p19, "contactId"    # J

    .prologue
    .line 123
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-wide/from16 v20, p19

    invoke-direct/range {v0 .. v21}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    .line 125
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;IJZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "address"    # Ljava/lang/CharSequence;
    .param p5, "msgId"    # Ljava/lang/String;
    .param p6, "countryIso"    # Ljava/lang/String;
    .param p7, "geocode"    # Ljava/lang/String;
    .param p8, "callTypes"    # [I
    .param p9, "date"    # J
    .param p11, "duration"    # J
    .param p13, "logType"    # I
    .param p14, "name"    # Ljava/lang/CharSequence;
    .param p15, "numberType"    # I
    .param p16, "numberLabel"    # Ljava/lang/CharSequence;
    .param p17, "contactUri"    # Landroid/net/Uri;
    .param p18, "photoUri"    # Landroid/net/Uri;
    .param p19, "cnapName"    # Ljava/lang/String;
    .param p20, "serviceType"    # I
    .param p21, "cdnipNumber"    # Ljava/lang/String;
    .param p22, "simnum"    # I
    .param p23, "contactId"    # J
    .param p25, "isVoLTEEnabled"    # Z

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->roamingCall:Ljava/lang/String;

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->iddValue:Ljava/lang/String;

    .line 64
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 65
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 67
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 68
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 70
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 147
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 148
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 149
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 150
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 151
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 152
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 153
    iput-object p8, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 154
    iput-wide p9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 155
    iput-wide p11, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 156
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 157
    move/from16 v0, p15

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 158
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 159
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 160
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 161
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 162
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    .line 163
    move/from16 v0, p20

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    .line 164
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cdnipNumber:Ljava/lang/String;

    .line 165
    move/from16 v0, p22

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 166
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 167
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->msgId:Ljava/lang/String;

    .line 168
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    move/from16 v0, p22

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 171
    :cond_0
    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 172
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;JZ)V
    .locals 26
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "address"    # Ljava/lang/CharSequence;
    .param p5, "msgId"    # Ljava/lang/String;
    .param p6, "countryIso"    # Ljava/lang/String;
    .param p7, "geocode"    # Ljava/lang/String;
    .param p8, "callTypes"    # [I
    .param p9, "date"    # J
    .param p11, "duration"    # J
    .param p13, "logType"    # I
    .param p14, "name"    # Ljava/lang/CharSequence;
    .param p15, "numberType"    # I
    .param p16, "numberLabel"    # Ljava/lang/CharSequence;
    .param p17, "contactUri"    # Landroid/net/Uri;
    .param p18, "photoUri"    # Landroid/net/Uri;
    .param p19, "cnapName"    # Ljava/lang/String;
    .param p20, "serviceType"    # I
    .param p21, "cdnipNumber"    # Ljava/lang/String;
    .param p22, "contactId"    # J
    .param p24, "isVoLTEEnabled"    # Z

    .prologue
    .line 131
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-wide/from16 v23, p22

    move/from16 v25, p24

    invoke-direct/range {v0 .. v25}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;IJZ)V

    .line 133
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "address"    # Ljava/lang/CharSequence;
    .param p5, "countryIso"    # Ljava/lang/String;
    .param p6, "geocode"    # Ljava/lang/String;
    .param p7, "callTypes"    # [I
    .param p8, "date"    # J
    .param p10, "duration"    # J
    .param p12, "logType"    # I
    .param p13, "name"    # Ljava/lang/CharSequence;
    .param p14, "numberType"    # I
    .param p15, "numberLabel"    # Ljava/lang/CharSequence;
    .param p16, "contactUri"    # Landroid/net/Uri;
    .param p17, "photoUri"    # Landroid/net/Uri;
    .param p18, "serviceType"    # I
    .param p19, "cnapName"    # Ljava/lang/String;
    .param p20, "cdnipNumber"    # Ljava/lang/String;
    .param p21, "contactId"    # J
    .param p23, "isVoLTEEnabled"    # Z

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->roamingCall:Ljava/lang/String;

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->iddValue:Ljava/lang/String;

    .line 64
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 65
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 67
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 68
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 70
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 295
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 296
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 297
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 298
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 299
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 300
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 301
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 302
    iput-wide p8, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 303
    iput-wide p10, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 304
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 305
    move/from16 v0, p14

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 306
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 307
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 308
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 309
    move/from16 v0, p12

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 310
    move/from16 v0, p18

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    .line 311
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    .line 312
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cdnipNumber:Ljava/lang/String;

    .line 313
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 314
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 316
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "countryIso"    # Ljava/lang/String;
    .param p6, "geocode"    # Ljava/lang/String;
    .param p7, "callTypes"    # [I
    .param p8, "date"    # J
    .param p10, "duration"    # J
    .param p12, "logType"    # I
    .param p13, "name"    # Ljava/lang/CharSequence;
    .param p14, "numberType"    # I
    .param p15, "numberLabel"    # Ljava/lang/CharSequence;
    .param p16, "contactUri"    # Landroid/net/Uri;
    .param p17, "photoUri"    # Landroid/net/Uri;
    .param p18, "simnum"    # I
    .param p19, "callOutDuraton"    # J

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->roamingCall:Ljava/lang/String;

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->iddValue:Ljava/lang/String;

    .line 64
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 65
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 67
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 68
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 70
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 232
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 233
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 234
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 235
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->msgId:Ljava/lang/String;

    .line 236
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 237
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 238
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 239
    iput-wide p8, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 240
    iput-wide p10, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 241
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 242
    move/from16 v0, p14

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 243
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 244
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 245
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 246
    move/from16 v0, p12

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 247
    move/from16 v0, p18

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 248
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 250
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 21
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "logType"    # I
    .param p12, "name"    # Ljava/lang/CharSequence;
    .param p13, "numberType"    # I
    .param p14, "numberLabel"    # Ljava/lang/CharSequence;
    .param p15, "contactUri"    # Landroid/net/Uri;
    .param p16, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 115
    const-string v4, ""

    const/4 v5, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    invoke-direct/range {v0 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;J)V

    .line 117
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V
    .locals 22
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "logType"    # I
    .param p12, "name"    # Ljava/lang/CharSequence;
    .param p13, "numberType"    # I
    .param p14, "numberLabel"    # Ljava/lang/CharSequence;
    .param p15, "contactUri"    # Landroid/net/Uri;
    .param p16, "photoUri"    # Landroid/net/Uri;
    .param p17, "simnum"    # I

    .prologue
    .line 139
    const-string v4, ""

    const/4 v5, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move/from16 v19, p17

    invoke-direct/range {v0 .. v21}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    .line 141
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "logType"    # I
    .param p12, "name"    # Ljava/lang/CharSequence;
    .param p13, "numberType"    # I
    .param p14, "numberLabel"    # Ljava/lang/CharSequence;
    .param p15, "contactUri"    # Landroid/net/Uri;
    .param p16, "photoUri"    # Landroid/net/Uri;
    .param p17, "simnum"    # I
    .param p18, "callOutDuraton"    # J
    .param p20, "roamingCall"    # Ljava/lang/String;
    .param p21, "iddValue"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->roamingCall:Ljava/lang/String;

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->iddValue:Ljava/lang/String;

    .line 64
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 65
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 67
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 68
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 70
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 205
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 206
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 207
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 208
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 209
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 210
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 211
    iput-wide p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 212
    iput-wide p9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 213
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 214
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 215
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 216
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 217
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 218
    iput p11, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 219
    move/from16 v0, p17

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 220
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 221
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->roamingCall:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->iddValue:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "logType"    # I
    .param p12, "name"    # Ljava/lang/CharSequence;
    .param p13, "numberType"    # I
    .param p14, "numberLabel"    # Ljava/lang/CharSequence;
    .param p15, "contactUri"    # Landroid/net/Uri;
    .param p16, "photoUri"    # Landroid/net/Uri;
    .param p17, "simnum"    # I
    .param p18, "shardFilePath"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->roamingCall:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->iddValue:Ljava/lang/String;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 65
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 345
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 346
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 347
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 348
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 349
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 350
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 351
    iput-wide p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 352
    iput-wide p9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 353
    iput-object p12, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 354
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 355
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 356
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 357
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 358
    iput p11, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 359
    move/from16 v0, p17

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 360
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->sharedFilePath:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 24
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "logType"    # I
    .param p12, "name"    # Ljava/lang/CharSequence;
    .param p13, "numberType"    # I
    .param p14, "numberLabel"    # Ljava/lang/CharSequence;
    .param p15, "contactUri"    # Landroid/net/Uri;
    .param p16, "photoUri"    # Landroid/net/Uri;
    .param p17, "serviceType"    # I
    .param p18, "cnapName"    # Ljava/lang/String;
    .param p19, "cdnipNumber"    # Ljava/lang/String;
    .param p20, "isVoLTEEnabled"    # Z

    .prologue
    .line 259
    const-string v4, ""

    const-wide/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v23, p20

    invoke-direct/range {v0 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 261
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "logType"    # I
    .param p12, "name"    # Ljava/lang/CharSequence;
    .param p13, "numberType"    # I
    .param p14, "numberLabel"    # Ljava/lang/CharSequence;
    .param p15, "contactUri"    # Landroid/net/Uri;
    .param p16, "photoUri"    # Landroid/net/Uri;
    .param p17, "accountType"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->roamingCall:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->iddValue:Ljava/lang/String;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 65
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 323
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 324
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 325
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 326
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 327
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 328
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 329
    iput-wide p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 330
    iput-wide p9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 331
    iput-object p12, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 332
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 333
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 334
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 335
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 336
    iput p11, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 337
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->accountType:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 24
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "address"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "logType"    # I
    .param p12, "name"    # Ljava/lang/CharSequence;
    .param p13, "numberType"    # I
    .param p14, "numberLabel"    # Ljava/lang/CharSequence;
    .param p15, "contactUri"    # Landroid/net/Uri;
    .param p16, "photoUri"    # Landroid/net/Uri;
    .param p17, "serviceType"    # I
    .param p18, "cnapName"    # Ljava/lang/String;
    .param p19, "cdnipNumber"    # Ljava/lang/String;
    .param p20, "contactId"    # J
    .param p22, "isVoLTEEnabled"    # Z

    .prologue
    .line 287
    const/4 v1, -0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-wide/from16 v21, p20

    move/from16 v23, p22

    invoke-direct/range {v0 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 289
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJI)V
    .locals 21
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "geocode"    # Ljava/lang/String;
    .param p5, "callTypes"    # [I
    .param p6, "date"    # J
    .param p8, "duration"    # J
    .param p10, "logType"    # I

    .prologue
    .line 97
    const/4 v1, -0x1

    const-string v4, ""

    const/4 v5, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    const-string v16, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-direct/range {v0 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;J)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 24
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "geocode"    # Ljava/lang/String;
    .param p5, "callTypes"    # [I
    .param p6, "date"    # J
    .param p8, "duration"    # J
    .param p10, "logType"    # I
    .param p11, "serviceType"    # I
    .param p12, "cnapName"    # Ljava/lang/String;
    .param p13, "cdnipNumber"    # Ljava/lang/String;
    .param p14, "isVoLTEEnabled"    # Z

    .prologue
    .line 269
    const/4 v1, -0x1

    const-string v4, ""

    const-string v13, ""

    const/4 v14, 0x0

    const-string v15, ""

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v18, p11

    move-object/from16 v19, p12

    move-object/from16 v20, p13

    move/from16 v23, p14

    invoke-direct/range {v0 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 271
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 21
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "geocode"    # Ljava/lang/String;
    .param p5, "callTypes"    # [I
    .param p6, "date"    # J
    .param p8, "duration"    # J
    .param p10, "logType"    # I
    .param p11, "name"    # Ljava/lang/CharSequence;
    .param p12, "numberType"    # I
    .param p13, "numberLabel"    # Ljava/lang/CharSequence;
    .param p14, "contactUri"    # Landroid/net/Uri;
    .param p15, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 106
    const/4 v1, -0x1

    const-string v4, ""

    const/4 v5, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    invoke-direct/range {v0 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;J)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 24
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "geocode"    # Ljava/lang/String;
    .param p5, "callTypes"    # [I
    .param p6, "date"    # J
    .param p8, "duration"    # J
    .param p10, "logType"    # I
    .param p11, "name"    # Ljava/lang/CharSequence;
    .param p12, "numberType"    # I
    .param p13, "numberLabel"    # Ljava/lang/CharSequence;
    .param p14, "contactUri"    # Landroid/net/Uri;
    .param p15, "photoUri"    # Landroid/net/Uri;
    .param p16, "serviceType"    # I
    .param p17, "cnapName"    # Ljava/lang/String;
    .param p18, "cdnipNumber"    # Ljava/lang/String;
    .param p19, "isVoLTEEnabled"    # Z

    .prologue
    .line 278
    const/4 v1, -0x1

    const-string v4, ""

    const-wide/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move/from16 v23, p19

    invoke-direct/range {v0 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 280
    return-void
.end method
