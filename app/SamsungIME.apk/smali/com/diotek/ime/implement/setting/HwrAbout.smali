.class public Lcom/diotek/ime/implement/setting/HwrAbout;
.super Landroid/preference/DialogPreference;
.source "HwrAbout.java"


# instance fields
.field private buildTextView:Landroid/widget/TextView;

.field private dwpTextView:Landroid/widget/TextView;

.field private hwrTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/HwrAbout;->setDialogLayoutResource(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x7f080096

    .line 37
    const/16 v5, 0x64

    new-array v3, v5, [C

    .line 38
    .local v3, "revision":[C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    const v5, 0x7f080094

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/diotek/ime/implement/setting/HwrAbout;->buildTextView:Landroid/widget/TextView;

    .line 41
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/HwrAbout;->buildTextView:Landroid/widget/TextView;

    const-string v6, "Build 2012-02-27"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const-string v5, "SWIFTKEY"

    const-string v6, "SWIFTKEY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 44
    invoke-static {v3}, Lcom/diotek/dwp/DWP;->GetRevision([C)I

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "dwpVersion":Ljava/lang/String;
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/diotek/ime/implement/setting/HwrAbout;->dwpTextView:Landroid/widget/TextView;

    .line 48
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/HwrAbout;->dwpTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DioWord+ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .end local v0    # "dwpVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/diotek/dhwr/DHWR;->GetRevision([C)I

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .restart local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "hwrVersion":Ljava/lang/String;
    const v5, 0x7f080095

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/diotek/ime/implement/setting/HwrAbout;->hwrTextView:Landroid/widget/TextView;

    .line 63
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/HwrAbout;->hwrTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 65
    return-void

    .line 50
    .end local v1    # "hwrVersion":Ljava/lang/String;
    :cond_1
    const v5, 0x7f080093

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 51
    .local v2, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/diotek/ime/implement/setting/HwrAbout;->dwpTextView:Landroid/widget/TextView;

    .line 52
    if-eqz v2, :cond_0

    .line 53
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/HwrAbout;->dwpTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .param p1, "dialogLayoutResId"    # I

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 33
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
