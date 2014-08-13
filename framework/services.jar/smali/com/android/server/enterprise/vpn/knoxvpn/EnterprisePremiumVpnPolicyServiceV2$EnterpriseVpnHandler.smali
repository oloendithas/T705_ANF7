.class Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;
.super Landroid/os/Handler;
.source "EnterprisePremiumVpnPolicyServiceV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseVpnHandler"
.end annotation


# static fields
.field private static final ACTION_CONTAINER_REMOVED:I = 0xa

.field private static final ACTION_PACKAGE_ADDED:I = 0x2

.field private static final ACTION_PACKAGE_REMOVED:I = 0x3

.field private static final ACTION_RETRY_VPN_CONNECTION:I = 0x6

.field private static final ACTION_START_VPN_AFTER_MIGRATION:I = 0xb

.field private static final ACTION_USER_SWITCHED:I = 0x9

.field private static final ACTION_VPN_INITIALIZE_BIND:I = 0x8

.field private static final CONNECTIVITY_ACTION:I = 0x4

.field private static final ENTERPRISE_STATUS_CALLBACK:I = 0x1

.field private static final GET_STATUS_IDLE:I = 0x1

.field private static final VPN_CONNECT_FAILURE:I = 0x5

.field private static final VPN_CONNECT_READY:I = 0x1

.field private static final VPN_CONNECT_SUCCESS:I = 0x4

.field private static final VPN_PROFILE_CONNECTING:I = 0x2

.field private static final VPN_PROFILE_DELETE:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0

    .prologue
    .line 3160
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 41
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3179
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : Message received"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 3181
    .local v20, "map":Landroid/os/Bundle;
    const/16 v31, -0x1

    .line 3182
    .local v31, "uid":I
    const/16 v35, 0x0

    .line 3183
    .local v35, "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    const/16 v22, 0x0

    .local v22, "packageName":Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, "profileName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3184
    .local v10, "errorString":Ljava/lang/String;
    const/16 v29, -0x1

    .line 3185
    .local v29, "status":I
    const/4 v5, 0x0

    .line 3186
    .local v5, "check_install_type":Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_0

    .line 3571
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3188
    :pswitch_1
    const-string/jumbo v36, "status"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 3189
    const-string v36, "profileName"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3190
    const-string v36, "errorString"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3191
    if-nez v10, :cond_1

    .line 3192
    const-string v10, "Empty"

    .line 3194
    :cond_1
    const-string/jumbo v36, "state"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 3195
    .local v28, "state":I
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "vpn handle : callback to status : profile : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ",  state : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", status : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "vpn handle : callback to status : Error "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    const/4 v11, 0x0

    .line 3198
    .local v11, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 3199
    .local v34, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-eqz v34, :cond_19

    .line 3200
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v17

    .line 3201
    .local v17, "list":Ljava/util/ArrayList;
    if-eqz v17, :cond_0

    .line 3202
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 3203
    .local v4, "array":[Ljava/lang/Object;
    array-length v0, v4

    move/from16 v16, v0

    .line 3204
    .local v16, "length":I
    if-nez v28, :cond_13

    .line 3205
    packed-switch v29, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    .line 3265
    :pswitch_3
    const/4 v11, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_c

    .line 3266
    aget-object v35, v4, v11

    .end local v35    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v35, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3267
    .restart local v35    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    .line 3268
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3269
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v31

    .line 3270
    const-string v36, "addAllOrPerApp"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_a

    .line 3271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v37

    sget-object v38, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual/range {v36 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 3272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v38

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I
    invoke-static/range {v37 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v38, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v39

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I
    invoke-static/range {v38 .. v39}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v38

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move/from16 v2, v37

    move/from16 v3, v38

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3274
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3265
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 3207
    :pswitch_4
    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_4

    .line 3208
    aget-object v35, v4, v11

    .end local v35    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v35, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3210
    .restart local v35    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v36

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_2

    .line 3212
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_2

    .line 3213
    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3214
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3215
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v31

    .line 3216
    const-string v36, "addAllOrPerApp"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3

    .line 3218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v37

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 3219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v38

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I
    invoke-static/range {v37 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v38, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v39

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I
    invoke-static/range {v38 .. v39}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v38

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move/from16 v2, v37

    move/from16 v3, v38

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;IILjava/lang/String;)V

    .line 3207
    :cond_2
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 3222
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move/from16 v2, v31

    move/from16 v3, v31

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_4

    .line 3227
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3228
    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 3229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 3231
    .local v23, "profileErrorMessageSuccess":Z
    if-eqz v23, :cond_0

    .line 3232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v36

    if-lez v36, :cond_5

    .line 3234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_0

    .line 3236
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_0

    .line 3241
    .end local v23    # "profileErrorMessageSuccess":Z
    :pswitch_5
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v11, v0, :cond_8

    .line 3242
    aget-object v35, v4, v11

    .end local v35    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v35, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3243
    .restart local v35    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_7

    .line 3244
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3245
    const-string v36, "addAllOrPerApp"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_6

    .line 3246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v37

    sget-object v38, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual/range {v36 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 3247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v38

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I
    invoke-static/range {v37 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v38, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v39

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I
    invoke-static/range {v38 .. v39}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v38

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move/from16 v2, v37

    move/from16 v3, v38

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3249
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3241
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 3252
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v37

    sget-object v38, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual/range {v36 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v37

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v38

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move/from16 v2, v37

    move/from16 v3, v38

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3257
    :cond_7
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    goto :goto_6

    .line 3259
    :cond_8
    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 3260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;)V

    .line 3261
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3262
    :cond_9
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_0

    .line 3277
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    sget-object v37, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    move-object/from16 v0, v36

    move/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move/from16 v2, v31

    move/from16 v3, v31

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3281
    :cond_b
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3283
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 3285
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3286
    :cond_d
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_0

    .line 3289
    :pswitch_6
    const/16 v25, 0x0

    .line 3293
    .local v25, "profileRunning":Z
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : Handling VPN CONNECTING state on Network Change"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    const/4 v11, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v11, v0, :cond_10

    .line 3295
    aget-object v35, v4, v11

    .end local v35    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v35, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3296
    .restart local v35    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_f

    .line 3297
    const/16 v25, 0x1

    .line 3298
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3299
    const-string v36, "addAllOrPerApp"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_e

    .line 3300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v37

    sget-object v38, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual/range {v36 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 3301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v38

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I
    invoke-static/range {v37 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v38, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v39

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I
    invoke-static/range {v38 .. v39}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v38

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move/from16 v2, v37

    move/from16 v3, v38

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3303
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3294
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 3306
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v37

    sget-object v38, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual/range {v36 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v37

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v38

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move/from16 v2, v37

    move/from16 v3, v38

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3311
    :cond_f
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    goto :goto_8

    .line 3313
    :cond_10
    if-eqz v25, :cond_11

    .line 3314
    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 3315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    :cond_11
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3318
    :cond_12
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_0

    .line 3321
    .end local v25    # "profileRunning":Z
    :pswitch_7
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "vpn handle : The Start Connection callback for remove vpn connection method is recieved and its state is  "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "Status is "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3325
    :cond_13
    sparse-switch v29, :sswitch_data_0

    goto/16 :goto_0

    .line 3330
    :goto_9
    :sswitch_0
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : ready status : VPN disconnect successfully"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    const/4 v11, 0x0

    :goto_a
    move/from16 v0, v16

    if-ge v11, v0, :cond_16

    .line 3332
    aget-object v35, v4, v11

    .end local v35    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v35, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3333
    .restart local v35    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_15

    .line 3334
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3335
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v31

    .line 3336
    const-string v36, "addAllOrPerApp"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_14

    .line 3337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v37

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 3338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v38

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I
    invoke-static/range {v37 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v38, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v39

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I
    invoke-static/range {v38 .. v39}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v38

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move/from16 v2, v37

    move/from16 v3, v38

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3339
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3331
    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 3327
    :sswitch_1
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "vpn handle : fail status : VPN disconnect failure"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3342
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v37

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move/from16 v2, v31

    move/from16 v3, v31

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3345
    :cond_15
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    goto :goto_b

    .line 3347
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3348
    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 3349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 3350
    .restart local v23    # "profileErrorMessageSuccess":Z
    if-eqz v23, :cond_17

    .line 3351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v36

    if-lez v36, :cond_18

    .line 3353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3358
    :cond_17
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->runAllVpnService()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_0

    .line 3355
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto :goto_c

    .line 3363
    .end local v4    # "array":[Ljava/lang/Object;
    .end local v16    # "length":I
    .end local v17    # "list":Ljava/util/ArrayList;
    .end local v23    # "profileErrorMessageSuccess":Z
    :cond_19
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : ProfileNameVpnEntry returned null in handleMessage"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3367
    .end local v11    # "i":I
    .end local v28    # "state":I
    .end local v34    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :pswitch_8
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : Handle MSG package add"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    const-string/jumbo v36, "uid"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 3369
    const-string v36, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3370
    const-string v36, "new_install_or_update"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 3371
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_1a

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "vpn handle : The install type value during package added is "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    :cond_1a
    if-eqz v22, :cond_0

    .line 3373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v36

    invoke-static/range {v31 .. v31}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v37

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3374
    .local v30, "transformedPackageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_1b

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "The value of the transformed PackageName, when the package is added is"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    :cond_1b
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_1c

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "vpn handle : vpn handle : package add : PackageName and UID : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    :cond_1c
    const-string v36, "com.mocana.vpn.android"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1f

    invoke-static/range {v31 .. v31}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v36

    if-nez v36, :cond_1f

    .line 3377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileExist()Z
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 3378
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_1d

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "some vpn profile belonging to VPN 1.0 present, so the mocana binding is going to happen, when package is installed"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :cond_1d
    if-nez v5, :cond_1e

    .line 3380
    const/16 v36, 0x1

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->kvpn_install_type:Z
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$302(Z)Z

    .line 3382
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->bindMocanaVpnInterface()V

    goto/16 :goto_0

    .line 3384
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    move/from16 v2, v31

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->updatePackageData(Ljava/lang/String;I)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 3385
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : package add : Package found in DB with rule proceed with logic"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    sget-object v37, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    move-object/from16 v0, v36

    move/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    move/from16 v2, v31

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getVpnObjectFromDB(Ljava/lang/String;I)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;I)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    move-result-object v33

    .line 3388
    .local v33, "vpn":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    if-eqz v33, :cond_0

    .line 3389
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v24

    .line 3390
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v6

    .line 3391
    .local v6, "containerId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addToHashMap(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;)V

    .line 3393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->isNetworkConnected()Z
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z

    move-result v36

    if-eqz v36, :cond_25

    const/16 v36, -0x1

    move/from16 v0, v36

    if-le v6, v0, :cond_25

    .line 3394
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : pakcage add : Network is connected"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-result-object v36

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v36, v0

    if-eqz v36, :cond_0

    .line 3397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    const-string v37, "key_vpn"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v27

    .line 3398
    .local v27, "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v32, 0x0

    .line 3399
    .local v32, "value":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v36

    if-nez v36, :cond_20

    .line 3400
    invoke-virtual/range {v27 .. v27}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "value":Ljava/lang/String;
    check-cast v32, Ljava/lang/String;

    .line 3403
    .restart local v32    # "value":Ljava/lang/String;
    :cond_20
    if-eqz v32, :cond_0

    .line 3404
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_21

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "vpn handle : package add : Callback state: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    :cond_21
    const-string v36, "CONNECTED"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_23

    .line 3406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 3407
    .restart local v34    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-eqz v34, :cond_22

    .line 3408
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v14

    .line 3409
    .local v14, "interfaceName":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 3410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3411
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3412
    const/16 v36, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v31

    move/from16 v3, v31

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3434
    .end local v14    # "interfaceName":Ljava/lang/String;
    .end local v27    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v32    # "value":Ljava/lang/String;
    .end local v34    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catch_0
    move-exception v8

    .line 3435
    .local v8, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "vpn handle : pakcage add : Exception at mocana:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3416
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v27    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v32    # "value":Ljava/lang/String;
    .restart local v34    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_22
    :try_start_1
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : Profilename not found in the map"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3418
    .end local v34    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_23
    const-string v36, "CONNECTING"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_0

    .line 3419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-result-object v36

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v36, v0

    new-instance v37, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-direct/range {v37 .. v40}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v38, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I
    invoke-static/range {v38 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)I

    move-result v38

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move-object/from16 v2, v37

    move/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v36

    if-nez v36, :cond_0

    .line 3421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    const-string v37, "key_vpn"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v27

    .line 3422
    const/16 v32, 0x0

    .line 3423
    invoke-virtual/range {v27 .. v27}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v36

    if-nez v36, :cond_24

    .line 3424
    invoke-virtual/range {v27 .. v27}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "value":Ljava/lang/String;
    check-cast v32, Ljava/lang/String;

    .line 3425
    .restart local v32    # "value":Ljava/lang/String;
    if-eqz v32, :cond_24

    .line 3426
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "vpn handle : package add : Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move-object/from16 v2, v32

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : package add : Cannot start vpn, mocana returned error"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3438
    .end local v27    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v32    # "value":Ljava/lang/String;
    :cond_25
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : package add : Network is not connected"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3445
    .end local v6    # "containerId":I
    .end local v30    # "transformedPackageName":Ljava/lang/String;
    .end local v33    # "vpn":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    :pswitch_9
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string v37, "Package removal intent is reached"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    const-string v36, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3447
    const-string/jumbo v36, "uid"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 3448
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_26

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "The original packageName to be removed is "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " whose uid is "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " and the container id is "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static/range {v31 .. v31}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " and the containerizedPackageName is "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v38, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static/range {v38 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v38

    invoke-static/range {v31 .. v31}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v39

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    :cond_26
    const-string v36, "com.mocana.vpn.android"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_27

    .line 3451
    invoke-static/range {v31 .. v31}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v36

    if-nez v36, :cond_27

    .line 3452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 3459
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v37, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static/range {v37 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v37

    invoke-static/range {v31 .. v31}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v38

    move-object/from16 v0, v37

    move/from16 v1, v38

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    .end local v35    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v35, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3460
    .restart local v35    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    if-eqz v35, :cond_0

    .line 3461
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v24

    .line 3462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->deleteUIDFromPackageData(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 3463
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : package remove>> Remove from iptable/hashmap"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v37, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static/range {v37 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v37

    invoke-static/range {v31 .. v31}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v38

    move-object/from16 v0, v37

    move/from16 v1, v38

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v37

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->removeFromHashMapByPackageName(Ljava/lang/String;)V
    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3469
    :pswitch_a
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : connectivity action : Handle MSG CONNECTIVITY_ACTION"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    const-string/jumbo v36, "status"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 3471
    .local v21, "networkState":Z
    const/16 v36, 0x1

    move/from16 v0, v21

    move/from16 v1, v36

    if-ne v0, v1, :cond_28

    .line 3472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 3474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->runAllVpnService()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_0

    .line 3476
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto/16 :goto_0

    .line 3481
    .end local v21    # "networkState":Z
    :pswitch_b
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : retry vpn"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->isNetworkConnected()Z
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z

    move-result v36

    if-eqz v36, :cond_33

    .line 3484
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : retry vpn : Network is connected"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-result-object v36

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v36, v0

    if-eqz v36, :cond_0

    .line 3487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_29
    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_32

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3488
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 3489
    .local v9, "entry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v18

    .line 3490
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    const/16 v26, 0x1

    .line 3493
    .local v26, "removeProfileError":Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_2b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3494
    .local v19, "localState":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v36

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_2a

    .line 3495
    const/16 v26, 0x0

    goto :goto_e

    .line 3498
    .end local v19    # "localState":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    :cond_2b
    if-eqz v26, :cond_2c

    .line 3499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_d

    .line 3536
    .end local v9    # "entry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    .end local v18    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .end local v26    # "removeProfileError":Z
    :catch_1
    move-exception v8

    .line 3537
    .restart local v8    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "vpn handle : retry vpn : Exception at mocana:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3501
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v9    # "entry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v18    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .restart local v26    # "removeProfileError":Z
    :cond_2c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    const-string v37, "key_vpn"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v27

    .line 3502
    .restart local v27    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v32, 0x0

    .line 3503
    .restart local v32    # "value":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v36

    if-nez v36, :cond_2d

    .line 3504
    invoke-virtual/range {v27 .. v27}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "value":Ljava/lang/String;
    check-cast v32, Ljava/lang/String;

    .line 3507
    .restart local v32    # "value":Ljava/lang/String;
    :cond_2d
    if-eqz v32, :cond_29

    .line 3508
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "vpn handle : retry vpn : Callback state: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    const-string v36, "IDLE"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_2e

    const-string v36, "FAILED"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_29

    .line 3510
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    const/16 v37, -0x1

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I
    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3902(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    .line 3511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileAddedAllPackagesToVpn(Ljava/lang/String;)Z
    invoke-static {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_30

    .line 3512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I
    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3902(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    .line 3516
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-result-object v36

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v36, v0

    new-instance v37, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I
    invoke-static/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)I

    move-result v40

    invoke-direct/range {v37 .. v40}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v38, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I
    invoke-static/range {v38 .. v38}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)I

    move-result v38

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-interface {v0, v15, v1, v2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v36

    if-nez v36, :cond_31

    .line 3518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    const-string v37, "key_vpn"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v27

    .line 3520
    const/16 v32, 0x0

    .line 3521
    invoke-virtual/range {v27 .. v27}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v36

    if-nez v36, :cond_2f

    .line 3522
    invoke-virtual/range {v27 .. v27}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "value":Ljava/lang/String;
    check-cast v32, Ljava/lang/String;

    .line 3523
    .restart local v32    # "value":Ljava/lang/String;
    if-eqz v32, :cond_2f

    .line 3524
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "vpn handle : retry vpn : Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    :cond_2f
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : retry vpn : Cannot start vpn, mocana returned error"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 3514
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I
    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3902(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    goto/16 :goto_f

    .line 3528
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 3534
    .end local v9    # "entry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    .end local v18    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .end local v26    # "removeProfileError":Z
    .end local v27    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v32    # "value":Ljava/lang/String;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 3540
    :cond_33
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : retry vpn : Network is not connected"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3544
    :pswitch_c
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : vpn init bind"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileExist()Z
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 3546
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v36

    if-eqz v36, :cond_34

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "some vpn profile belonging to VPN 1.0 present, so the mocana 1.0 binding is going to happen after reboot"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->bindMocanaVpnInterface()V

    goto/16 :goto_0

    .line 3551
    :pswitch_d
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : user switch is reached"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3555
    :pswitch_e
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : The Container is getting removed"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    const-string v36, "container_removed"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 3557
    .local v7, "container_id_removed":I
    const/16 v36, -0x1

    move/from16 v0, v36

    if-eq v7, v0, :cond_0

    .line 3558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->clearDatabaseAfterContainerRemoval(I)V
    invoke-static {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)V

    goto/16 :goto_0

    .line 3562
    .end local v7    # "container_id_removed":I
    :pswitch_f
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "vpn handle : initialize vpn after migration done"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setupIntentFilter()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->initializeHashtable()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileExist()Z
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z

    move-result v36

    if-eqz v36, :cond_35

    .line 3566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->bindMocanaVpnInterface()V

    .line 3568
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->runAllVpnService()V
    invoke-static/range {v36 .. v36}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_0

    .line 3186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 3205
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 3325
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
