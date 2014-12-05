.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .registers 2

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cardAdded(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 3
    .param p1, "addedItem"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->adjustMagazineCardLayout()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    .line 885
    return-void
.end method

.method public cardRemoved(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 3
    .param p1, "removedItem"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->adjustMagazineCardLayout()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    .line 880
    return-void
.end method

.method public cardUpdated(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 2
    .param p1, "updatedItem"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 875
    return-void
.end method
