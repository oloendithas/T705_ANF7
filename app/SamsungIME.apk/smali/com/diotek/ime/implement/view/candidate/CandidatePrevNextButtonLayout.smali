.class public Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;
.super Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
.source "CandidatePrevNextButtonLayout.java"


# static fields
.field private static final TAG_BUTTON_NEXT:Ljava/lang/String; = "button_next"

.field private static final TAG_BUTTON_PREV:Ljava/lang/String; = "button_prev"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method


# virtual methods
.method protected getButtonBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v0, p1

    .line 146
    check-cast v0, Landroid/widget/Button;

    .line 147
    .local v0, "button":Landroid/widget/Button;
    const-string v2, "button_prev"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const v2, 0x7f020997

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 153
    :goto_0
    return-object v2

    .line 149
    :cond_0
    const-string v2, "button_next"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    const v2, 0x7f020985

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 153
    :cond_1
    const v2, 0x7f020867

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method protected getButtonTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v0

    .line 50
    .local v0, "fontManager":Lcom/diotek/ime/framework/common/FontManager;
    invoke-interface {v0}, Lcom/diotek/ime/framework/common/FontManager;->getSystemFont()Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method protected getFirstButtonId()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f080014

    return v0
.end method

.method protected getSecondButtonId()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f080015

    return v0
.end method

.method protected setButtonListener(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "button":Landroid/widget/Button;
    const-string v1, "button_prev"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$1;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$1;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v1, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$2;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$2;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v1, "button_next"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$3;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$3;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v1, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$4;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$4;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method
