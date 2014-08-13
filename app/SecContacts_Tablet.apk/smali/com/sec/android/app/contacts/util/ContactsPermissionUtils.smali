.class public Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;
.super Ljava/lang/Object;
.source "ContactsPermissionUtils.java"


# static fields
.field private static final DIALOG_TYPE_DATA_POSTAL:I = 0x1

.field private static final DIALOG_TYPE_DATA_WEB:I = 0x0

.field private static final DIALOG_TYPE_LOCATION_POSTAL:I = 0x2

.field private static final PEMISSION_PREF_NAME:Ljava/lang/String; = "permission_pref"

.field private static final PREF_KEY_DATA_PERMISSION_POPUP_POSTAL:Ljava/lang/String; = "data_permission_popup_postal"

.field private static final PREF_KEY_DATA_PERMISSION_POPUP_WEB:Ljava/lang/String; = "data_permission_popup_web"

.field private static final PREF_KEY_LOCATION_PERMISSION_POPUP:Ljava/lang/String; = "location_permission_popup"

.field public static final TAG:Ljava/lang/String; = "ContactsPermissionUtils"

.field private static mChecked:Z

.field private static mDialogType:I

.field private static mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->mChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->mChecked:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 40
    sput-boolean p0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->mChecked:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->setAllowPemission(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->getAllowPermission(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 40
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->setDialogType(I)V

    return-void
.end method

.method static synthetic access$400()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static createPermissionPopup(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 112
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->getDialogType()I

    move-result v3

    .line 113
    .local v3, "dialogType":I
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 116
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f04006d

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 117
    .local v9, "view":Landroid/view/View;
    const v10, 0x7f09019f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 119
    .local v7, "setDoNotShowAgainView":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    const v10, 0x7f0901a0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 122
    .local v1, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v10, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$1;

    invoke-direct {v10, v1}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$1;-><init>(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const/4 v8, 0x0

    .line 135
    .local v8, "titleRes":I
    const/4 v2, 0x0

    .line 136
    .local v2, "contentRes":I
    packed-switch v3, :pswitch_data_0

    .line 156
    :goto_0
    const v10, 0x7f09019d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 157
    .local v5, "message":Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 159
    const v10, 0x7f09019e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 160
    .local v6, "messageItem":Landroid/widget/TextView;
    const/4 v10, 0x2

    if-eq v3, v10, :cond_0

    .line 161
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :cond_0
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    new-instance v12, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$3;

    invoke-direct {v12, p0, v3}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$3;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    new-instance v12, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$2;

    invoke-direct {v12}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$2;-><init>()V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    .line 139
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "message":Landroid/widget/TextView;
    .end local v6    # "messageItem":Landroid/widget/TextView;
    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->isWlanConnected(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 140
    const v8, 0x7f0e050a

    .line 141
    const v2, 0x7f0e050c

    goto :goto_0

    .line 143
    :cond_1
    const v8, 0x7f0e0509

    .line 144
    const v2, 0x7f0e050b

    .line 146
    goto :goto_0

    .line 149
    :pswitch_1
    const v8, 0x7f0e050d

    .line 150
    const v2, 0x7f0e050e

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getAllowPermission(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, "prefStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 252
    :goto_0
    const-string v2, "permission_pref"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 240
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v1, "data_permission_popup_web"

    .line 241
    goto :goto_0

    .line 243
    :pswitch_1
    const-string v1, "data_permission_popup_postal"

    .line 244
    goto :goto_0

    .line 246
    :pswitch_2
    const-string v1, "location_permission_popup"

    .line 247
    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getDialogType()I
    .locals 3

    .prologue
    .line 262
    const-string v0, "ContactsPermissionUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDialogType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->mDialogType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget v0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->mDialogType:I

    return v0
.end method

.method public static isNeedConfirm(Landroid/content/Context;Lcom/android/contacts/quickcontact/Action;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Lcom/android/contacts/quickcontact/Action;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnablePinyinHighlight()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "mimeType":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->mIntent:Landroid/content/Intent;

    .line 64
    const-string v3, "vnd.android.cursor.item/website"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    :cond_2
    const-string v3, "vnd.android.cursor.item/website"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    invoke-static {p0, v1}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->getAllowPermission(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->setDialogType(I)V

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_3
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-static {p0, v2}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->getAllowPermission(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 75
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->setDialogType(I)V

    move v1, v2

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-static {p0, v4}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->getAllowPermission(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->setDialogType(I)V

    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public static isNeedConfirm(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnablePinyinHighlight()Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    sput-object p2, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->mIntent:Landroid/content/Intent;

    .line 90
    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    :cond_2
    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    invoke-static {p0, v0}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->getAllowPermission(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->setDialogType(I)V

    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_3
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-static {p0, v1}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->getAllowPermission(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 101
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->setDialogType(I)V

    move v0, v1

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    invoke-static {p0, v3}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->getAllowPermission(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->setDialogType(I)V

    move v0, v1

    .line 105
    goto :goto_0
.end method

.method private static isWlanConnected(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    if-nez p0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v2

    .line 200
    :cond_1
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 202
    .local v1, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 203
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 207
    goto :goto_0
.end method

.method private static setAllowPemission(Landroid/content/Context;IZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "value"    # Z

    .prologue
    .line 213
    const/4 v2, 0x0

    .line 215
    .local v2, "prefStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 229
    :goto_0
    const-string v3, "permission_pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 230
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    return-void

    .line 217
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "data_permission_popup_web"

    .line 218
    goto :goto_0

    .line 220
    :pswitch_1
    const-string v2, "data_permission_popup_postal"

    .line 221
    goto :goto_0

    .line 223
    :pswitch_2
    const-string v2, "location_permission_popup"

    .line 224
    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static setDialogType(I)V
    .locals 0
    .param p0, "dialogType"    # I

    .prologue
    .line 257
    sput p0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->mDialogType:I

    .line 259
    return-void
.end method
