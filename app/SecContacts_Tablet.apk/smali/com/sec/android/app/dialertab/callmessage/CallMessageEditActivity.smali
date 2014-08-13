.class public Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;
.super Landroid/app/Activity;
.source "CallMessageEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$1;,
        Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$CharacterFilter;,
        Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;
    }
.end annotation


# static fields
.field public static final SELECT_MESSAGE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CallMessageEditActivity"

.field public static TYPE_ADD:I

.field public static TYPE_EDIT:I


# instance fields
.field private MAX_LENGTH_BYTE:I

.field private final TOAST_NO_AVAILABLE_CHAR:I

.field private final TOAST_OVER_LENGTH:I

.field private final TOAST_OVER_LENGTH_WARNING:I

.field private final TOAST_TEXT_EMPTY:I

.field private mCancelBtn:Landroid/widget/Button;

.field private mIsOverLength:Z

.field private mIsShowMore16CharWarning:Z

.field private mIsShowMoreCharWarning:Z

.field private mMessageText:Landroid/widget/EditText;

.field private mNumberOfChar:Landroid/widget/TextView;

.field private mOkBtn:Landroid/widget/Button;

.field private mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

.field private mTargetMessage:Ljava/lang/String;

.field private mTargetPosition:I

.field private mTargetType:I

.field private mTextWatcher:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->TYPE_ADD:I

    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->TYPE_EDIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->MAX_LENGTH_BYTE:I

    .line 46
    const/16 v0, 0x2001

    iput v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->TOAST_OVER_LENGTH:I

    .line 47
    const/16 v0, 0x2002

    iput v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->TOAST_OVER_LENGTH_WARNING:I

    .line 48
    const/16 v0, 0x2003

    iput v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->TOAST_TEXT_EMPTY:I

    .line 49
    const/16 v0, 0x2004

    iput v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->TOAST_NO_AVAILABLE_CHAR:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsOverLength:Z

    .line 297
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mMessageText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->getByteLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->MAX_LENGTH_BYTE:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsShowMoreCharWarning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsShowMoreCharWarning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsOverLength:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsOverLength:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsShowMore16CharWarning:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsShowMore16CharWarning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mOkBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mNumberOfChar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    return-object v0
.end method

.method private clearViews()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "CallMessageEditActivity"

    const-string v1, "clearViews.."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mMessageText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTextWatcher:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    return-void
.end method

.method private editMessage()V
    .locals 6

    .prologue
    .line 174
    const-string v4, "CallMessageEditActivity"

    const-string v5, "editMessage.."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 178
    :cond_0
    const/16 v4, 0x2003

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->showToastMessage(I)V

    .line 196
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "message":Ljava/lang/String;
    iget v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTargetType:I

    sget v5, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->TYPE_EDIT:I

    if-ne v4, v5, :cond_2

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v0, "bd":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "message"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v4, "position"

    iget v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTargetPosition:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 190
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 195
    .end local v0    # "bd":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 192
    :cond_2
    new-instance v3, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;-><init>(Landroid/content/Context;)V

    .line 193
    .local v3, "pref":Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;
    invoke-virtual {v3, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->addPhrase(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getByteLength(Ljava/lang/String;)I
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 276
    const/4 v2, 0x0

    .local v2, "iIndex":I
    const/4 v1, 0x0

    .line 277
    .local v1, "extraLen":I
    :try_start_0
    const-string v3, "\\"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    :goto_0
    const-string v3, "\\"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 279
    add-int/lit8 v2, v2, 0x1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_0
    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    const/4 v2, 0x0

    .line 285
    :goto_1
    const-string v3, "\""

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 286
    add-int/lit8 v2, v2, 0x1

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 290
    :cond_1
    const-string v3, "KSC5601"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v1

    .line 294
    :goto_2
    return v3

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 294
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const v3, 0x7f090103

    .line 132
    const-string v1, "CallMessageEditActivity"

    const-string v2, "setupViews.."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTargetType:I

    sget v2, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->TYPE_EDIT:I

    if-ne v1, v2, :cond_1

    .line 135
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0480

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0482

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    const/16 v2, 0x1002

    if-ne v1, v2, :cond_2

    .line 143
    const/16 v1, 0x40

    iput v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->MAX_LENGTH_BYTE:I

    .line 148
    :goto_1
    const v1, 0x7f090106

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mCancelBtn:Landroid/widget/Button;

    .line 149
    const v1, 0x7f09010c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mOkBtn:Landroid/widget/Button;

    .line 150
    const v1, 0x7f090105

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mMessageText:Landroid/widget/EditText;

    .line 151
    const v1, 0x7f090104

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mNumberOfChar:Landroid/widget/TextView;

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v1, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;-><init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$1;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTextWatcher:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mMessageText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTextWatcher:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$CharacterFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$CharacterFilter;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$CharacterFilter;-><init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)V

    aput-object v2, v0, v1

    .line 159
    .local v0, "filters":[Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$CharacterFilter;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mMessageText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTargetMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTargetMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mMessageText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 165
    :cond_0
    return-void

    .line 138
    .end local v0    # "filters":[Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$CharacterFilter;
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0483

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0484

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 145
    :cond_2
    const/16 v1, 0x10

    iput v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->MAX_LENGTH_BYTE:I

    goto/16 :goto_1
.end method


# virtual methods
.method convertCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v2, 0x20

    .line 326
    .local v2, "v":C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 327
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 328
    sparse-switch v2, :sswitch_data_0

    .line 326
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :sswitch_0
    const/16 v3, 0x318d

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 333
    :sswitch_1
    const/16 v3, 0x2025

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 336
    :sswitch_2
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 342
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 328
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x119e -> :sswitch_0
        0x11a2 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 110
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 114
    :sswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsOverLength:Z

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->editMessage()V

    goto :goto_0

    .line 117
    :cond_0
    const/16 v0, 0x2001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->showToastMessage(I)V

    goto :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x7f090106 -> :sswitch_0
        0x7f09010c -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v1, "CallMessageEditActivity"

    const-string v2, "<<onCreate>>"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const v1, 0x7f040035

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "bd":Landroid/os/Bundle;
    const-string v1, "message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTargetMessage:Ljava/lang/String;

    .line 76
    const-string v1, "position"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTargetPosition:I

    .line 77
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTargetType:I

    .line 78
    const-string v1, "CallMessageEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTargetMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mTargetPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getInstance()Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->setupViews()V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "CallMessageEditActivity"

    const-string v1, "<<onDestroy>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->clearViews()V

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 102
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "CallMessageEditActivity"

    const-string v1, "<<onPause>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    const-string v0, "CallMessageEditActivity"

    const-string v1, "<<onResume>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsShowMore16CharWarning:Z

    .line 88
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsShowMoreCharWarning:Z

    .line 89
    return-void
.end method

.method public showToastMessage(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/16 v6, 0x1002

    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mToast:Landroid/widget/Toast;

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mToast:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    :cond_0
    const/4 v0, 0x0

    .line 241
    .local v0, "msg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 270
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 272
    return-void

    .line 243
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 244
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0474

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    new-array v1, v4, [Ljava/lang/Object;

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0472

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 248
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

    .line 250
    goto :goto_0

    .line 252
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0473

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    goto :goto_0

    .line 256
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e046a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    goto/16 :goto_0

    .line 259
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 260
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e047d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    const/16 v2, 0x1003

    if-ne v1, v2, :cond_3

    .line 262
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

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 264
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

    .line 241
    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
