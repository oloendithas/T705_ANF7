.class public Lcom/diotek/ime/framework/view/event/CandidateActionListener;
.super Ljava/lang/Object;
.source "CandidateActionListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 93
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    .line 94
    .local v0, "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public onCandidateExpanded()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onCandidateHidden()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onCandidateReduced()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onCandidateSelected(ILjava/lang/CharSequence;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/event/CandidateActionListener;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onCandidateShown()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public onFlipDown(ILjava/lang/CharSequence;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/event/CandidateActionListener;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onFlipLeft(ILjava/lang/CharSequence;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onFlipRight(ILjava/lang/CharSequence;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public onFlipUp(ILjava/lang/CharSequence;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/event/CandidateActionListener;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 43
    const/4 v0, 0x0

    return v0
.end method
