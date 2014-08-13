.class public Lcom/android/contacts/editor/TextFieldsEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;,
        Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I

.field private static final TAG:Ljava/lang/String;

.field public static mAddaContactTutorialShouldSave:Z


# instance fields
.field private SIM_ONE:I

.field private SIM_ZERO:I

.field private isSIM2Account:Z

.field private isSIMAccount:Z

.field private mBeforeStr:Ljava/lang/String;

.field private mCurStr:Ljava/lang/String;

.field private mExpansionView:Landroid/widget/ImageView;

.field private mExpansionViewContainer:Landroid/view/View;

.field private mExtFullyOccupiedCaseLen:I

.field private mFieldEditTexts:[Landroid/widget/EditText;

.field private mFields:Landroid/view/ViewGroup;

.field private mHasShortAndLongForms:Z

.field private mHideOptional:Z

.field private mIsPhoneticName:Z

.field private mMinFieldHeight:I

.field private mPostalSearchContainer:Landroid/view/View;

.field private mPostal_search_button:Landroid/widget/ImageView;

.field private mpostalDlg:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    const-class v0, Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/TextFieldsEditorView;->TAG:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_LimitNameLength"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/editor/TextFieldsEditorView;->MAX_LENGTH:I

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mAddaContactTutorialShouldSave:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 99
    iput-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 100
    iput-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 103
    iput-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsPhoneticName:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    .line 113
    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ZERO:I

    .line 114
    iput v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ONE:I

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    iput-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 100
    iput-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 103
    iput-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsPhoneticName:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    .line 113
    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ZERO:I

    .line 114
    iput v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ONE:I

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    iput-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 100
    iput-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 103
    iput-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsPhoneticName:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    .line 113
    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ZERO:I

    .line 114
    iput v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ONE:I

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/editor/TextFieldsEditorView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->chkKorean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mpostalDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mpostalDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    return v0
.end method

.method private chkKorean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 967
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 968
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7a3

    if-gt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xac00

    if-ge v1, v2, :cond_4

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x11ff

    if-gt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x1100

    if-ge v1, v2, :cond_4

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7fb

    if-gt v1, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7b0

    if-ge v1, v2, :cond_4

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xa97c

    if-gt v1, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xa960

    if-ge v1, v2, :cond_4

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x318e

    if-gt v1, v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3130

    if-lt v1, v2, :cond_5

    .line 971
    :cond_4
    const/4 v1, 0x1

    .line 974
    :goto_1
    return v1

    .line 967
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 974
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupExpansionView(ZZ)V
    .locals 3
    .param p1, "shouldExist"    # Z
    .param p2, "collapsed"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 308
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :goto_0
    return-void

    .line 311
    :cond_0
    if-eqz p1, :cond_5

    .line 312
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const v0, 0x7f02005d

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    :cond_1
    const v0, 0x7f02005c

    goto :goto_1

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    const v0, 0x7f020051

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    const v0, 0x7f020050

    goto :goto_4

    .line 328
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00cc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3

    .line 331
    :cond_5
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsPhoneticName:Z

    if-eqz v0, :cond_6

    .line 332
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 336
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public acquireEditorBounds(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1003
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 1004
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v2

    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 1005
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v2, v1

    .line 1006
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1007
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1013
    .end local v0    # "editText":Landroid/widget/EditText;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public areOptionalFieldsVisible()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAllFields()V
    .locals 5

    .prologue
    .line 1096
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v4, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v0, "arr$":[Landroid/widget/EditText;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1098
    .local v1, "fieldEditText":Landroid/widget/EditText;
    if-eqz v1, :cond_0

    .line 1100
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1104
    .end local v0    # "arr$":[Landroid/widget/EditText;
    .end local v1    # "fieldEditText":Landroid/widget/EditText;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    return-void
.end method

.method public getPhoneticFamilyName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .prologue
    .line 1132
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1133
    const-string v0, ""

    .line 1135
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneticGivenName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .prologue
    .line 1146
    const-string v0, "data7"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1147
    const-string v0, ""

    .line 1149
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "data7"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneticMiddleName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .prologue
    .line 1139
    const-string v0, "data8"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1140
    const-string v0, ""

    .line 1142
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "data8"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneticName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;
    .locals 6
    .param p1, "vd"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .prologue
    .line 1109
    const-string v3, ""

    .line 1110
    .local v3, "phoneticName":Ljava/lang/String;
    const-string v4, "data9"

    invoke-virtual {p1, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    .local v0, "family":Ljava/lang/String;
    const-string v4, "data8"

    invoke-virtual {p1, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1112
    .local v2, "middle":Ljava/lang/String;
    const-string v4, "data7"

    invoke-virtual {p1, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "given":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1115
    const-string v0, ""

    .line 1116
    :cond_0
    if-nez v2, :cond_1

    .line 1117
    const-string v2, ""

    .line 1118
    :cond_1
    if-nez v1, :cond_2

    .line 1119
    const-string v1, ""

    .line 1121
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1122
    move-object v3, v0

    .line 1123
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1125
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1128
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public hasShortAndLongForms()Z
    .locals 1

    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 979
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 980
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 981
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 982
    const/4 v2, 0x0

    .line 985
    .end local v0    # "editText":Landroid/widget/EditText;
    :goto_1
    return v2

    .line 979
    .restart local v0    # "editText":Landroid/widget/EditText;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 985
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 139
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    .line 141
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 142
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 144
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    .line 146
    const v1, 0x7f09017a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 148
    const v1, 0x7f0902d3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    .line 149
    const v1, 0x7f0903ca

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    .line 150
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAutoFillPostalCode"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigAddressField"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "fields":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const v1, 0x7f0903e0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mPostalSearchContainer:Landroid/view/View;

    .line 178
    const v1, 0x7f0903e1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mPostal_search_button:Landroid/widget/ImageView;

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mPostal_search_button:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mPostalSearchContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mPostalSearchContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mPostal_search_button:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$2;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    .end local v0    # "fields":Ljava/lang/String;
    :cond_0
    return-void

    .line 181
    .restart local v0    # "fields":Ljava/lang/String;
    :cond_1
    const v1, 0x7f0903df

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mPostalSearchContainer:Landroid/view/View;

    .line 182
    const v1, 0x7f0903e2

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mPostal_search_button:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1041
    move-object v2, p1

    check-cast v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    .line 1042
    .local v2, "ss":Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    invoke-virtual {v2}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1044
    iget-boolean v3, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iput-boolean v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 1046
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 1047
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v3, v3

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1048
    .local v1, "numChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1049
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1050
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    .end local v0    # "i":I
    .end local v1    # "numChildren":I
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1020
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 1021
    .local v3, "superState":Landroid/os/Parcelable;
    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-direct {v2, v3}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1023
    .local v2, "ss":Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    iget-boolean v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    .line 1025
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 1026
    .local v1, "numChildren":I
    :goto_0
    new-array v4, v1, [I

    iput-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    .line 1027
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1028
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 1029
    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v0

    .line 1027
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1025
    .end local v0    # "i":I
    .end local v1    # "numChildren":I
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v4

    goto :goto_0

    .line 1033
    .restart local v0    # "i":I
    .restart local v1    # "numChildren":I
    :cond_2
    return-object v2
.end method

.method protected requestFocusForFirstEditField()V
    .locals 7

    .prologue
    .line 343
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v6, v6

    if-eqz v6, :cond_4

    .line 344
    const/4 v3, 0x0

    .line 345
    .local v3, "firstField":Landroid/widget/EditText;
    const/4 v0, 0x0

    .line 346
    .local v0, "anyFieldHasFocus":Z
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v1, "arr$":[Landroid/widget/EditText;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v1, v4

    .line 347
    .local v2, "editText":Landroid/widget/EditText;
    if-nez v2, :cond_1

    .line 346
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 351
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 352
    move-object v3, v2

    .line 354
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 355
    const/4 v0, 0x1

    .line 359
    .end local v2    # "editText":Landroid/widget/EditText;
    :cond_3
    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    .line 360
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 363
    .end local v0    # "anyFieldHasFocus":Z
    .end local v1    # "arr$":[Landroid/widget/EditText;
    .end local v3    # "firstField":Landroid/widget/EditText;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_4
    return-void
.end method

.method public setEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 285
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 287
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 288
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 288
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 290
    goto :goto_1

    .line 294
    .end local v0    # "index":I
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 295
    return-void

    :cond_3
    move v2, v3

    .line 294
    goto :goto_2
.end method

.method public setExpansionViewEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 302
    :cond_0
    return-void
.end method

.method public setTextPostalAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1194
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1196
    return-void
.end method

.method public setTextPostalAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "str3"    # Ljava/lang/String;
    .param p4, "str4"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x6

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1200
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1204
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1207
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1210
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1213
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1233
    :goto_0
    return-void

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1221
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1224
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v5

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1227
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1230
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 42
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p2, "entry"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    .line 368
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 369
    const/16 v20, 0x0

    .line 371
    .local v20, "hidePossible":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    .line 372
    .local v16, "fieldCount":I
    move/from16 v0, v16

    new-array v0, v0, [Landroid/widget/EditText;

    move-object/from16 v35, v0

    .line 373
    .local v35, "tempFieldEditTexts":[Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v33

    .line 375
    .local v33, "pbSimManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v8, "account_type"

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 377
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    .line 382
    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    .line 383
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_15

    .line 389
    :cond_0
    :goto_1
    sget v37, Lcom/android/contacts/editor/TextFieldsEditorView;->MAX_LENGTH:I

    .line 390
    .local v37, "tmpCscVal":I
    const/4 v5, -0x1

    move/from16 v0, v37

    if-ne v0, v5, :cond_1

    .line 391
    const/16 v37, 0x3e8

    .line 393
    :cond_1
    new-instance v19, Lcom/android/contacts/editor/TextFieldsEditorView$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView$3;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    .line 406
    .local v19, "hideIMEOnFocusChangeListener":Landroid/view/View$OnFocusChangeListener;
    const/16 v23, 0x0

    .local v23, "index":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v16

    if-ge v0, v1, :cond_3a

    .line 407
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/AccountType$EditField;

    .line 411
    .local v9, "field":Lcom/android/contacts/model/AccountType$EditField;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    .line 414
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 416
    :cond_2
    new-instance v7, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v5, v9, v1}, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/content/Context;Lcom/android/contacts/model/AccountType$EditField;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 425
    .local v7, "fieldView":Landroid/widget/EditText;
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ContactEditorActivity;->isTutorialMode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 427
    new-instance v40, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-object/from16 v0, v40

    invoke-direct {v0, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    .line 428
    .local v40, "writingbuddy":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    const-string v5, "HELP_MODE"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setPrivateCommnad(Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ContactEditorActivity;->getTextWritingListener()Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    .line 432
    .end local v40    # "writingbuddy":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_3
    sget v5, Lcom/android/contacts/editor/TextFieldsEditorView;->MAX_LENGTH:I

    const/16 v6, 0xfa

    if-ne v5, v6, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/website"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 433
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/16 v41, 0x3e8

    move/from16 v0, v41

    invoke-direct {v8, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v5, v6

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 442
    :goto_4
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 445
    .local v18, "fieldViewParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    :cond_4
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 446
    const/16 v27, 0x0

    .line 447
    .local v27, "length":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 448
    .local v34, "simAccountType":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "#displayName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 449
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_19

    .line 453
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v27

    .line 455
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v5

    if-nez v5, :cond_5

    .line 456
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c006a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v41

    invoke-virtual {v0, v5, v6, v8, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 522
    :cond_5
    :goto_6
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    move/from16 v0, v27

    invoke-direct {v8, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v5, v6

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 526
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    move-object/from16 v0, v28

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 528
    .local v28, "marginParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v5

    if-nez v5, :cond_24

    .line 529
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v41, 0x7f0c0065

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v5, v6, v8, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 545
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    .end local v27    # "length":I
    .end local v28    # "marginParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v34    # "simAccountType":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    iget v5, v9, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    if-eqz v5, :cond_26

    .line 607
    iget v5, v9, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setMinLines(I)V

    .line 613
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/contacts/model/DataKind;->textAppearanceResourceId:I

    invoke-virtual {v7, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 614
    const/16 v5, 0x10

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 615
    aput-object v7, v35, v23

    .line 616
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/view/View;->setId(I)V

    .line 617
    iget v5, v9, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    if-lez v5, :cond_7

    .line 618
    iget v5, v9, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 620
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    .line 622
    .local v14, "currentLang":Ljava/lang/String;
    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    move/from16 v24, v0

    .line 623
    .local v24, "inputType":I
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 625
    iget-object v10, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 626
    .local v10, "column":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 628
    .local v38, "value":Ljava/lang/String;
    const/4 v5, 0x3

    move/from16 v0, v24

    if-ne v0, v5, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "iw"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 632
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    if-nez v5, :cond_8

    .line 633
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 638
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    if-eqz v5, :cond_a

    :cond_9
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "#displayName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 639
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    if-eqz v5, :cond_27

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ONE:I

    :goto_9
    invoke-virtual {v6, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(I)I

    move-result v29

    .line 640
    .local v29, "maxNameLength":I
    if-eqz v38, :cond_a

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v29

    if-le v5, v0, :cond_a

    .line 642
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    .line 643
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v29    # "maxNameLength":I
    :cond_a
    :goto_a
    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 655
    const-string v5, "#phoneticName"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 656
    const/4 v5, 0x0

    aget-object v5, v35, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->getPhoneticName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    :cond_b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/contacts/editor/LabeledEditorView;->setDeleteButtonVisible(Z)V

    .line 665
    new-instance v5, Lcom/android/contacts/editor/TextFieldsEditorView$4;

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/contacts/editor/TextFieldsEditorView$4;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/widget/EditText;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditField;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 799
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 802
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v5

    if-eqz v5, :cond_10

    if-eqz p3, :cond_10

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    if-eqz v5, :cond_10

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v8, "account_type"

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v8, "account_type"

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 807
    :cond_c
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "#displayName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 808
    const/16 v27, 0x0

    .line 809
    .restart local v27    # "length":I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_28

    .line 816
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v27

    .line 819
    :goto_b
    move/from16 v30, v27

    .line 820
    .local v30, "nameMaxLength":I
    move-object/from16 v31, v7

    .line 822
    .local v31, "nameView":Landroid/widget/EditText;
    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v8, "account_type"

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v8, "account_type"

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 824
    :cond_d
    sput v30, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    .line 827
    :cond_e
    invoke-virtual/range {v31 .. v31}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;

    .line 830
    const/4 v5, 0x0

    new-array v12, v5, [B

    .line 831
    .local v12, "bytename_temp":[B
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v12

    .line 832
    array-length v5, v12

    move/from16 v0, v30

    if-le v5, v0, :cond_f

    .line 833
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;

    move/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    .line 834
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v5, v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 836
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->toCharArray()[C

    move-result-object v41

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    invoke-direct {v8, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v5, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 842
    :cond_f
    new-instance v5, Lcom/android/contacts/editor/TextFieldsEditorView$5;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v5, v0, v1, v2, v10}, Lcom/android/contacts/editor/TextFieldsEditorView$5;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;ILandroid/widget/EditText;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 877
    .end local v12    # "bytename_temp":[B
    .end local v27    # "length":I
    .end local v30    # "nameMaxLength":I
    .end local v31    # "nameView":Landroid/widget/EditText;
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 879
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    .line 880
    .local v25, "intentAction":Ljava/lang/String;
    const-string v5, "android.intent.action.EDIT"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v7}, Landroid/widget/TextView;->getInputType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_11

    .line 882
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 886
    .end local v25    # "intentAction":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_29

    if-nez p4, :cond_29

    const/4 v5, 0x1

    :goto_c
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 888
    iget-boolean v5, v9, Lcom/android/contacts/model/AccountType$EditField;->shortForm:Z

    if-eqz v5, :cond_2b

    .line 889
    const/16 v20, 0x1

    .line 890
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 891
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-eqz v5, :cond_2a

    const/4 v5, 0x0

    :goto_d
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 918
    :cond_12
    :goto_e
    iget v5, v9, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    const v6, 0x7f0e0182

    if-ne v5, v6, :cond_13

    .line 919
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsPhoneticName:Z

    .line 922
    :cond_13
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "#displayName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 923
    const v5, 0x2000005

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 924
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 937
    :goto_f
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 406
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 379
    .end local v7    # "fieldView":Landroid/widget/EditText;
    .end local v9    # "field":Lcom/android/contacts/model/AccountType$EditField;
    .end local v10    # "column":Ljava/lang/String;
    .end local v14    # "currentLang":Ljava/lang/String;
    .end local v18    # "fieldViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "hideIMEOnFocusChangeListener":Landroid/view/View$OnFocusChangeListener;
    .end local v23    # "index":I
    .end local v24    # "inputType":I
    .end local v37    # "tmpCscVal":I
    .end local v38    # "value":Ljava/lang/String;
    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    goto/16 :goto_0

    .line 384
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v8, "account_type"

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 386
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    goto/16 :goto_1

    .line 418
    .restart local v9    # "field":Lcom/android/contacts/model/AccountType$EditField;
    .restart local v19    # "hideIMEOnFocusChangeListener":Landroid/view/View$OnFocusChangeListener;
    .restart local v23    # "index":I
    .restart local v37    # "tmpCscVal":I
    :cond_16
    new-instance v7, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v7, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .restart local v7    # "fieldView":Landroid/widget/EditText;
    goto/16 :goto_3

    .line 421
    .end local v7    # "fieldView":Landroid/widget/EditText;
    :cond_17
    new-instance v7, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v7, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .restart local v7    # "fieldView":Landroid/widget/EditText;
    goto/16 :goto_3

    .line 437
    :cond_18
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    move/from16 v0, v37

    invoke-direct {v8, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v5, v6

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_4

    .line 450
    .restart local v18    # "fieldViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v27    # "length":I
    .restart local v34    # "simAccountType":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_5

    .line 459
    :cond_1a
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 460
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    .line 461
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 489
    if-eqz p2, :cond_20

    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20

    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 490
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v5

    add-int/lit8 v27, v5, 0x1

    .line 494
    :goto_10
    if-eqz p2, :cond_5

    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_5

    if-lez v27, :cond_5

    .line 495
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    .line 497
    .restart local v25    # "intentAction":Ljava/lang/String;
    const-string v5, "android.intent.action.EDIT"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 498
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v5

    mul-int/lit8 v27, v5, 0x2

    .line 499
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    .line 501
    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    .line 502
    add-int/lit8 v27, v27, 0x1

    .line 505
    :cond_1b
    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 506
    .local v32, "number":Ljava/lang/String;
    if-eqz v32, :cond_21

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v27

    if-le v5, v0, :cond_21

    .line 507
    iget-object v6, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 462
    .end local v25    # "intentAction":Ljava/lang/String;
    .end local v32    # "number":Ljava/lang/String;
    :cond_1c
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 463
    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v27

    .line 468
    :goto_11
    if-eqz p2, :cond_5

    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 469
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    .line 471
    .restart local v25    # "intentAction":Ljava/lang/String;
    const-string v5, "android.intent.action.EDIT"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v27

    if-le v5, v0, :cond_1d

    .line 473
    mul-int/lit8 v27, v27, 0x2

    .line 474
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    .line 477
    :cond_1d
    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1e

    .line 478
    add-int/lit8 v27, v27, 0x1

    .line 481
    :cond_1e
    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 482
    .local v36, "tempOrgNum":Ljava/lang/String;
    if-eqz v36, :cond_5

    if-lez v27, :cond_5

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v27

    if-le v5, v0, :cond_5

    .line 483
    const/4 v5, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 484
    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 466
    .end local v25    # "intentAction":Ljava/lang/String;
    .end local v36    # "tempOrgNum":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_11

    .line 492
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v27

    goto/16 :goto_10

    .line 509
    .restart local v25    # "intentAction":Ljava/lang/String;
    .restart local v32    # "number":Ljava/lang/String;
    :cond_21
    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 513
    .end local v25    # "intentAction":Ljava/lang/String;
    .end local v32    # "number":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 514
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_23

    .line 518
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength()I

    move-result v27

    goto/16 :goto_6

    .line 515
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength(Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_6

    .line 533
    .restart local v28    # "marginParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 534
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0065

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v41, 0x7f0c0065

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v5, v6, v8, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_7

    .line 539
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0064

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v41, 0x7f0c0065

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v5, v6, v8, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_7

    .line 609
    .end local v27    # "length":I
    .end local v28    # "marginParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v34    # "simAccountType":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 610
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    invoke-virtual {v7, v5}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_8

    .line 639
    .restart local v10    # "column":Ljava/lang/String;
    .restart local v14    # "currentLang":Ljava/lang/String;
    .restart local v24    # "inputType":I
    .restart local v38    # "value":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ZERO:I

    goto/16 :goto_9

    .line 644
    .restart local v29    # "maxNameLength":I
    :catch_0
    move-exception v15

    .line 645
    .local v15, "e":Ljava/lang/StringIndexOutOfBoundsException;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    .line 810
    .end local v15    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v29    # "maxNameLength":I
    .restart local v27    # "length":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v8, "account_type"

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_b

    .line 886
    .end local v27    # "length":I
    :cond_29
    const/4 v5, 0x0

    goto/16 :goto_c

    .line 891
    :cond_2a
    const/16 v5, 0x8

    goto/16 :goto_d

    .line 892
    :cond_2b
    iget-boolean v5, v9, Lcom/android/contacts/model/AccountType$EditField;->longForm:Z

    if-eqz v5, :cond_32

    .line 893
    const/16 v20, 0x1

    .line 894
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 896
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 898
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "#displayName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 899
    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 900
    const/16 v5, 0x8

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 904
    :goto_12
    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 905
    const v5, 0x7f0e017c

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setHint(I)V

    goto/16 :goto_e

    .line 902
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-eqz v5, :cond_2d

    const/16 v5, 0x8

    :goto_13
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_2d
    const/4 v5, 0x0

    goto :goto_13

    .line 907
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-eqz v5, :cond_2f

    const/16 v5, 0x8

    :goto_14
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_2f
    const/4 v5, 0x0

    goto :goto_14

    .line 909
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-eqz v5, :cond_31

    const/16 v5, 0x8

    :goto_15
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_31
    const/4 v5, 0x0

    goto :goto_15

    .line 912
    :cond_32
    invoke-static/range {v38 .. v38}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    iget-boolean v5, v9, Lcom/android/contacts/model/AccountType$EditField;->optional:Z

    if-eqz v5, :cond_34

    const/4 v13, 0x1

    .line 913
    .local v13, "couldHide":Z
    :goto_16
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-eqz v5, :cond_35

    if-eqz v13, :cond_35

    const/16 v39, 0x1

    .line 914
    .local v39, "willHide":Z
    :goto_17
    if-eqz v39, :cond_36

    const/16 v5, 0x8

    :goto_18
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 915
    if-nez v20, :cond_33

    if-eqz v13, :cond_37

    :cond_33
    const/16 v20, 0x1

    :goto_19
    goto/16 :goto_e

    .line 912
    .end local v13    # "couldHide":Z
    .end local v39    # "willHide":Z
    :cond_34
    const/4 v13, 0x0

    goto :goto_16

    .line 913
    .restart local v13    # "couldHide":Z
    :cond_35
    const/16 v39, 0x0

    goto :goto_17

    .line 914
    .restart local v39    # "willHide":Z
    :cond_36
    const/4 v5, 0x0

    goto :goto_18

    .line 915
    :cond_37
    const/16 v20, 0x0

    goto :goto_19

    .line 925
    .end local v13    # "couldHide":Z
    .end local v39    # "willHide":Z
    :cond_38
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_UseSeparateAddressField"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v5, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 930
    const-string v5, "defaultInputmode=numeric;"

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 931
    const/high16 v5, 0x2000000

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_f

    .line 934
    :cond_39
    const/high16 v5, 0x2000000

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_f

    .line 951
    .end local v7    # "fieldView":Landroid/widget/EditText;
    .end local v9    # "field":Lcom/android/contacts/model/AccountType$EditField;
    .end local v10    # "column":Ljava/lang/String;
    .end local v14    # "currentLang":Ljava/lang/String;
    .end local v18    # "fieldViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "inputType":I
    .end local v38    # "value":Ljava/lang/String;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v5, :cond_3c

    .line 952
    const/16 v21, 0x0

    .line 953
    .local v21, "i":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v11, "arr$":[Landroid/widget/EditText;
    array-length v0, v11

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_1a
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_3c

    aget-object v17, v11, v22

    .line 954
    .local v17, "fieldEditText":Landroid/widget/EditText;
    if-eqz v17, :cond_3b

    .line 955
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 953
    :cond_3b
    add-int/lit8 v22, v22, 0x1

    goto :goto_1a

    .line 959
    .end local v11    # "arr$":[Landroid/widget/EditText;
    .end local v17    # "fieldEditText":Landroid/widget/EditText;
    .end local v21    # "i":I
    .end local v22    # "i$":I
    .end local v26    # "len$":I
    :cond_3c
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 962
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setupExpansionView(ZZ)V

    .line 963
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-nez p4, :cond_3d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v5, 0x1

    :goto_1b
    invoke-virtual {v6, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 964
    return-void

    .line 963
    :cond_3d
    const/4 v5, 0x0

    goto :goto_1b
.end method
