.class public Lcom/android/systemui/net/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source "NetworkOverLimitActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkOverLimitActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/net/NetworkOverLimitActivity;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->snoozePolicy(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method private static getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I
    .locals 1
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    const v0, 0x7f0b00ad

    :goto_0
    return v0

    .line 122
    :pswitch_0
    const v0, 0x7f0b00aa

    goto :goto_0

    .line 124
    :pswitch_1
    const v0, 0x7f0b00ab

    goto :goto_0

    .line 126
    :pswitch_2
    const v0, 0x7f0b00ac

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isGuestMode()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method private isLightTheme()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method private snoozePolicy(Landroid/net/NetworkTemplate;)V
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 110
    const-string v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    .line 113
    .local v1, "policyService":Landroid/net/INetworkPolicyManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->snoozeLimit(Landroid/net/NetworkTemplate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NetworkOverLimitActivity"

    const-string v3, "problem snoozing network policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 64
    .local v3, "template":Landroid/net/NetworkTemplate;
    const/4 v4, 0x0

    .line 65
    .local v4, "theme":I
    invoke-direct {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->isLightTheme()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    const/4 v4, 0x5

    .line 68
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 71
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {v3}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 72
    const v5, 0x7f0b00ae

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 74
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->isGuestMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    const v5, 0x7f0b00af

    new-instance v6, Lcom/android/systemui/net/NetworkOverLimitActivity$1;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/net/NetworkOverLimitActivity$1;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 85
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v5, Lcom/android/systemui/net/NetworkOverLimitActivity$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/net/NetworkOverLimitActivity$2;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 91
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 92
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const v5, 0x3f19999a

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 93
    const/4 v5, 0x2

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 94
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 95
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 96
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 97
    return-void
.end method
