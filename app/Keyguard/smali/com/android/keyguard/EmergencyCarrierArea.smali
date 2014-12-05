.class public Lcom/android/keyguard/EmergencyCarrierArea;
.super Landroid/widget/LinearLayout;
.source "EmergencyCarrierArea.java"


# instance fields
.field private mBackupPinButton:Landroid/widget/Button;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyCarrierArea;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/MSimCarrierText;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyCarrierArea;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 47
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 48
    const v1, 0x7f0b0043

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/CarrierText;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 49
    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v1, :cond_38

    .line 50
    const v1, 0x7f0b0041

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 51
    .local v0, "vStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_38

    .line 52
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 53
    const v1, 0x7f0b00ee

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MSimCarrierText;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

    .line 54
    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 55
    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .end local v0    # "vStub":Landroid/view/ViewStub;
    :cond_38
    const v1, 0x7f0b0044

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 59
    const v1, 0x7f0b0046

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPinButton:Landroid/widget/Button;

    .line 63
    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v1, :cond_5c

    .line 64
    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    new-instance v2, Lcom/android/keyguard/EmergencyCarrierArea$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/EmergencyCarrierArea$1;-><init>(Lcom/android/keyguard/EmergencyCarrierArea;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    :cond_5c
    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPinButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/keyguard/EmergencyCarrierArea$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/EmergencyCarrierArea$2;-><init>(Lcom/android/keyguard/EmergencyCarrierArea;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method
