.class public Lcom/android/keyguard/KeyguardMessageArea$Helper;
.super Ljava/lang/Object;
.source "KeyguardMessageArea.java"

# interfaces
.implements Lcom/android/keyguard/SecurityMessageDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# instance fields
.field mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const v0, 0x7f0b00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_18

    .line 133
    sget-object v0, Lcom/android/keyguard/KeyguardHostView;->mMessageArea:Landroid/widget/TextView;

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 136
    :cond_18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_27

    .line 137
    const v0, 0x7f0b00c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 140
    :cond_27
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_48

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find keyguard_message_area in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_48
    return-void
.end method


# virtual methods
.method public hideBouncer(I)V
    .registers 4
    .param p1, "duration"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    # invokes: Lcom/android/keyguard/KeyguardMessageArea;->showMessage(I)V
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->access$100(Lcom/android/keyguard/KeyguardMessageArea;I)V

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 176
    return-void
.end method

.method public setMessage(IZ)V
    .registers 5
    .param p1, "resId"    # I
    .param p2, "important"    # Z

    .prologue
    .line 153
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 157
    :cond_1b
    return-void
.end method

.method public varargs setMessage(IZ[Ljava/lang/Object;)V
    .registers 6
    .param p1, "resId"    # I
    .param p2, "important"    # Z
    .param p3, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 160
    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 164
    :cond_17
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "important"    # Z

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p2, :cond_11

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput-object p1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 150
    :cond_11
    return-void
.end method

.method public setTimeout(I)V
    .registers 5
    .param p1, "timeoutMs"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 181
    return-void
.end method

.method public showBouncer(I)V
    .registers 4
    .param p1, "duration"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardMessageArea;->hideMessage(IZ)V
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->access$000(Lcom/android/keyguard/KeyguardMessageArea;IZ)V

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 170
    return-void
.end method
