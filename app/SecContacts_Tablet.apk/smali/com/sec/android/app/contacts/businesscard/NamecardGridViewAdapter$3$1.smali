.class Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3$1;
.super Ljava/lang/Object;
.source "NamecardGridViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3$1;->this$1:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;

    iput-object p2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3$1;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 490
    return-void
.end method
