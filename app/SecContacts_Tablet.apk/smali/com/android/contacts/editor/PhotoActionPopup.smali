.class public Lcom/android/contacts/editor/PhotoActionPopup;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhotoActionPopup$Listener;,
        Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;,
        Lcom/android/contacts/editor/PhotoActionPopup$Modes;,
        Lcom/android/contacts/editor/PhotoActionPopup$Flags;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoActionPopup"

.field private static mphotoDlg:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    return-void
.end method

.method public static createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/app/AlertDialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;
    .param p3, "mode"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v1, "choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;>;"
    and-int/lit8 v3, p3, 0x2

    if-lez v3, :cond_0

    .line 103
    new-instance v3, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v4, 0x3

    const v5, 0x7f0e0074

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    and-int/lit8 v3, p3, 0x4

    if-lez v3, :cond_5

    .line 115
    invoke-static {p0}, Lcom/android/contacts/editor/PhotoActionPopup;->isAvailableAvatar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    new-instance v3, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v4, 0x7

    const v5, 0x7f0e040b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    new-instance v3, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v4, 0x2

    const v5, 0x7f0e019a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {p0}, Lcom/android/contacts/editor/PhotoActionPopup;->isAvailableTaggedPicture(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    new-instance v3, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v4, 0x6

    const v5, 0x7f0e040a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isCameraIntentRegistered(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    new-instance v3, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const v4, 0x7f0e0198

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/editor/PhotoActionPopup;->isAvailableSNote(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 127
    new-instance v3, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const v4, 0x7f0e0408

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_4
    invoke-static {p0}, Lcom/android/contacts/editor/PhotoActionPopup;->isAvailableSMemo(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    new-instance v3, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v4, 0x5

    const v5, 0x7f0e0409

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_5
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0401e3

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 137
    .local v0, "adapter":Landroid/widget/ListAdapter;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e0072

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, -0x1

    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$1;

    invoke-direct {v5, v1, p2}, Lcom/android/contacts/editor/PhotoActionPopup$1;-><init>(Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    invoke-virtual {v3, v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    .line 185
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 186
    .local v2, "mInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_6

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 191
    :cond_6
    sget-object v3, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    if-eqz v3, :cond_7

    .line 192
    sget-object v3, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    :cond_7
    sget-object v3, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    return-object v3
.end method

.method public static dismissDialog()V
    .locals 2

    .prologue
    .line 295
    :try_start_0
    sget-object v1, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 296
    sget-object v1, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 297
    const/4 v1, 0x0

    sput-object v1, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void

    .line 299
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    .line 300
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static isAvailableAvatar(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method private static isAvailableSMemo(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 261
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.widgetapp.diotek.smemo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    const/4 v1, 0x1

    .line 264
    :goto_0
    return v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static isAvailableSNote(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.snotebook"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return v2

    .line 249
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.snote"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 253
    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v2, v3

    .line 254
    goto :goto_0
.end method

.method private static isAvailableTaggedPicture(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const/4 v1, 0x1

    .line 270
    .local v1, "result":Z
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "buildcarrier":Ljava/lang/String;
    const-string v2, "aruba3gduosctc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const/4 v1, 0x0

    .line 274
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    const/4 v1, 0x0

    .line 277
    :cond_1
    return v1
.end method
