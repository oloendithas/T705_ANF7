.class abstract Lde/congrace/exp4j/CalculationToken;
.super Lde/congrace/exp4j/Token;
.source "CalculationToken.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lde/congrace/exp4j/Token;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method abstract mutateStackForCalculation(Ljava/util/Stack;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method
