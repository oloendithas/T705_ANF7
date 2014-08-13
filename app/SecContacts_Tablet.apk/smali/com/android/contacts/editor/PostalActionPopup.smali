.class public Lcom/android/contacts/editor/PostalActionPopup;
.super Landroid/os/HandlerThread;
.source "PostalActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PostalActionPopup$ChoiceListItem;,
        Lcom/android/contacts/editor/PostalActionPopup$Posal;,
        Lcom/android/contacts/editor/PostalActionPopup$PosalData;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_POSTAL:Landroid/net/Uri;

.field private static final CONTENT_URI_POSTAL_MULTY:Landroid/net/Uri;

.field static final POSTAL_LOOKUP_LIMIT:J = 0x64L

.field private static final SEARCH_DATA_CURSOR:I = 0x2

.field private static final SEARCH_POSTAL_CHANGE:I = 0x1

.field private static final SEARCH_RESET:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PostalActionPopup"

.field private static mEnableBtn:Z

.field static mUri:Landroid/net/Uri;


# instance fields
.field private final POSTAL_LOOKUP_DELAY_MILLIS:J

.field private final mContext:Landroid/content/Context;

.field private mDataCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mMainHandler:Landroid/os/Handler;

.field private mPostalUri:Landroid/net/Uri;

.field private final mView:Lcom/android/contacts/editor/TextFieldsEditorView;

.field private mpostalDlg:Landroid/app/AlertDialog;

.field private retCity:Ljava/lang/String;

.field private retPostalCode:Ljava/lang/String;

.field private retPostalStr:Ljava/lang/String;

.field private retState:Ljava/lang/String;

.field private retStreetNumber:Ljava/lang/String;

.field private titleStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/editor/PostalActionPopup;->mEnableBtn:Z

    .line 76
    const-string v0, "content://com.sec.android.jpnpostalprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/PostalActionPopup;->CONTENT_URI_POSTAL:Landroid/net/Uri;

    .line 77
    const-string v0, "content://com.sec.android.jpnpostalprovider/multy_search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/PostalActionPopup;->CONTENT_URI_POSTAL_MULTY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/editor/TextFieldsEditorView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 83
    const-string v0, "PostalActionPopup"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 72
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/contacts/editor/PostalActionPopup;->POSTAL_LOOKUP_DELAY_MILLIS:J

    .line 84
    iput-object p1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/contacts/editor/PostalActionPopup;->mView:Lcom/android/contacts/editor/TextFieldsEditorView;

    .line 86
    new-instance v0, Lcom/android/contacts/editor/PostalActionPopup$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/PostalActionPopup$1;-><init>(Lcom/android/contacts/editor/PostalActionPopup;)V

    iput-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup;->mMainHandler:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/PostalActionPopup;)Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/PostalActionPopup;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup;->mView:Lcom/android/contacts/editor/TextFieldsEditorView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/PostalActionPopup;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/PostalActionPopup;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup;->retPostalStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/PostalActionPopup;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/PostalActionPopup;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/contacts/editor/PostalActionPopup;->retPostalStr:Ljava/lang/String;

    return-object p1
.end method

.method private static buildPostalSearchUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "values"    # Ljava/lang/String;

    .prologue
    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v1, "postalSb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ConfigAddressField"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "fields":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    sget-object v2, Lcom/android/contacts/editor/PostalActionPopup;->CONTENT_URI_POSTAL_MULTY:Landroid/net/Uri;

    invoke-static {v2, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/contacts/editor/PostalActionPopup;->mUri:Landroid/net/Uri;

    .line 412
    .end local v0    # "fields":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/contacts/editor/PostalActionPopup;->mUri:Landroid/net/Uri;

    return-object v2

    .line 409
    .restart local v0    # "fields":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/contacts/editor/PostalActionPopup;->CONTENT_URI_POSTAL:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/contacts/editor/PostalActionPopup;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getButtonEnable()Z
    .locals 1

    .prologue
    .line 478
    sget-boolean v0, Lcom/android/contacts/editor/PostalActionPopup;->mEnableBtn:Z

    return v0
.end method

.method private loadPostalAdderss(Landroid/net/Uri;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 137
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "PostalActionPopup"

    const-string v2, "Request - Start"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 140
    const-string v1, "PostalActionPopup"

    const-string v2, "Request - End"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/contacts/editor/PostalActionPopup;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 145
    :cond_0
    if-nez v8, :cond_1

    .line 146
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/contacts/editor/PostalActionPopup;->setButtonEnable(Z)V

    .line 147
    const-string v1, "PostalActionPopup"

    const-string v2, "loadPostalAdderss - cursor is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v9

    .line 203
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "PostalActionPopup"

    const-string v2, "loadPostalError: "

    invoke-static {v1, v2, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 151
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 152
    iget-object v6, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    .line 153
    .local v6, "activity":Landroid/app/Activity;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/contacts/editor/PostalActionPopup;->setButtonEnable(Z)V

    .line 155
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 156
    invoke-virtual {p0}, Lcom/android/contacts/editor/PostalActionPopup;->quit()Z

    goto :goto_0

    .line 161
    .end local v6    # "activity":Landroid/app/Activity;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 162
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 163
    :cond_3
    const/4 v10, 0x0

    .line 164
    .local v10, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, "add_message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e04d5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 168
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/editor/PostalActionPopup$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/editor/PostalActionPopup$2;-><init>(Lcom/android/contacts/editor/PostalActionPopup;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    .line 177
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 178
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/contacts/editor/PostalActionPopup;->setButtonEnable(Z)V

    .line 180
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/contacts/editor/PostalActionPopup$3;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/PostalActionPopup$3;-><init>(Lcom/android/contacts/editor/PostalActionPopup;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 192
    .end local v7    # "add_message":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 195
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/editor/PostalActionPopup;->showLimitPopup()V

    .line 197
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 201
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static setButtonEnable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 474
    sput-boolean p0, Lcom/android/contacts/editor/PostalActionPopup;->mEnableBtn:Z

    .line 475
    return-void
.end method


# virtual methods
.method public createPostalPopupMenu(Ljava/lang/String;)V
    .locals 5
    .param p1, "postalStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 310
    const-string v2, "PostalActionPopup"

    const-string v3, "-------START------- "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ConfigAddressField"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "fields":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup;->titleStr:Ljava/lang/String;

    .line 315
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 322
    .local v0, "check":C
    :goto_0
    invoke-static {v4}, Lcom/android/contacts/editor/PostalActionPopup;->setButtonEnable(Z)V

    .line 324
    const/16 v2, 0x2f

    if-le v0, v2, :cond_0

    const/16 v2, 0x3a

    if-ge v0, v2, :cond_0

    .line 325
    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 327
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/editor/PostalActionPopup;->buildPostalSearchUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup;->mPostalUri:Landroid/net/Uri;

    .line 328
    const-string v2, "PostalActionPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createPostalPopupMenu - mPostalUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/contacts/editor/PostalActionPopup;->buildPostalSearchUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0}, Lcom/android/contacts/editor/PostalActionPopup;->scheduleSuggestionLookup()V

    .line 330
    return-void

    .line 318
    .end local v0    # "check":C
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/editor/PostalActionPopup;->titleStr:Ljava/lang/String;

    .line 319
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0    # "check":C
    goto :goto_0
.end method

.method protected deliverNotification(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "dataCursor"    # Landroid/database/Cursor;

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 384
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    if-eqz p1, :cond_1

    .line 386
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/contacts/editor/PostalActionPopup;->setButtonEnable(Z)V

    .line 389
    invoke-virtual {p0}, Lcom/android/contacts/editor/PostalActionPopup;->quit()Z

    .line 396
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 394
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    .line 395
    invoke-virtual {p0}, Lcom/android/contacts/editor/PostalActionPopup;->showPopupMenu()V

    goto :goto_0
.end method

.method public dismissDialog()V
    .locals 2

    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 466
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/android/contacts/editor/PostalActionPopup$7;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/PostalActionPopup$7;-><init>(Lcom/android/contacts/editor/PostalActionPopup;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup;->mHandler:Landroid/os/Handler;

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/PostalActionPopup$Posal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 430
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/PostalActionPopup$Posal;>;"
    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_1

    .line 431
    const/4 v5, 0x0

    .line 432
    .local v5, "postal":Lcom/android/contacts/editor/PostalActionPopup$Posal;
    const-wide/16 v2, -0x1

    .line 433
    .local v2, "currentpostalId":J
    const-wide/16 v0, 0x0

    .line 434
    .local v0, "count":J
    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 436
    const-string v8, "PostalActionPopup"

    const-string v9, "Enter Data - Start"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v0, v8

    if-eqz v8, :cond_1

    .line 438
    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    const-string v10, "_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 440
    .local v6, "postalId":J
    cmp-long v8, v6, v2

    if-eqz v8, :cond_0

    .line 442
    new-instance v5, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    .end local v5    # "postal":Lcom/android/contacts/editor/PostalActionPopup$Posal;
    invoke-direct {v5}, Lcom/android/contacts/editor/PostalActionPopup$Posal;-><init>()V

    .line 443
    .restart local v5    # "postal":Lcom/android/contacts/editor/PostalActionPopup$Posal;
    iput-wide v6, v5, Lcom/android/contacts/editor/PostalActionPopup$Posal;->postalId:J

    .line 444
    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    const-string v10, "POSTALCODE"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/contacts/editor/PostalActionPopup$Posal;->postalCode:Ljava/lang/String;

    .line 445
    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    const-string v10, "STREETNUMBER"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/contacts/editor/PostalActionPopup$Posal;->streetnumber:Ljava/lang/String;

    .line 446
    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    const-string v10, "STATE"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/contacts/editor/PostalActionPopup$Posal;->state:Ljava/lang/String;

    .line 447
    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    const-string v10, "CITY"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/contacts/editor/PostalActionPopup$Posal;->city:Ljava/lang/String;

    .line 449
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    move-wide v2, v6

    .line 452
    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 453
    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    goto :goto_0

    .line 458
    .end local v0    # "count":J
    .end local v2    # "currentpostalId":J
    .end local v5    # "postal":Lcom/android/contacts/editor/PostalActionPopup$Posal;
    .end local v6    # "postalId":J
    :cond_1
    const-string v8, "PostalActionPopup"

    const-string v9, "Enter Data - End"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-object v4
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 333
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 351
    :goto_0
    :pswitch_0
    return-void

    .line 338
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 340
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/contacts/editor/PostalActionPopup;->setButtonEnable(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/android/contacts/editor/PostalActionPopup;->quit()Z

    goto :goto_0

    .line 346
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/PostalActionPopup;->loadPostalAdderss(Landroid/net/Uri;)V

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup;->mDataCursor:Landroid/database/Cursor;

    .line 119
    return-void
.end method

.method public quit()Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/editor/PostalActionPopup;->pause()V

    .line 124
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/contacts/editor/PostalActionPopup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 129
    .local v0, "handler":Landroid/os/Handler;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    return-void
.end method

.method protected scheduleSuggestionLookup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 367
    invoke-virtual {p0}, Lcom/android/contacts/editor/PostalActionPopup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 368
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup;->mPostalUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup;->mPostalUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 374
    .local v1, "msg":Landroid/os/Message;
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public showLimitPopup()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 483
    const/4 v1, 0x0

    .line 484
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "add_message":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e04d6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v0, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 488
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/editor/PostalActionPopup$8;

    invoke-direct {v4, p0}, Lcom/android/contacts/editor/PostalActionPopup$8;-><init>(Lcom/android/contacts/editor/PostalActionPopup;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    .line 497
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 498
    invoke-static {v8}, Lcom/android/contacts/editor/PostalActionPopup;->setButtonEnable(Z)V

    .line 500
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/contacts/editor/PostalActionPopup$9;

    invoke-direct {v3, p0}, Lcom/android/contacts/editor/PostalActionPopup$9;-><init>(Lcom/android/contacts/editor/PostalActionPopup;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 511
    return-void
.end method

.method public showPopupMenu()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 212
    const-string v7, "PostalActionPopup"

    const-string v8, "showPopupMenu - Start"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-wide/16 v5, 0x0

    .line 215
    .local v5, "oldPostalId":J
    invoke-virtual {p0}, Lcom/android/contacts/editor/PostalActionPopup;->getSuggestions()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 218
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/PostalActionPopup$Posal;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v1, "choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/PostalActionPopup$ChoiceListItem;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v13, :cond_3

    .line 221
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_ConfigAddressField"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "fields":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 224
    sget-object v7, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 225
    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mView:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v9, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->postalCode:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v10, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->state:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v11, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->city:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v7, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->streetnumber:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11, v7}, Lcom/android/contacts/editor/TextFieldsEditorView;->setTextPostalAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    :goto_0
    invoke-static {v13}, Lcom/android/contacts/editor/PostalActionPopup;->setButtonEnable(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/android/contacts/editor/PostalActionPopup;->quit()Z

    .line 305
    .end local v2    # "fields":Ljava/lang/String;
    :goto_1
    return-void

    .line 227
    .restart local v2    # "fields":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mView:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v9, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->streetnumber:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v10, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->city:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v11, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->state:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v7, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->postalCode:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11, v7}, Lcom/android/contacts/editor/TextFieldsEditorView;->setTextPostalAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_2
    const-string v7, "formatted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 230
    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mView:Lcom/android/contacts/editor/TextFieldsEditorView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v7, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->postalCode:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v7, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->state:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v7, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->city:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v7, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->streetnumber:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/android/contacts/editor/TextFieldsEditorView;->setTextPostalAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    .end local v2    # "fields":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 240
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-wide v7, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->postalId:J

    cmp-long v7, v5, v7

    if-eqz v7, :cond_4

    .line 241
    new-instance v8, Lcom/android/contacts/editor/PostalActionPopup$ChoiceListItem;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v7, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->postalCode:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v7, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->state:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v7, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->city:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v7, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->streetnumber:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v3, v7}, Lcom/android/contacts/editor/PostalActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-wide v5, v7, Lcom/android/contacts/editor/PostalActionPopup$Posal;->postalId:J

    .line 238
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 247
    :cond_5
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    const v8, 0x7f0401e3

    invoke-direct {v0, v7, v8, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 249
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-object v7, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_7

    .line 250
    :cond_6
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/android/contacts/editor/PostalActionPopup;->titleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x1040000

    new-instance v9, Lcom/android/contacts/editor/PostalActionPopup$5;

    invoke-direct {v9, p0}, Lcom/android/contacts/editor/PostalActionPopup$5;-><init>(Lcom/android/contacts/editor/PostalActionPopup;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, -0x1

    new-instance v9, Lcom/android/contacts/editor/PostalActionPopup$4;

    invoke-direct {v9, p0, v1, v4}, Lcom/android/contacts/editor/PostalActionPopup$4;-><init>(Lcom/android/contacts/editor/PostalActionPopup;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    .line 288
    iget-object v7, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 289
    invoke-static {v13}, Lcom/android/contacts/editor/PostalActionPopup;->setButtonEnable(Z)V

    .line 291
    iget-object v7, p0, Lcom/android/contacts/editor/PostalActionPopup;->mpostalDlg:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/contacts/editor/PostalActionPopup$6;

    invoke-direct {v8, p0}, Lcom/android/contacts/editor/PostalActionPopup$6;-><init>(Lcom/android/contacts/editor/PostalActionPopup;)V

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 304
    :cond_7
    const-string v7, "PostalActionPopup"

    const-string v8, "-----End--------"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
