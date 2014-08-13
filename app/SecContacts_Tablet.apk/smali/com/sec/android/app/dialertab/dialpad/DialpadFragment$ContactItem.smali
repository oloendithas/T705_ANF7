.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactItem"
.end annotation


# instance fields
.field private colorEnd:I

.field private colorStart:I

.field private id:I

.field private mActioncode:Ljava/lang/String;

.field private mColorStringGetter:Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;

.field private mContactId:I

.field private mDisplayWeight:I

.field private mIsExistAlphabetSearchResult:Z

.field private mNumber:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private phone_type:I

.field private selection:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "mContactId"    # I
    .param p6, "phone_type"    # I
    .param p7, "type"    # I

    .prologue
    .line 7036
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7037
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    .line 7038
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    .line 7039
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    .line 7040
    iput p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mContactId:I

    .line 7041
    iput p7, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    .line 7042
    iput p6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->phone_type:I

    .line 7043
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "mContactId"    # I
    .param p6, "type"    # I
    .param p7, "phone_type"    # I
    .param p8, "isExistAlphabetSearchResult"    # Z

    .prologue
    .line 7066
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7067
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    .line 7068
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    .line 7069
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    .line 7070
    iput p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mContactId:I

    .line 7071
    iput p6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    .line 7072
    iput p7, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->phone_type:I

    .line 7073
    iput-boolean p8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mIsExistAlphabetSearchResult:Z

    .line 7074
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "mContactId"    # I
    .param p6, "type"    # I
    .param p7, "isExistAlphabetSearchResult"    # Z

    .prologue
    .line 7056
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7057
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    .line 7058
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    .line 7059
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    .line 7060
    iput p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mContactId:I

    .line 7061
    iput p6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    .line 7062
    iput-boolean p7, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mIsExistAlphabetSearchResult:Z

    .line 7063
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "actioncode"    # Ljava/lang/String;
    .param p6, "phone_type"    # I
    .param p7, "type"    # I

    .prologue
    .line 7025
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7026
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    .line 7027
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    .line 7028
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    .line 7029
    iput-object p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mActioncode:Ljava/lang/String;

    .line 7030
    iput p6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->phone_type:I

    .line 7031
    iput p7, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    .line 7032
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mContactId:I

    .line 7033
    return-void
.end method

.method static synthetic access$5400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    .prologue
    .line 7011
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mIsExistAlphabetSearchResult:Z

    return v0
.end method


# virtual methods
.method public getActionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7088
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mActioncode:Ljava/lang/String;

    return-object v0
.end method

.method public getColorEnd()I
    .locals 1

    .prologue
    .line 7136
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->colorEnd:I

    return v0
.end method

.method public getColorStart()I
    .locals 1

    .prologue
    .line 7133
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->colorStart:I

    return v0
.end method

.method public getColorStringGetter()Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;
    .locals 1

    .prologue
    .line 7116
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mColorStringGetter:Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;

    return-object v0
.end method

.method public getContactID()I
    .locals 1

    .prologue
    .line 7091
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mContactId:I

    return v0
.end method

.method public getDisplayWeight()I
    .locals 1

    .prologue
    .line 7122
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mDisplayWeight:I

    return v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7081
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getIsExistAlphabetSearchResult()Z
    .locals 1

    .prologue
    .line 7100
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mIsExistAlphabetSearchResult:Z

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7085
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 7094
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->phone_type:I

    return v0
.end method

.method public getPhotoID()I
    .locals 1

    .prologue
    .line 7077
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 7097
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    return v0
.end method

.method public setColorEnd(I)V
    .locals 0
    .param p1, "colorEnd"    # I

    .prologue
    .line 7130
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->colorEnd:I

    .line 7131
    return-void
.end method

.method public setColorStart(I)V
    .locals 0
    .param p1, "colorStart"    # I

    .prologue
    .line 7127
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->colorStart:I

    .line 7128
    return-void
.end method

.method public setColorStringGetter(Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;)V
    .locals 1
    .param p1, "colorStringGetter"    # Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;

    .prologue
    .line 7107
    if-eqz p1, :cond_0

    .line 7108
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mColorStringGetter:Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;

    .line 7109
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mColorStringGetter:Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->getWeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->setDisplayWeight(I)V

    .line 7114
    :goto_0
    return-void

    .line 7112
    :cond_0
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->setDisplayWeight(I)V

    goto :goto_0
.end method

.method public setDisplayWeight(I)V
    .locals 0
    .param p1, "nWeight"    # I

    .prologue
    .line 7119
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mDisplayWeight:I

    .line 7120
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 7139
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->selection:Ljava/lang/String;

    .line 7140
    return-void
.end method
