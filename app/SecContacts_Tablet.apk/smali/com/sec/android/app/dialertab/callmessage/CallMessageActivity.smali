.class public Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;
.super Landroid/app/Activity;
.source "CallMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;,
        Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;,
        Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$PROJECTION_NUMBER;
    }
.end annotation


# static fields
.field private static final PHONE_URI:Landroid/net/Uri;

.field public static final SELECT_MESSAGE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CallMessage"


# instance fields
.field private MAX_LENGTH_BYTE:I

.field private final TOAST_NO_AVAILABLE_CHAR:I

.field private final TOAST_OVER_LENGTH:I

.field private final TOAST_OVER_LENGTH_WARNING:I

.field private final TOAST_TEXT_EMPTY:I

.field private mCall:Landroid/widget/Button;

.field private mCallType:I

.field private mCancel:Landroid/widget/Button;

.field private mCurrentOperator:I

.field private mFrequent:Landroid/widget/Button;

.field private mIsOverLength:Z

.field private mIsShowMore16CharWarning:Z

.field private mIsShowMoreCharWarning:Z

.field private mMessageText:Landroid/widget/EditText;

.field private mNumber:Ljava/lang/String;

.field private mNumberOfChar:Landroid/widget/TextView;

.field private mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

.field private mTextWatcher:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->PHONE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->MAX_LENGTH_BYTE:I

    .line 63
    const/16 v0, 0x2001

    iput v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->TOAST_OVER_LENGTH:I

    .line 64
    const/16 v0, 0x2002

    iput v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->TOAST_OVER_LENGTH_WARNING:I

    .line 65
    const/16 v0, 0x2003

    iput v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->TOAST_TEXT_EMPTY:I

    .line 66
    const/16 v0, 0x2004

    iput v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->TOAST_NO_AVAILABLE_CHAR:I

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsOverLength:Z

    .line 532
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->getByteLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->MAX_LENGTH_BYTE:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsShowMoreCharWarning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsShowMoreCharWarning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsOverLength:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsOverLength:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsShowMore16CharWarning:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsShowMore16CharWarning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCall:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mNumberOfChar:Landroid/widget/TextView;

    return-object v0
.end method

.method private clearViews()V
    .locals 2

    .prologue
    .line 342
    const-string v0, "CallMessage"

    const-string v1, "clearViews.."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mTextWatcher:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 345
    return-void
.end method

.method private getByteLength(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 504
    :try_start_0
    const-string v1, "KSC5601"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return v1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 508
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "photoId"    # J
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 324
    const/4 v7, 0x0

    .line 325
    .local v7, "photoCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 327
    .local v6, "photoBm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 329
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 331
    .local v8, "photoData":[B
    const/4 v0, 0x0

    array-length v1, v8

    invoke-static {v8, v0, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 334
    .end local v8    # "photoData":[B
    :cond_0
    if-eqz v7, :cond_1

    .line 335
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_1
    return-object v6

    .line 334
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 335
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 403
    move-object v0, p0

    .line 404
    .local v0, "temp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 405
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    const-string v1, "\\("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    const-string v1, "\\)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    const-string v1, "\\p{Space}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 412
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private placeCallIncludeMessage()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 355
    iget-object v6, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "message":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 358
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v6

    const/16 v7, 0x1003

    if-ne v6, v7, :cond_5

    .line 359
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e04de

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "number":Ljava/lang/String;
    const-string v6, "CallMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCallIncludeMessage.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    .line 371
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 372
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 373
    iget-object v6, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v6

    const/16 v7, 0x1001

    if-ne v6, v7, :cond_2

    .line 374
    const-string v6, "call_from_sec"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    :cond_2
    const-string v6, "callmessage"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget v6, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCallType:I

    if-ne v6, v9, :cond_3

    .line 378
    const-string v6, "videocall"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 380
    :cond_3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 386
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 387
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 388
    iget-object v6, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 391
    :cond_4
    new-instance v5, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;-><init>(Landroid/content/Context;)V

    .line 392
    .local v5, "pref":Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;
    invoke-virtual {v5, v3}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->useCallMessage(Ljava/lang/String;)V

    .line 394
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 395
    .local v0, "bd":Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 396
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v6, "clear"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 397
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 398
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 399
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 400
    .end local v0    # "bd":Landroid/os/Bundle;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "pref":Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;
    :goto_1
    return-void

    .line 361
    :cond_5
    const/16 v6, 0x2003

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->showToastMessage(I)V

    goto :goto_1

    .line 383
    .restart local v4    # "number":Ljava/lang/String;
    :cond_6
    const-string v6, "CallMessage"

    const-string v7, "warning : number is empty"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setupViews()V
    .locals 8

    .prologue
    const/16 v7, 0x1003

    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v3, 0x7f090103

    .line 210
    const-string v1, "CallMessage"

    const-string v2, "setupViews.."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    const/16 v2, 0x1001

    if-ne v1, v2, :cond_3

    .line 213
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0467

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0468

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iput v6, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->MAX_LENGTH_BYTE:I

    .line 230
    :cond_0
    :goto_0
    const v1, 0x7f090106

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCancel:Landroid/widget/Button;

    .line 231
    const v1, 0x7f090107

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mFrequent:Landroid/widget/Button;

    .line 232
    const v1, 0x7f090108

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCall:Landroid/widget/Button;

    .line 233
    const v1, 0x7f090105

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    .line 234
    const v1, 0x7f090104

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mNumberOfChar:Landroid/widget/TextView;

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mFrequent:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCall:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v1, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;-><init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$1;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mTextWatcher:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mTextWatcher:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 242
    new-array v0, v4, [Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;

    new-instance v1, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;-><init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)V

    aput-object v1, v0, v5

    .line 243
    .local v0, "filters":[Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCall:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mFrequent:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 250
    iget v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCallType:I

    if-ne v1, v4, :cond_1

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCall:Landroid/widget/Button;

    const v2, 0x7f0e02a3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    const v2, 0x7f0e04de

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$1;-><init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 266
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->loadPhotoNameInfo()V

    .line 267
    return-void

    .line 216
    .end local v0    # "filters":[Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    if-ne v1, v7, :cond_5

    .line 217
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e046e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    iget v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCallType:I

    if-ne v1, v4, :cond_4

    .line 219
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0470

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 223
    :goto_1
    iput v6, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->MAX_LENGTH_BYTE:I

    goto/16 :goto_0

    .line 221
    :cond_4
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e046f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 224
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    const/16 v2, 0x1002

    if-ne v1, v2, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0469

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e046a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 227
    const/16 v1, 0x40

    iput v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->MAX_LENGTH_BYTE:I

    goto/16 :goto_0
.end method

.method private startRecentCallMessageActivity()V
    .locals 3

    .prologue
    .line 349
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    const/high16 v1, 0x10a0000

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 352
    return-void
.end method


# virtual methods
.method convertCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v2, 0x20

    .line 515
    .local v2, "v":C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 516
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 517
    sparse-switch v2, :sswitch_data_0

    .line 515
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :sswitch_0
    const/16 v3, 0x318d

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 522
    :sswitch_1
    const/16 v3, 0x2025

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 525
    :sswitch_2
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 529
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 517
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x119e -> :sswitch_0
        0x11a2 -> :sswitch_1
    .end sparse-switch
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replace(replace(replace(replace("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, ",\"-\",\"\"),\")\",\"\"),\"(\",\"\"), \" \",\"\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public loadPhotoNameInfo()V
    .locals 15

    .prologue
    const v14, 0x7f0203a6

    const/4 v4, 0x1

    const v13, 0x7f09010a

    const/4 v12, 0x0

    .line 271
    const-string v0, "CallMessage"

    const-string v2, "loadPhotoNameInfo.."

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->PHONE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 274
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$PROJECTION_NUMBER;->projection:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->getSelection()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 276
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 277
    .local v10, "photoId":I
    const/4 v7, 0x0

    .line 280
    .local v7, "name":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 282
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    goto :goto_0

    .line 285
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 287
    const-string v0, "CallMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPNInfo.. pId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const v0, 0x7f090109

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 293
    .local v11, "photoView":Landroid/widget/ImageView;
    if-nez v10, :cond_1

    .line 294
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    :goto_1
    const v0, 0x7f09010b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    if-eqz v7, :cond_3

    .line 307
    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :goto_2
    return-void

    .line 285
    .end local v11    # "photoView":Landroid/widget/ImageView;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 296
    .restart local v11    # "photoView":Landroid/widget/ImageView;
    :cond_1
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 297
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    int-to-long v2, v10

    invoke-direct {p0, v2, v3, v8}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 298
    .local v9, "photoBm":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_2

    .line 299
    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 310
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "photoBm":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    packed-switch p1, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 172
    const-string v2, "CallMessage"

    const-string v3, "callmessage selected"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 175
    .local v0, "bd":Landroid/os/Bundle;
    const-string v2, "callmessage"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "selected":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    if-eqz v1, :cond_0

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->startRecentCallMessageActivity()V

    goto :goto_0

    .line 152
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsOverLength:Z

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->placeCallIncludeMessage()V

    goto :goto_0

    .line 155
    :cond_0
    const/16 v0, 0x2001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->showToastMessage(I)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x7f090106
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 189
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const-string v1, "CallMessage"

    const-string v2, "<<onCreate>>"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 108
    const v1, 0x7f040034

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, "bd":Landroid/os/Bundle;
    const-string v1, "dest_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mNumber:Ljava/lang/String;

    .line 111
    const-string v1, "call_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCallType:I

    .line 112
    invoke-static {}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getInstance()Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->setupViews()V

    .line 114
    const-string v1, "CallMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallMessageActivity call type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCallType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "CallMessage"

    const-string v1, "<<onDestroy>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->clearViews()V

    .line 136
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 194
    packed-switch p2, :pswitch_data_0

    .line 206
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 196
    :pswitch_0
    const-string v1, "CallMessage"

    const-string v2, "onKey - press hw call key"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->placeCallIncludeMessage()V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "CallMessage"

    const-string v1, "<<onPause>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    const-string v0, "CallMessage"

    const-string v1, "<<onResume>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsShowMore16CharWarning:Z

    .line 121
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsShowMoreCharWarning:Z

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    return-void
.end method

.method public showToastMessage(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/16 v7, 0x1003

    const/16 v6, 0x1002

    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mToast:Landroid/widget/Toast;

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mToast:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 456
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 458
    :cond_0
    const/4 v0, 0x0

    .line 460
    .local v0, "msg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 498
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 500
    return-void

    .line 462
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    const/16 v2, 0x1001

    if-ne v1, v2, :cond_2

    .line 463
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0472

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 466
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0472

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 468
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 469
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0474

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    new-array v1, v4, [Ljava/lang/Object;

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 474
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0473

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 476
    goto/16 :goto_0

    .line 478
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    const/16 v2, 0x1001

    if-ne v1, v2, :cond_4

    .line 479
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0468

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 480
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    if-ne v1, v7, :cond_5

    .line 481
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e046f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 482
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 483
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e046a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 487
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 488
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e047d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    if-ne v1, v7, :cond_6

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (\\, \", <, >)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 491
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (\\, \", ;, =, <, >)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
