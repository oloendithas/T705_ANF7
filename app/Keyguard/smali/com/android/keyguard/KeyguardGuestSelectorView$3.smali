.class Lcom/android/keyguard/KeyguardGuestSelectorView$3;
.super Ljava/lang/Object;
.source "KeyguardGuestSelectorView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardGuestSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardGuestSelectorView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardGuestSelectorView;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/keyguard/KeyguardGuestSelectorView$3;->this$0:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I
    .registers 5
    .param p1, "lhs"    # Landroid/content/pm/UserInfo;
    .param p2, "rhs"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 188
    iget v0, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    iget v1, p2, Landroid/content/pm/UserInfo;->serialNumber:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p1, Landroid/content/pm/UserInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/UserInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardGuestSelectorView$3;->compare(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I

    move-result v0

    return v0
.end method