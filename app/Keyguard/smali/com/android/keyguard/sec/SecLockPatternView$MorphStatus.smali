.class public final enum Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;
.super Ljava/lang/Enum;
.source "SecLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MorphStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

.field public static final enum FollowingLine:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

.field public static final enum Morph:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

.field public static final enum StuckLine:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

.field public static final enum WithinThreshold:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 523
    new-instance v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    const-string v1, "WithinThreshold"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->WithinThreshold:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    new-instance v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    const-string v1, "Morph"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->Morph:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    new-instance v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    const-string v1, "FollowingLine"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->FollowingLine:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    new-instance v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    const-string v1, "StuckLine"

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->StuckLine:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    .line 522
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    sget-object v1, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->WithinThreshold:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->Morph:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->FollowingLine:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->StuckLine:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->$VALUES:[Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 522
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;
    .registers 2

    .prologue
    .line 522
    const-class v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;
    .registers 1

    .prologue
    .line 522
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->$VALUES:[Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    return-object v0
.end method
